import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maintenance/models/user_model.dart';
import 'package:maintenance/modules/chats/chat_screen.dart';
import 'package:maintenance/modules/feeds/feeds_screen.dart';
import 'package:maintenance/modules/settings/settings_screen.dart';
import 'package:maintenance/modules/users/users_screen.dart';
import 'package:maintenance/shared/components/constants.dart';
import 'package:maintenance/shared/network/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  // Get context to Easily use in a different places in all Project
  static AppCubit get(context) => BlocProvider.of(context);

  UserModel? userModel;

  void getUserData() {
    emit(AppGetUserLoadingState());

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .get()
        .then((value)
    {
      userModel = UserModel.fromJson(value.data()!);
      emit(AppGetUserSuccessState());
    })
        .catchError((error)
    {
      print(error.toString());
      emit(AppGetUserErrorState(error.toString()));
    });
  }

  List<String> appBarTitle = const
  [
    'Home',
    'Chat',
    'New Post',
    'Users',
    'Settings',
  ];

  int currentIndex = 0;
  List<Widget> screens = const
  [
    FeedsScreen(),
    ChatScreen(),
    ChatScreen(),
    UsersScreen(),
    SettingsScreen(),
  ];

  void changeBottomNavBar(int index)
  {
    if(index == 2) {
      emit(AppNewPostState());
    } else {
      currentIndex = index;
      emit(AppChangeBottomNavigationBarState());
    }
  }

  File? profileImage;
  final ImagePicker picker = ImagePicker();

  Future getProfileImage() async
  {
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery,);

    if(pickedFile != null)
    {
      profileImage = File(pickedFile.path);
      emit(AppProfileImagePickedSuccessState());
    }else
    {
      print('No Image Selected!');
      emit(AppProfileImagePickedErrorState());
    }
  }

}
