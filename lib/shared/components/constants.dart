import '../../modules/login/login_screen.dart';
import '../network/local/cach_helper.dart';
import 'components.dart';

void signOut(context) {
  CacheHelper.removeData(key: 'uId').then((value)
  {
    if (value) {
      navigateAndFinish(context, LoginScreen());
    }
  });
}

String? uId = '';

// void printFullText(String text) {
//   final pattern = RegExp('.{1,800}');
//   pattern.allMatches(text).forEach((match) => print(match.group(0)));
// }