/// Every route path in the app. Screens navigate with
/// `context.push(Routes.x)`, never by importing another screen.
abstract final class Routes {
  static const welcome = '/';
  static const login = '/login';
  static const resetPassword = '/login/reset-password';
  static const loginVerify = '/login/verify';

  static const signUp = '/sign-up';
  static const signUpAccount = '/sign-up/account';
  static const signUpVerify = '/sign-up/verify';
  static const signUpStudent = '/sign-up/student';
  static const signUpParent = '/sign-up/parent';
  static const signUpTeacher = '/sign-up/teacher';
  static const signUpOldBoy = '/sign-up/old-boy';
  static const signUpTerms = '/sign-up/terms';
  static const signUpReview = '/sign-up/review';
  static const signUpSubmitted = '/sign-up/submitted';

  static const events = '/events';
  static String event(String id) => '/events/$id';
  static String eventDonate(String id) => '/events/$id/donate';

  static const education = '/education';
  static const lesson = '/education/lesson';
}
