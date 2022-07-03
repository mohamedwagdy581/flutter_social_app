
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maintenance/modules/new_post/new_post_screen.dart';
import 'package:maintenance/modules/profile/profile_screen.dart';
import 'package:maintenance/shared/network/cubit/states.dart';
import 'package:maintenance/shared/style/custom_icons.dart';

import '../modules/settings/settings_screen.dart';
import '../shared/components/components.dart';
import '../shared/components/constants.dart';
import '../shared/network/cubit/cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state)
      {
        if(state is AppNewPostState)
        {
          navigateTo(context, const NewPostScreen());
        }
      },
      builder: (BuildContext context, state) {


        var cubit = AppCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.appBarTitle[cubit.currentIndex]),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                      CustomIcons.add_alert,
                  ),
                padding: const EdgeInsets.only(right: 15.0),
              ),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                      CustomIcons.search,
                  ),
                padding: const EdgeInsets.only(right: 15.0),
              ),
            ],
          ),
          // **************************  The Drawer  ***************************
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                // Header
                UserAccountsDrawerHeader(
                  accountName: const Text('Mohamed Wagdy'),
                  accountEmail: const Text('Mohamed@gmail.com'),
                  currentAccountPicture: GestureDetector(
                    child: const CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(color: Colors.blue),
                ),

                // Body
                InkWell(
                  onTap: () {
                    navigateAndFinish(context, const HomeLayout());
                  },
                  child: const ListTile(
                    title: Text('Home Page'),
                    leading: Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    navigateTo(context, ProfileScreen());
                  },
                  child: const ListTile(
                    title: Text('My_Account'),
                    leading: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const Divider(),

                InkWell(
                  onTap: () {
                    navigateTo(context, const SettingsScreen());
                  },
                  child: const ListTile(
                    title: Text('Settings'),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text('About'),
                    leading: Icon(
                      Icons.help,
                      color: Colors.blue,
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    signOut(context);
                  },
                  child: const ListTile(
                    title: Text('Logout'),
                    leading: Icon(
                      Icons.logout_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ***********************  The Scaffold Body  ***********************
          body: cubit.screens[cubit.currentIndex],

          // Bottom Navigation Bar
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index)
            {
              cubit.changeBottomNavBar(index);
            },
            items:
            const [
              BottomNavigationBarItem(
                icon: Icon(
                    CustomIcons.home,
                ),
                  label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    CustomIcons.chat,
                ),
                  label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.post_add_outlined,
                ),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    CustomIcons.location,
                ),
                label: 'Location',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    CustomIcons.settings,
                ),
                label: 'Settings',
              ),
            ],
            currentIndex: cubit.currentIndex,
          ),
        );
      },
    );
  }
}
