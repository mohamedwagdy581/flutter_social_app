abstract class AppStates {}

// App Initial State
class AppInitialState extends AppStates {}

// App Get User State
class AppGetUserLoadingState extends AppStates {}

class AppGetUserSuccessState extends AppStates {}

class AppGetUserErrorState extends AppStates
{
  final String error;

  AppGetUserErrorState(this.error);
}

// BottomNavigationBar State
class AppChangeBottomNavigationBarState extends AppStates {}


// New Post State
class AppNewPostState extends AppStates {}

// Profile Image Picked States
class AppProfileImagePickedSuccessState extends AppStates {}

class AppProfileImagePickedErrorState extends AppStates {}

// Cover Image Picked States
class AppCoverImagePickedSuccessState extends AppStates {}

class AppCoverImagePickedErrorState extends AppStates {}


// Create Post States
class AppCreatePostLoadingState extends AppStates {}

class AppCreatePostSuccessState extends AppStates {}

class AppCreatePostErrorState extends AppStates
{
  final String error;

  AppCreatePostErrorState(this.error);
}

// Change Mode Theme of App
class AppChangeModeThemeState extends AppStates {}