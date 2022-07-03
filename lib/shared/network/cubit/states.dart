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