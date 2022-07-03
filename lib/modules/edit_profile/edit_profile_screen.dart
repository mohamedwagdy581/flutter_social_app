import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maintenance/shared/components/components.dart';
import 'package:maintenance/shared/network/cubit/states.dart';

import '../../shared/network/cubit/cubit.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder:  (BuildContext context, AppStates state)
      {
        var userModel = AppCubit.get(context).userModel;

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Edit Profile',
            ),
            actions: [
              defaultTextButton(
                onPressed: () {},
                text: 'Update',
              ),
              const SizedBox(
                width: 15.0,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 190.0,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          height: 140.0,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                            image: DecorationImage(
                              image: NetworkImage('https://img.freepik.com/free-photo/indecisive-girl-picks-from-two-choices-looks-questioned-troubled-crosses-hands-across-chest-hesitates-suggested-products-wears-yellow-t-shirt-isolated-crimson-wall_273609-42552.jpg?w=1380'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 64.0,
                        backgroundColor:
                        Theme.of(context).scaffoldBackgroundColor,
                        child: const CircleAvatar(
                          radius: 60.0,
                          backgroundImage: NetworkImage('https://img.freepik.com/free-photo/wow-sale-there-amazed-redhead-girl-pointing-left-being-impressed-by-sale-announcement-showing-logo-standing-tshirt-against-white-background_176420-49239.jpg?t=st=1656577210~exp=1656577810~hmac=cc1cccdcd74eead3c597ae7f55984de886bf8c710457355ac173fc0a9ca3c542&w=1380'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
