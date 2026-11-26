import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/widgets/jc_system_state.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';
import 'package:jc_connect_app/src/features/auth/presentation/login_screen.dart';
import 'package:jc_connect_app/src/features/auth/presentation/mfa_screen.dart';
import 'package:jc_connect_app/src/features/auth/presentation/reset_password_screen.dart';
import 'package:jc_connect_app/src/features/auth/presentation/welcome_screen.dart';
import 'package:jc_connect_app/src/features/calendar/presentation/my_calendar_screen.dart';
import 'package:jc_connect_app/src/features/education/presentation/education_screen.dart';
import 'package:jc_connect_app/src/features/education/presentation/lesson_overview_screen.dart';
import 'package:jc_connect_app/src/features/events/data/mock_events.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:jc_connect_app/src/features/events/presentation/event_detail_screen.dart';
import 'package:jc_connect_app/src/features/events/presentation/event_donation_screen.dart';
import 'package:jc_connect_app/src/features/events/presentation/events_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/account_details_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/guardian_details_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/old_boy_details_flow_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/parent_details_flow_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/review_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_role_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/student_details_flow_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/submitted_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/teacher_details_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/terms_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/verify_email_screen.dart';

GoRouter createRouter() => GoRouter(
  routes: [
    GoRoute(
      path: Routes.welcome,
      builder: (_, _) => const WelcomeScreen(),
    ),
    GoRoute(path: Routes.login, builder: (_, _) => const LoginScreen()),
    GoRoute(
      path: Routes.loginVerify,
      // The challenge comes from the login call; a cold deep link has none.
      redirect: (_, state) =>
          state.extra is LoginNeedsCode ? null : Routes.login,
      builder: (_, state) => MfaScreen(login: state.extra! as LoginNeedsCode),
    ),
    GoRoute(
      path: Routes.sessionExpired,
      builder: (context, _) => JcSystemState(
        kind: JcSystemStateKind.sessionExpired,
        onAction: () => context.go(Routes.login),
      ),
    ),
    GoRoute(
      path: Routes.resetPassword,
      builder: (_, _) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: Routes.signUp,
      builder: (_, state) => SignUpRoleScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpAccount,
      builder: (_, state) => AccountDetailsScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpVerify,
      builder: (_, state) => VerifyEmailScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpStudent,
      builder: (_, state) => StudentDetailsFlowScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpGuardians,
      builder: (_, state) => GuardianDetailsScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpParent,
      builder: (_, state) => ParentDetailsFlowScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpTeacher,
      builder: (_, state) => TeacherDetailsScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpOldBoy,
      builder: (_, state) => OldBoyDetailsFlowScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpTerms,
      builder: (_, state) => TermsScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpReview,
      builder: (_, state) => ReviewScreen(data: _signUpData(state)),
    ),
    GoRoute(
      path: Routes.signUpSubmitted,
      builder: (_, state) => SubmittedScreen(
        submittedAt: _signUpData(state).submittedAt ?? DateTime.now(),
      ),
    ),
    GoRoute(path: Routes.events, builder: (_, _) => const EventsScreen()),
    GoRoute(
      path: '${Routes.events}/:id',
      redirect: (_, state) => _event(state) == null ? Routes.events : null,
      builder: (_, state) => EventDetailScreen(event: _event(state)!),
    ),
    GoRoute(
      path: '${Routes.events}/:id/donate',
      redirect: (_, state) => _event(state) == null ? Routes.events : null,
      builder: (_, state) => EventDonationScreen(event: _event(state)!),
    ),
    GoRoute(
      path: Routes.education,
      builder: (_, _) => const EducationScreen(),
    ),
    GoRoute(
      path: Routes.lesson,
      builder: (_, _) => const LessonOverviewScreen(),
    ),
    GoRoute(
      path: Routes.calendar,
      builder: (_, _) => const MyCalendarScreen(),
    ),
  ],
);

// shortcut: the sign-up draft rides in `extra`, so a cold deep link into the
// middle of the flow starts with empty data. A Riverpod sign-up controller
// replaces this.
SignUpData _signUpData(GoRouterState state) =>
    state.extra as SignUpData? ?? SignUpData();

EventRecord? _event(GoRouterState state) {
  final id = state.pathParameters['id'];
  return mockEvents.where((event) => event.id == id).firstOrNull;
}
