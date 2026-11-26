// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'JC Connect';

  @override
  String get accordionLaterHelp =>
      'You can add these details after your account is approved.';

  @override
  String get accountConfirmPasswordLabel => 'Confirm password';

  @override
  String get accountDescription =>
      'Use an email you check often. We’ll send a code to verify it.';

  @override
  String get accountEmailHint => 'you@example.com';

  @override
  String get accountEmailTaken =>
      'Email already in use. Log in or try another.';

  @override
  String get accountFullNameHint => 'e.g. Kemar Brown';

  @override
  String get accountHeading => 'Create your account';

  @override
  String get accountPasswordHelp =>
      'At least 8 characters, with an uppercase letter, a number and a symbol.';

  @override
  String get accountPhoneLabel => 'Phone number';

  @override
  String get accountRequiredFieldsMessage =>
      'Complete the required fields to continue.';

  @override
  String get accountTitle => 'Account details';

  @override
  String get calendarAssigned => 'Assigned';

  @override
  String get calendarBrowseEvents => 'Browse events';

  @override
  String get calendarEmptyDay =>
      'No events, sport fixtures or club meetings on this day.';

  @override
  String calendarEventsOnDay(String month, int day) {
    return 'Events on $month $day';
  }

  @override
  String get calendarFilterAll => 'All';

  @override
  String get calendarGoing => 'Going';

  @override
  String calendarItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String get calendarJoined => 'Joined';

  @override
  String get calendarKindClubs => 'Clubs';

  @override
  String get calendarKindEvents => 'Events';

  @override
  String get calendarKindSport => 'Sport';

  @override
  String get calendarNext => 'Next';

  @override
  String get calendarNothingBody =>
      'You have no events, sport fixtures or club meetings on this day.';

  @override
  String get calendarNothingHeading => 'Nothing scheduled';

  @override
  String calendarPeopleGoing(int count) {
    return '+$count going';
  }

  @override
  String calendarPeopleMembers(int count) {
    return '+$count members';
  }

  @override
  String calendarPeopleSquad(int count) {
    return '$count in squad';
  }

  @override
  String get calendarPrevious => 'Previous';

  @override
  String get calendarShowMonth => 'Show month';

  @override
  String get calendarShowWeek => 'Show week';

  @override
  String calendarTimeRange(DateTime start, DateTime end) {
    final intl.DateFormat startDateFormat = intl.DateFormat.jm(localeName);
    final String startString = startDateFormat.format(start);
    final intl.DateFormat endDateFormat = intl.DateFormat.jm(localeName);
    final String endString = endDateFormat.format(end);

    return '$startString – $endString';
  }

  @override
  String get calendarTitle => 'My calendar';

  @override
  String calendarWeekSameMonth(DateTime start, DateTime endDay, DateTime year) {
    final intl.DateFormat startDateFormat = intl.DateFormat.MMMd(localeName);
    final String startString = startDateFormat.format(start);
    final intl.DateFormat endDayDateFormat = intl.DateFormat.d(localeName);
    final String endDayString = endDayDateFormat.format(endDay);
    final intl.DateFormat yearDateFormat = intl.DateFormat.y(localeName);
    final String yearString = yearDateFormat.format(year);

    return '$startString – $endDayString, $yearString';
  }

  @override
  String calendarWeekTwoMonths(DateTime start, DateTime end, DateTime year) {
    final intl.DateFormat startDateFormat = intl.DateFormat.MMMd(localeName);
    final String startString = startDateFormat.format(start);
    final intl.DateFormat endDateFormat = intl.DateFormat.MMMd(localeName);
    final String endString = endDateFormat.format(end);
    final intl.DateFormat yearDateFormat = intl.DateFormat.y(localeName);
    final String yearString = yearDateFormat.format(year);

    return '$startString – $endString, $yearString';
  }

  @override
  String get commonAcademicTrack => 'Academic track';

  @override
  String get commonAcademicYear => 'Academic year';

  @override
  String get commonAddress => 'Address';

  @override
  String get commonAddressHint => 'e.g. 12 Hope Road, Kingston 6';

  @override
  String get commonBack => 'Back';

  @override
  String get commonBrand => 'JC CONNECT';

  @override
  String get commonClass => 'Class';

  @override
  String get commonContactSupport => 'Contact support';

  @override
  String get commonContinue => 'Continue';

  @override
  String get commonDate => 'Date';

  @override
  String get commonDateOfBirth => 'Date of birth';

  @override
  String get commonEdit => 'Edit';

  @override
  String get commonEmailHint => 'Enter your email';

  @override
  String get commonEmailLabel => 'Email';

  @override
  String get commonFullName => 'Full name';

  @override
  String get commonFullNameExample => 'Kemar Brown';

  @override
  String get commonGrade => 'Grade';

  @override
  String get commonGraduationYear => 'Graduation year';

  @override
  String get commonHidePassword => 'Hide password';

  @override
  String get commonHouse => 'House';

  @override
  String get commonLocation => 'Location';

  @override
  String get commonNeedHelp => 'Need help?';

  @override
  String get commonOptional => 'Optional';

  @override
  String get commonPasswordLabel => 'Password';

  @override
  String get commonPhoneInvalid =>
      'Enter the number with its country code, like +1 876 555 0142.';

  @override
  String get commonProofOfAttendance => 'Proof of attendance';

  @override
  String get commonRelationship => 'Relationship';

  @override
  String get commonSave => 'Save';

  @override
  String get commonSchoolEmail => 'School email';

  @override
  String get commonSecureFooter => 'Jamaica College • True Blue Secure Access';

  @override
  String commonSelectField(String field) {
    return 'Select $field';
  }

  @override
  String get commonShare => 'Share';

  @override
  String get commonShowPassword => 'Show password';

  @override
  String get commonStaffId => 'Staff ID';

  @override
  String commonStepOfTotal(int step, int total) {
    return 'Step $step of $total';
  }

  @override
  String get commonStudentId => 'Student ID';

  @override
  String get commonSupportMessage => 'Support request started.';

  @override
  String get commonTagline => 'One College. One Community.';

  @override
  String get commonTooManyAttempts =>
      'Too many attempts. Wait a minute and try again.';

  @override
  String get commonYourDetails => 'Your details';

  @override
  String get donationAmountHint => 'Enter amount';

  @override
  String get donationAmountLabel => 'Amount';

  @override
  String get donationChooseAmount => 'Choose an amount';

  @override
  String get donationContinueToPayment => 'Continue to payment';

  @override
  String get donationDescription =>
      'Every contribution helps JC keep community events accessible.';

  @override
  String get donationHeading => 'Support this event';

  @override
  String get donationOtherAmount => 'Other';

  @override
  String get donationStepTitle => 'Donation';

  @override
  String get donationThanksMessage =>
      'Thank you. Your donation has been recorded.';

  @override
  String get donationTitle => 'Donate to event';

  @override
  String get educationChange => 'Change';

  @override
  String get educationContinueLearning => 'Continue learning';

  @override
  String get educationExams => 'Exams';

  @override
  String get educationGradeSetting => 'Grade';

  @override
  String get educationMySubjects => 'My subjects';

  @override
  String educationMySubjectsTerm(int term) {
    return 'My subjects · Term $term';
  }

  @override
  String get educationSearchHint => 'Search lessons, subjects…';

  @override
  String get educationSettings => 'Settings';

  @override
  String educationTerm(int number) {
    return 'Term $number';
  }

  @override
  String get educationTitle => 'Education';

  @override
  String get educationViewTimetable => 'View timetable ›';

  @override
  String get eventCardRsvp => '+ RSVP';

  @override
  String get eventDetailAbout => 'About this event';

  @override
  String get eventDetailAddComment => 'Add a comment…';

  @override
  String get eventDetailAddToCalendar => 'Add to Calendar';

  @override
  String get eventDetailAddedToCalendar => 'Event added to your calendar.';

  @override
  String get eventDetailAreYouGoing => 'Are you going?';

  @override
  String get eventDetailComments => 'Comments';

  @override
  String get eventDetailCommunityBooster => 'Community booster';

  @override
  String get eventDetailDateTime => 'Date & time';

  @override
  String eventDetailDateTimeValue(String date, String time) {
    return '$date · $time EST';
  }

  @override
  String get eventDetailDonate => 'Donate';

  @override
  String eventDetailFunded(int percent) {
    return '$percent% Funded';
  }

  @override
  String eventDetailGoal(String amount) {
    return '$amount goal';
  }

  @override
  String get eventDetailHelpFund => 'Help Fund This Event';

  @override
  String get eventDetailJoinNow => 'Join Now';

  @override
  String get eventDetailJustNow => 'Just now';

  @override
  String get eventDetailOpenToAll => '● Open to All';

  @override
  String get eventDetailOrganizer => 'Organizer';

  @override
  String eventDetailRaised(String amount) {
    return '$amount raised';
  }

  @override
  String get eventDetailReactions => 'Reactions';

  @override
  String get eventDetailSeeAll => 'See all  ›';

  @override
  String get eventDetailTitle => 'Event details';

  @override
  String get eventDetailYoureGoing => 'You’re going';

  @override
  String get eventsAllCategories => 'All';

  @override
  String get eventsCalendarView => 'Calendar view';

  @override
  String eventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Events',
      one: '1 Event',
    );
    return '$_temp0';
  }

  @override
  String get eventsEmptyDescription =>
      'Try another search or clear your filters to see more of the JC community calendar.';

  @override
  String get eventsEmptyTitle => 'No events found';

  @override
  String get eventsFilterTitle => 'Filter events';

  @override
  String get eventsMyCalendar => 'My calendar';

  @override
  String get eventsSearchHint => 'Search events';

  @override
  String get eventsThisWeek => 'This week';

  @override
  String get eventsTitle => 'Events';

  @override
  String get fileFieldHelp => 'PDF, JPG or PNG, up to 5 MB.';

  @override
  String get fileFieldMarkedMessage => 'Proof marked for upload.';

  @override
  String get fileFieldNoFile => 'No file chosen';

  @override
  String get fileFieldSelected => 'Proof selected';

  @override
  String get fileFieldUpload => 'Upload proof';

  @override
  String get guardianAddAnother => 'Add another guardian';

  @override
  String get guardianDescription =>
      'We’ll invite them to JC Connect so they can follow your school life.';

  @override
  String get guardianEmailHelp => 'We’ll send them an invite to join.';

  @override
  String get guardianEmailHint => 'name@example.com';

  @override
  String get guardianEmailLabel => 'Guardian’s email';

  @override
  String get guardianFullNameHint => 'e.g. Andrea Brown';

  @override
  String get guardianFullNameLabel => 'Guardian’s full name';

  @override
  String get guardianHeading => 'Parent or guardian';

  @override
  String guardianNumber(int number) {
    return 'Guardian $number';
  }

  @override
  String get guardianOwnEmail =>
      'This is your email. Enter your guardian’s email.';

  @override
  String get guardianPhoneHint => '+1 876 000 0000';

  @override
  String get guardianPhoneLabel => 'Guardian’s phone number';

  @override
  String get guardianRemove => 'Remove';

  @override
  String get guardianTitle => 'Guardian';

  @override
  String get lessonAbout => 'About this lesson';

  @override
  String get lessonAutoCompletes => 'Auto-completes when you finish all parts';

  @override
  String get lessonContent => 'Lesson content';

  @override
  String get lessonTitle => 'Lesson';

  @override
  String get lessonYourProgress => 'Your progress';

  @override
  String get loginAppleSelectedMessage => 'Apple sign-in selected.';

  @override
  String get loginButton => 'Log in';

  @override
  String get loginChooseSchool => 'Choose your school';

  @override
  String get loginContinueWithApple => 'Continue with Apple';

  @override
  String get loginContinueWithGoogle => 'Continue with Google';

  @override
  String get loginEmailInvalid => 'Enter a valid email, like name@example.com.';

  @override
  String get loginForgotPassword => 'Forgot your password?';

  @override
  String get loginGoogleSelectedMessage => 'Google sign-in selected.';

  @override
  String get loginIncorrectCredentials =>
      'Incorrect email or password. Try again or reset it.';

  @override
  String get loginNoAccountPrompt => 'Don’t have an account?';

  @override
  String get loginNotAllowed =>
      'This account can’t sign in to the app. Contact your school.';

  @override
  String get loginOrContinueWith => 'Or continue with';

  @override
  String get loginPasswordRequired => 'Enter your password';

  @override
  String get loginSignUpLink => 'Sign up';

  @override
  String get mfaAppPrompt =>
      'Enter the 6-digit code from\nyour authenticator app';

  @override
  String get mfaCodeSent => 'Code sent';

  @override
  String get mfaEnterCode => 'Enter the 6-digit code.';

  @override
  String get mfaEnterRecoveryCode => 'Enter a recovery code.';

  @override
  String get mfaHaveAppPrompt => 'Have your phone?';

  @override
  String get mfaHeading => 'Verify your identity';

  @override
  String get mfaIncorrectCode =>
      'That code isn’t right. Check it and try again.';

  @override
  String get mfaLostPhonePrompt => 'Lost your phone?';

  @override
  String get mfaNoCodePrompt => 'Didn’t receive the code?';

  @override
  String get mfaRecoveryCodeLabel => 'Recovery code';

  @override
  String get mfaRecoveryPrompt =>
      'Enter one of the recovery codes\nyou saved when you set up 2FA';

  @override
  String get mfaResend => 'Resend';

  @override
  String mfaResendCooldown(int seconds) {
    String _temp0 = intl.Intl.pluralLogic(
      seconds,
      locale: localeName,
      other: 'You can resend a code in $seconds seconds.',
      one: 'You can resend a code in 1 second.',
    );
    return '$_temp0';
  }

  @override
  String mfaSentTo(String email) {
    return 'We sent a 6-digit code to\nyour email $email';
  }

  @override
  String get mfaUseAppLink => 'Use authenticator app';

  @override
  String get mfaUseRecoveryLink => 'Use a recovery code';

  @override
  String get mfaVerifyButton => 'Verify and log in';

  @override
  String get navChat => 'Chat';

  @override
  String get navFeed => 'Feed';

  @override
  String get navHome => 'Home';

  @override
  String get navProfile => 'Profile';

  @override
  String get navSport => 'Sport';

  @override
  String get oldBoyCareer => 'Career';

  @override
  String get oldBoyCareerDescription => 'What you do today';

  @override
  String get oldBoyClubs => 'Clubs and sports';

  @override
  String get oldBoyClubsDescription => 'Teams and clubs you were part of';

  @override
  String get oldBoyDescription =>
      'Help us confirm you’re an Old Boy of Jamaica College.';

  @override
  String get oldBoyFormerStudentId => 'Former student ID (optional)';

  @override
  String get oldBoyFormerStudentIdHelp =>
      'Speeds up verification if you have it.';

  @override
  String get oldBoyFormerStudentIdHint => 'e.g. JC-2010-0000';

  @override
  String get oldBoyGivingBack => 'Giving back';

  @override
  String get oldBoyGivingBackDescription =>
      'Mentorship, scholarships and events';

  @override
  String get oldBoyHeading => 'Your JC years';

  @override
  String get oldBoyLastGrade => 'Last grade completed';

  @override
  String get oldBoyLeadership => 'Leadership';

  @override
  String get oldBoyLeadershipDescription => 'Roles you held at JC';

  @override
  String get oldBoyProfileHelp =>
      'You can add or change these later in your profile.';

  @override
  String get oldBoyProfileTitle => 'Your Old Boy profile (optional)';

  @override
  String get oldBoySelectGrade => 'Select grade';

  @override
  String get oldBoySelectHouse => 'Select your house';

  @override
  String get oldBoySelectYear => 'Select year';

  @override
  String get parentAddAnotherSon => 'Add another son';

  @override
  String get parentAnotherSonName => 'Another son’s name';

  @override
  String get parentDescription =>
      'Link your account to your son so you can follow his school life.';

  @override
  String get parentFather => 'Father';

  @override
  String get parentGuardian => 'Guardian';

  @override
  String get parentHeading => 'Your son at JC';

  @override
  String get parentIdNoMatch =>
      'This ID doesn’t match the name. Check and try again.';

  @override
  String get parentMother => 'Mother';

  @override
  String get parentRemoveAnotherSon => 'Remove another son';

  @override
  String get parentSelectRelationship => 'Select relationship';

  @override
  String get parentSonName => 'Son’s full name';

  @override
  String get parentSonStudentId => 'Son’s student ID';

  @override
  String get parentSonStudentIdHelp => 'Ask your son or check his report card.';

  @override
  String get parentSonStudentIdHint => 'JC-2026-4815';

  @override
  String get resetPasswordDescription =>
      'Enter your email and we’ll send you a reset link.';

  @override
  String get resetPasswordHeading => 'Reset your password';

  @override
  String get resetPasswordSendButton => 'Send reset link';

  @override
  String get resetPasswordSentMessage => 'Reset link requested.';

  @override
  String get resetPasswordTitle => 'Password reset';

  @override
  String get reviewAccount => 'Account';

  @override
  String get reviewAnotherSon => 'Another son';

  @override
  String get reviewDescription =>
      'Check your details before we send them to the school for approval.';

  @override
  String get reviewFormerStudentId => 'Former student ID';

  @override
  String get reviewHeading => 'Review and submit';

  @override
  String get reviewLastGrade => 'Last grade';

  @override
  String get reviewMember => 'Member';

  @override
  String get reviewNotAccepted =>
      'Some details weren’t accepted. Go back and check them.';

  @override
  String get reviewNotSelected => 'Not selected';

  @override
  String get reviewPhone => 'Phone';

  @override
  String get reviewPhoneTaken =>
      'Phone number already in use. Log in or try another.';

  @override
  String get reviewReady => 'Ready for review';

  @override
  String get reviewRole => 'Role';

  @override
  String reviewRoleDetails(String role) {
    return '$role details';
  }

  @override
  String get reviewSelected => 'Selected';

  @override
  String get reviewSon => 'Son';

  @override
  String get reviewStatus => 'Status';

  @override
  String get reviewSubmit => 'Submit application';

  @override
  String get reviewTitle => 'Review';

  @override
  String get roleOldBoy => 'Old Boy';

  @override
  String get roleOldBoyDescription => 'I’m a JC alumnus';

  @override
  String get roleParent => 'Parent or guardian';

  @override
  String get roleParentDescription => 'I have a son at JC';

  @override
  String get roleStudent => 'Student';

  @override
  String get roleStudentDescription => 'I’m currently enrolled at JC';

  @override
  String get roleTeacher => 'Teacher or coach';

  @override
  String get roleTeacherDescription => 'I teach or coach at Jamaica College';

  @override
  String get signUpExpired =>
      'Your sign-up session expired. Verify your email again.';

  @override
  String get signUpRoleDescription =>
      'Tell us how you’re connected to Jamaica College.';

  @override
  String get signUpRoleHaveAccount => 'Already have an account?';

  @override
  String get signUpRoleHeading => 'Join JC Connect';

  @override
  String get signUpRoleLogIn => 'Log in';

  @override
  String get studentDateOfBirthHint => 'DD / MM / YYYY';

  @override
  String get studentDateOfBirthInvalid =>
      'Enter a real date, like 14 / 03 / 2010.';

  @override
  String get studentDescription =>
      'We’ll match this with school records to confirm you’re a JC student.';

  @override
  String get studentHeading => 'Student details';

  @override
  String get studentIdHelp => 'You’ll find this on your school ID card.';

  @override
  String get studentIdHint => 'e.g. JC-2026-0000';

  @override
  String get studentIdNotFound =>
      'Student ID not found. Check your school ID card.';

  @override
  String get studentSelectAcademicTrack => 'Select academic track';

  @override
  String get studentSelectAcademicYear => 'Select academic year';

  @override
  String get studentSelectClass => 'Select your class';

  @override
  String get studentSelectGrade => 'Select your grade';

  @override
  String get submittedAccountStatus => 'Account status';

  @override
  String submittedAt(DateTime date, DateTime time) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);
    final intl.DateFormat timeDateFormat = intl.DateFormat.jm(localeName);
    final String timeString = timeDateFormat.format(time);

    return '$dateString · $timeString';
  }

  @override
  String get submittedDescription =>
      'Your account is being reviewed by the JC admin team.';

  @override
  String get submittedDone => 'Done';

  @override
  String get submittedHeading => 'Thanks, we’ve got your details';

  @override
  String get submittedInProgress => 'In progress';

  @override
  String get submittedKeepPosted => 'We’ll keep you posted';

  @override
  String get submittedKeepPostedDescription =>
      'You’ll get an email and a notification as soon as there’s an update.';

  @override
  String get submittedReadyDescription => 'Full access to JC Connect';

  @override
  String get submittedReviewTime => 'Usually 1 to 2 business days';

  @override
  String get submittedStepReady => 'Account ready';

  @override
  String get submittedStepReview => 'Under review';

  @override
  String get submittedStepSubmitted => 'Submitted';

  @override
  String get submittedUpcoming => 'Upcoming';

  @override
  String get systemCheckAgain => 'Check again';

  @override
  String get systemLogInAgain => 'Log in again';

  @override
  String systemMaintenanceMessage(String time) {
    return 'JC Connect is down for scheduled maintenance. We expect to be back by $time.';
  }

  @override
  String get systemMaintenanceTitle => 'Under maintenance';

  @override
  String get systemOfflineMessage =>
      'Check your internet connection and try again.';

  @override
  String get systemOfflineTitle => 'You\'re offline';

  @override
  String get systemServerErrorMessage =>
      'We couldn’t connect to our servers. Try again in a few moments.';

  @override
  String get systemServerErrorTitle => 'Something went wrong';

  @override
  String get systemSessionExpiredMessage =>
      'For your security, we logged you out after a period of inactivity.';

  @override
  String get systemSessionExpiredTitle => 'Session expired';

  @override
  String get systemTryAgain => 'Try again';

  @override
  String get teacherCoach => 'Coach';

  @override
  String get teacherCoachDescription => 'I coach a sports team';

  @override
  String get teacherDescription =>
      'We’ll confirm your role with the school administration.';

  @override
  String get teacherHeading => 'Teacher or coach details';

  @override
  String get teacherPickOne =>
      'Pick at least one. We’ll ask a few questions about each.';

  @override
  String teacherRoleSummary(String role) {
    String _temp0 = intl.Intl.selectLogic(
      role,
      {
        'teacher': 'Teacher',
        'coach': 'Coach',
        'both': 'Teacher and Coach',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get teacherSchoolEmailHelp =>
      'Your @jc.edu.jm email speeds up approval.';

  @override
  String get teacherSchoolEmailHint => 'name@jc.edu.jm';

  @override
  String get teacherSelectAll => 'Select all that apply';

  @override
  String get teacherStaffIdHelp => 'Your JC employee number.';

  @override
  String get teacherStaffIdHint => 'e.g. JC-STF-0000';

  @override
  String get teacherTeacher => 'Teacher';

  @override
  String get teacherTeacherDescription => 'I teach subjects and classes';

  @override
  String get teacherWhatDoYouDo => 'What do you do at JC?';

  @override
  String get termsAgreeButton => 'Agree and continue';

  @override
  String get termsAgreePrivacy =>
      'I agree to the Privacy Policy and how my collegiate data is stored and utilized';

  @override
  String get termsAgreeTerms => 'I have read and agree to the Terms of Use';

  @override
  String get termsConductBody =>
      'In adherence to the motto “For Ever Upwards” members pledge respect, integrity, and good faith.';

  @override
  String get termsConductTitle => 'Community conduct and honor code';

  @override
  String get termsDescription =>
      'Please read how JC Connect works before you continue.';

  @override
  String get termsDonationsBody =>
      'Contributions toward collegiate athletic sponsorships, campus restoration, and student bursary grants represent irrevocable settlements overseen by the Board of Trustees.';

  @override
  String get termsDonationsTitle => 'Donations and bursary payments';

  @override
  String get termsHeading => 'Terms and privacy';

  @override
  String get termsPrivacyBody =>
      'All member directories, graduation cohort numbers, and academic achievements are protected with multi-layer cryptographic authentication.';

  @override
  String get termsPrivacyTitle => 'Privacy and data safeguards';

  @override
  String get termsReviewBody =>
      'System moderators reserve the authority to verify cohort identity cards, inspect reported behavior, and temporarily restrict feed publishing.';

  @override
  String get termsReviewLater => 'ⓘ  You can review these anytime in Settings';

  @override
  String get termsReviewTitle => 'Account review and auditing';

  @override
  String get termsTitle => 'Terms';

  @override
  String get termsUsingBody =>
      'JC Connect serves as the private collegiate and alumni assembly. Membership is restricted to verified students, faculty, staff, and Old Boys.';

  @override
  String get termsUsingTitle => 'Using the app';

  @override
  String get verifyEmailButton => 'Verify email';

  @override
  String get verifyEmailEnterCode => 'Enter the 6-digit code.';

  @override
  String get verifyEmailHeading => 'Verify your email';

  @override
  String get verifyEmailIncorrectCode =>
      'That code isn’t right. Check it and try again.';

  @override
  String get verifyEmailNoCodePrompt => 'Didn’t receive the code?';

  @override
  String get verifyEmailResend => 'Resend';

  @override
  String get verifyEmailResentMessage => 'A new code has been sent.';

  @override
  String verifyEmailSentTo(String email) {
    return 'We sent a 6-digit code to\n$email';
  }

  @override
  String get welcomeFooter => 'Jamaica College • Founded 1789 • Kingston, JA';

  @override
  String get welcomeJoinButton => 'Join JC Connect';

  @override
  String get welcomeLoginButton => 'Log in';

  @override
  String get welcomeVersion => 'v2.4.0 • True Blue Secure Connect';
}
