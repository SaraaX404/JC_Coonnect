import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// App name: launcher, task switcher and window title.
  ///
  /// In en, this message translates to:
  /// **'JC Connect'**
  String get appName;

  /// Optional details accordion: later help.
  ///
  /// In en, this message translates to:
  /// **'You can add these details after your account is approved.'**
  String get accordionLaterHelp;

  /// Account details screen: confirm password label.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get accountConfirmPasswordLabel;

  /// Account details screen: description.
  ///
  /// In en, this message translates to:
  /// **'Use an email you check often. We’ll send a code to verify it.'**
  String get accountDescription;

  /// Account details screen: email hint.
  ///
  /// In en, this message translates to:
  /// **'you@example.com'**
  String get accountEmailHint;

  /// Account details screen: full name hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Kemar Brown'**
  String get accountFullNameHint;

  /// Account details screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get accountHeading;

  /// Account details screen: password help.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters, with an uppercase letter, a number and a symbol.'**
  String get accountPasswordHelp;

  /// Account details screen: phone label.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get accountPhoneLabel;

  /// Account details screen: required fields message.
  ///
  /// In en, this message translates to:
  /// **'Complete the required fields to continue.'**
  String get accountRequiredFieldsMessage;

  /// Account details screen: title.
  ///
  /// In en, this message translates to:
  /// **'Account details'**
  String get accountTitle;

  /// Events calendar: empty day.
  ///
  /// In en, this message translates to:
  /// **'No events, sport fixtures or club meetings on this day.'**
  String get calendarEmptyDay;

  /// Events calendar: header for the selected day.
  ///
  /// In en, this message translates to:
  /// **'Events on {month} {day}'**
  String calendarEventsOnDay(String month, int day);

  /// Shared: academic track.
  ///
  /// In en, this message translates to:
  /// **'Academic track'**
  String get commonAcademicTrack;

  /// Shared: academic year.
  ///
  /// In en, this message translates to:
  /// **'Academic year'**
  String get commonAcademicYear;

  /// Shared: address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get commonAddress;

  /// Shared: address hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 12 Hope Road, Kingston 6'**
  String get commonAddressHint;

  /// Shared: back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// Shared: product name shown as the welcome and login heading.
  ///
  /// In en, this message translates to:
  /// **'JC CONNECT'**
  String get commonBrand;

  /// Shared: class.
  ///
  /// In en, this message translates to:
  /// **'Class'**
  String get commonClass;

  /// Shared: continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// Shared: date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get commonDate;

  /// Shared: date of birth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get commonDateOfBirth;

  /// Shared: edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get commonEdit;

  /// Shared: email hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get commonEmailHint;

  /// Shared: email label.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get commonEmailLabel;

  /// Shared: full name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get commonFullName;

  /// Shared: full name example.
  ///
  /// In en, this message translates to:
  /// **'Kemar Brown'**
  String get commonFullNameExample;

  /// Shared: grade.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get commonGrade;

  /// Shared: graduation year.
  ///
  /// In en, this message translates to:
  /// **'Graduation year'**
  String get commonGraduationYear;

  /// Shared: tooltip of the eye button that hides a password again.
  ///
  /// In en, this message translates to:
  /// **'Hide password'**
  String get commonHidePassword;

  /// Shared: house.
  ///
  /// In en, this message translates to:
  /// **'House'**
  String get commonHouse;

  /// Shared: location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get commonLocation;

  /// Shared: optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get commonOptional;

  /// Shared: password label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get commonPasswordLabel;

  /// Shared: proof of attendance.
  ///
  /// In en, this message translates to:
  /// **'Proof of attendance'**
  String get commonProofOfAttendance;

  /// Shared: relationship.
  ///
  /// In en, this message translates to:
  /// **'Relationship'**
  String get commonRelationship;

  /// Shared: save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// Shared: school email.
  ///
  /// In en, this message translates to:
  /// **'School email'**
  String get commonSchoolEmail;

  /// Shared: footer on the code verification screens.
  ///
  /// In en, this message translates to:
  /// **'Jamaica College • True Blue Secure Access'**
  String get commonSecureFooter;

  /// Shared: message asking the user to pick a value for a field.
  ///
  /// In en, this message translates to:
  /// **'Select {field}'**
  String commonSelectField(String field);

  /// Shared: share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get commonShare;

  /// Shared: tooltip of the eye button that reveals a password.
  ///
  /// In en, this message translates to:
  /// **'Show password'**
  String get commonShowPassword;

  /// Shared: staff id.
  ///
  /// In en, this message translates to:
  /// **'Staff ID'**
  String get commonStaffId;

  /// Shared: progress through a multi-step flow.
  ///
  /// In en, this message translates to:
  /// **'Step {step} of {total}'**
  String commonStepOfTotal(int step, int total);

  /// Shared: student id.
  ///
  /// In en, this message translates to:
  /// **'Student ID'**
  String get commonStudentId;

  /// Shared: tagline under the product name.
  ///
  /// In en, this message translates to:
  /// **'One College. One Community.'**
  String get commonTagline;

  /// Shared: your details.
  ///
  /// In en, this message translates to:
  /// **'Your details'**
  String get commonYourDetails;

  /// Event donation screen: amount hint.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get donationAmountHint;

  /// Event donation screen: amount label.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get donationAmountLabel;

  /// Event donation screen: choose amount.
  ///
  /// In en, this message translates to:
  /// **'Choose an amount'**
  String get donationChooseAmount;

  /// Event donation screen: continue to payment.
  ///
  /// In en, this message translates to:
  /// **'Continue to payment'**
  String get donationContinueToPayment;

  /// Event donation screen: description.
  ///
  /// In en, this message translates to:
  /// **'Every contribution helps JC keep community events accessible.'**
  String get donationDescription;

  /// Event donation screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Support this event'**
  String get donationHeading;

  /// Event donation screen: other amount.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get donationOtherAmount;

  /// Event donation screen: step title.
  ///
  /// In en, this message translates to:
  /// **'Donation'**
  String get donationStepTitle;

  /// Event donation screen: thanks message.
  ///
  /// In en, this message translates to:
  /// **'Thank you. Your donation has been recorded.'**
  String get donationThanksMessage;

  /// Event donation screen: title.
  ///
  /// In en, this message translates to:
  /// **'Donate to event'**
  String get donationTitle;

  /// Education screen: change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get educationChange;

  /// Education screen: continue learning.
  ///
  /// In en, this message translates to:
  /// **'Continue learning'**
  String get educationContinueLearning;

  /// Education screen: exams.
  ///
  /// In en, this message translates to:
  /// **'Exams'**
  String get educationExams;

  /// Education screen: grade setting.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get educationGradeSetting;

  /// Education screen: my subjects.
  ///
  /// In en, this message translates to:
  /// **'My subjects'**
  String get educationMySubjects;

  /// Education screen: subjects section header for a term.
  ///
  /// In en, this message translates to:
  /// **'My subjects · Term {term}'**
  String educationMySubjectsTerm(int term);

  /// Education screen: search hint.
  ///
  /// In en, this message translates to:
  /// **'Search lessons, subjects…'**
  String get educationSearchHint;

  /// Education screen: settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get educationSettings;

  /// Education screen: school term filter chip.
  ///
  /// In en, this message translates to:
  /// **'Term {number}'**
  String educationTerm(int number);

  /// Education screen: title.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educationTitle;

  /// Education screen: view timetable.
  ///
  /// In en, this message translates to:
  /// **'View timetable ›'**
  String get educationViewTimetable;

  /// Event list card: rsvp.
  ///
  /// In en, this message translates to:
  /// **'+ RSVP'**
  String get eventCardRsvp;

  /// Event detail screen: about.
  ///
  /// In en, this message translates to:
  /// **'About this event'**
  String get eventDetailAbout;

  /// Event detail screen: add comment.
  ///
  /// In en, this message translates to:
  /// **'Add a comment…'**
  String get eventDetailAddComment;

  /// Event detail screen: add to calendar.
  ///
  /// In en, this message translates to:
  /// **'Add to Calendar'**
  String get eventDetailAddToCalendar;

  /// Event detail screen: added to calendar.
  ///
  /// In en, this message translates to:
  /// **'Event added to your calendar.'**
  String get eventDetailAddedToCalendar;

  /// Event detail screen: are you going.
  ///
  /// In en, this message translates to:
  /// **'Are you going?'**
  String get eventDetailAreYouGoing;

  /// Event detail screen: comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get eventDetailComments;

  /// Event detail screen: community booster.
  ///
  /// In en, this message translates to:
  /// **'Community booster'**
  String get eventDetailCommunityBooster;

  /// Event detail screen: date time.
  ///
  /// In en, this message translates to:
  /// **'Date & time'**
  String get eventDetailDateTime;

  /// Event detail screen: event date and time.
  ///
  /// In en, this message translates to:
  /// **'{date} · {time} EST'**
  String eventDetailDateTimeValue(String date, String time);

  /// Event detail screen: donate.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get eventDetailDonate;

  /// Event detail screen: how much of the fundraising goal is met.
  ///
  /// In en, this message translates to:
  /// **'{percent}% Funded'**
  String eventDetailFunded(int percent);

  /// Event detail screen: fundraising goal, already formatted.
  ///
  /// In en, this message translates to:
  /// **'{amount} goal'**
  String eventDetailGoal(String amount);

  /// Event detail screen: help fund.
  ///
  /// In en, this message translates to:
  /// **'Help Fund This Event'**
  String get eventDetailHelpFund;

  /// Event detail screen: join now.
  ///
  /// In en, this message translates to:
  /// **'Join Now'**
  String get eventDetailJoinNow;

  /// Event detail screen: just now.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get eventDetailJustNow;

  /// Event detail screen: open to all.
  ///
  /// In en, this message translates to:
  /// **'● Open to All'**
  String get eventDetailOpenToAll;

  /// Event detail screen: organizer.
  ///
  /// In en, this message translates to:
  /// **'Organizer'**
  String get eventDetailOrganizer;

  /// Event detail screen: money raised so far, already formatted.
  ///
  /// In en, this message translates to:
  /// **'{amount} raised'**
  String eventDetailRaised(String amount);

  /// Event detail screen: reactions.
  ///
  /// In en, this message translates to:
  /// **'Reactions'**
  String get eventDetailReactions;

  /// Event detail screen: see all.
  ///
  /// In en, this message translates to:
  /// **'See all  ›'**
  String get eventDetailSeeAll;

  /// Event detail screen: title.
  ///
  /// In en, this message translates to:
  /// **'Event details'**
  String get eventDetailTitle;

  /// Event detail screen: youre going.
  ///
  /// In en, this message translates to:
  /// **'You’re going'**
  String get eventDetailYoureGoing;

  /// Events screen: filter option that shows every category.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get eventsAllCategories;

  /// Events screen: calendar view.
  ///
  /// In en, this message translates to:
  /// **'Calendar view'**
  String get eventsCalendarView;

  /// Events screen: number of events in the list.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 Event} other{{count} Events}}'**
  String eventsCount(int count);

  /// Events screen: empty description.
  ///
  /// In en, this message translates to:
  /// **'Try another search or clear your filters to see more of the JC community calendar.'**
  String get eventsEmptyDescription;

  /// Events screen: empty title.
  ///
  /// In en, this message translates to:
  /// **'No events found'**
  String get eventsEmptyTitle;

  /// Events screen: filter title.
  ///
  /// In en, this message translates to:
  /// **'Filter events'**
  String get eventsFilterTitle;

  /// Events screen: my calendar.
  ///
  /// In en, this message translates to:
  /// **'My calendar'**
  String get eventsMyCalendar;

  /// Events screen: search hint.
  ///
  /// In en, this message translates to:
  /// **'Search events'**
  String get eventsSearchHint;

  /// Events screen: this week.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get eventsThisWeek;

  /// Events screen: title.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get eventsTitle;

  /// Proof upload field: help.
  ///
  /// In en, this message translates to:
  /// **'PDF, JPG or PNG, up to 5 MB.'**
  String get fileFieldHelp;

  /// Proof upload field: marked message.
  ///
  /// In en, this message translates to:
  /// **'Proof marked for upload.'**
  String get fileFieldMarkedMessage;

  /// Proof upload field: no file.
  ///
  /// In en, this message translates to:
  /// **'No file chosen'**
  String get fileFieldNoFile;

  /// Proof upload field: selected.
  ///
  /// In en, this message translates to:
  /// **'Proof selected'**
  String get fileFieldSelected;

  /// Proof upload field: upload.
  ///
  /// In en, this message translates to:
  /// **'Upload proof'**
  String get fileFieldUpload;

  /// Lesson overview screen: about.
  ///
  /// In en, this message translates to:
  /// **'About this lesson'**
  String get lessonAbout;

  /// Lesson overview screen: auto completes.
  ///
  /// In en, this message translates to:
  /// **'Auto-completes when you finish all parts'**
  String get lessonAutoCompletes;

  /// Lesson overview screen: content.
  ///
  /// In en, this message translates to:
  /// **'Lesson content'**
  String get lessonContent;

  /// Lesson overview screen: title.
  ///
  /// In en, this message translates to:
  /// **'Lesson'**
  String get lessonTitle;

  /// Lesson overview screen: your progress.
  ///
  /// In en, this message translates to:
  /// **'Your progress'**
  String get lessonYourProgress;

  /// Login screen: apple selected message.
  ///
  /// In en, this message translates to:
  /// **'Apple sign-in selected.'**
  String get loginAppleSelectedMessage;

  /// Login screen: button that signs the user in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get loginButton;

  /// Login screen: continue with apple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get loginContinueWithApple;

  /// Login screen: continue with google.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get loginContinueWithGoogle;

  /// Login screen: error when the email is empty or not an email address.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email, like name@example.com.'**
  String get loginEmailInvalid;

  /// Login screen: forgot password.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get loginForgotPassword;

  /// Login screen: google selected message.
  ///
  /// In en, this message translates to:
  /// **'Google sign-in selected.'**
  String get loginGoogleSelectedMessage;

  /// Login screen: no account prompt.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get loginNoAccountPrompt;

  /// Login screen: or continue with.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get loginOrContinueWith;

  /// Login screen: error when the password is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get loginPasswordRequired;

  /// Login screen: ready message.
  ///
  /// In en, this message translates to:
  /// **'Login is ready to connect.'**
  String get loginReadyMessage;

  /// Login screen: sign up link.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get loginSignUpLink;

  /// MFA screen: confirmation right after a new code was sent.
  ///
  /// In en, this message translates to:
  /// **'Code sent'**
  String get mfaCodeSent;

  /// MFA screen: error when fewer than six digits were entered.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code.'**
  String get mfaEnterCode;

  /// MFA screen: error for an expired code.
  ///
  /// In en, this message translates to:
  /// **'This code has expired. Tap Resend to get a new one.'**
  String get mfaExpiredCode;

  /// MFA screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Verify your identity'**
  String get mfaHeading;

  /// MFA screen: error for a wrong code.
  ///
  /// In en, this message translates to:
  /// **'That code isn’t right. Check it and try again.'**
  String get mfaIncorrectCode;

  /// MFA screen: prompt before the resend link.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive the code?'**
  String get mfaNoCodePrompt;

  /// MFA screen: link that sends a new code.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get mfaResend;

  /// MFA screen: wait before another resend is allowed.
  ///
  /// In en, this message translates to:
  /// **'{seconds, plural, =1{You can resend a code in 1 second.} other{You can resend a code in {seconds} seconds.}}'**
  String mfaResendCooldown(int seconds);

  /// MFA screen: no more resends allowed for now.
  ///
  /// In en, this message translates to:
  /// **'You’ve reached the resend limit. Try again later.'**
  String get mfaResendLimit;

  /// MFA screen: where the code went; the email is masked (m***@jc.edu.jm).
  ///
  /// In en, this message translates to:
  /// **'We sent a 6-digit code to\nyour email {email}'**
  String mfaSentTo(String email);

  /// MFA screen: lockout after too many wrong codes.
  ///
  /// In en, this message translates to:
  /// **'Too many incorrect attempts. Try again in 15 minutes.'**
  String get mfaTooManyAttempts;

  /// MFA screen: button that checks the code and signs in.
  ///
  /// In en, this message translates to:
  /// **'Verify and log in'**
  String get mfaVerifyButton;

  /// Bottom navigation: chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get navChat;

  /// Bottom navigation: feed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get navFeed;

  /// Bottom navigation: home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom navigation: profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// Bottom navigation: sport.
  ///
  /// In en, this message translates to:
  /// **'Sport'**
  String get navSport;

  /// Old Boy details screen: career.
  ///
  /// In en, this message translates to:
  /// **'Career'**
  String get oldBoyCareer;

  /// Old Boy details screen: career description.
  ///
  /// In en, this message translates to:
  /// **'What you do today'**
  String get oldBoyCareerDescription;

  /// Old Boy details screen: clubs.
  ///
  /// In en, this message translates to:
  /// **'Clubs and sports'**
  String get oldBoyClubs;

  /// Old Boy details screen: clubs description.
  ///
  /// In en, this message translates to:
  /// **'Teams and clubs you were part of'**
  String get oldBoyClubsDescription;

  /// Old Boy details screen: description.
  ///
  /// In en, this message translates to:
  /// **'Help us confirm you’re an Old Boy of Jamaica College.'**
  String get oldBoyDescription;

  /// Old Boy details screen: former student id.
  ///
  /// In en, this message translates to:
  /// **'Former student ID (optional)'**
  String get oldBoyFormerStudentId;

  /// Old Boy details screen: former student id help.
  ///
  /// In en, this message translates to:
  /// **'Speeds up verification if you have it.'**
  String get oldBoyFormerStudentIdHelp;

  /// Old Boy details screen: former student id hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. JC-2010-0000'**
  String get oldBoyFormerStudentIdHint;

  /// Old Boy details screen: giving back.
  ///
  /// In en, this message translates to:
  /// **'Giving back'**
  String get oldBoyGivingBack;

  /// Old Boy details screen: giving back description.
  ///
  /// In en, this message translates to:
  /// **'Mentorship, scholarships and events'**
  String get oldBoyGivingBackDescription;

  /// Old Boy details screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Your JC years'**
  String get oldBoyHeading;

  /// Old Boy details screen: last grade.
  ///
  /// In en, this message translates to:
  /// **'Last grade completed'**
  String get oldBoyLastGrade;

  /// Old Boy details screen: leadership.
  ///
  /// In en, this message translates to:
  /// **'Leadership'**
  String get oldBoyLeadership;

  /// Old Boy details screen: leadership description.
  ///
  /// In en, this message translates to:
  /// **'Roles you held at JC'**
  String get oldBoyLeadershipDescription;

  /// Old Boy details screen: profile help.
  ///
  /// In en, this message translates to:
  /// **'You can add or change these later in your profile.'**
  String get oldBoyProfileHelp;

  /// Old Boy details screen: profile title.
  ///
  /// In en, this message translates to:
  /// **'Your Old Boy profile (optional)'**
  String get oldBoyProfileTitle;

  /// Old Boy details screen: select grade.
  ///
  /// In en, this message translates to:
  /// **'Select grade'**
  String get oldBoySelectGrade;

  /// Old Boy details screen: select house.
  ///
  /// In en, this message translates to:
  /// **'Select your house'**
  String get oldBoySelectHouse;

  /// Old Boy details screen: select year.
  ///
  /// In en, this message translates to:
  /// **'Select year'**
  String get oldBoySelectYear;

  /// Parent details screen: add another son.
  ///
  /// In en, this message translates to:
  /// **'Add another son'**
  String get parentAddAnotherSon;

  /// Parent details screen: another son name.
  ///
  /// In en, this message translates to:
  /// **'Another son’s name'**
  String get parentAnotherSonName;

  /// Parent details screen: description.
  ///
  /// In en, this message translates to:
  /// **'Link your account to your son so you can follow his school life.'**
  String get parentDescription;

  /// Parent details screen: father.
  ///
  /// In en, this message translates to:
  /// **'Father'**
  String get parentFather;

  /// Parent details screen: guardian.
  ///
  /// In en, this message translates to:
  /// **'Guardian'**
  String get parentGuardian;

  /// Parent details screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Your son at JC'**
  String get parentHeading;

  /// Parent details screen: mother.
  ///
  /// In en, this message translates to:
  /// **'Mother'**
  String get parentMother;

  /// Parent details screen: remove another son.
  ///
  /// In en, this message translates to:
  /// **'Remove another son'**
  String get parentRemoveAnotherSon;

  /// Parent details screen: select relationship.
  ///
  /// In en, this message translates to:
  /// **'Select relationship'**
  String get parentSelectRelationship;

  /// Parent details screen: son name.
  ///
  /// In en, this message translates to:
  /// **'Son’s full name'**
  String get parentSonName;

  /// Parent details screen: son student id.
  ///
  /// In en, this message translates to:
  /// **'Son’s student ID'**
  String get parentSonStudentId;

  /// Parent details screen: son student id help.
  ///
  /// In en, this message translates to:
  /// **'Ask your son or check his report card.'**
  String get parentSonStudentIdHelp;

  /// Parent details screen: son student id hint.
  ///
  /// In en, this message translates to:
  /// **'JC-2026-4815'**
  String get parentSonStudentIdHint;

  /// Reset password screen: description.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and we’ll send you a reset link.'**
  String get resetPasswordDescription;

  /// Reset password screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Reset your password'**
  String get resetPasswordHeading;

  /// Reset password screen: send button.
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get resetPasswordSendButton;

  /// Reset password screen: sent message.
  ///
  /// In en, this message translates to:
  /// **'Reset link requested.'**
  String get resetPasswordSentMessage;

  /// Reset password screen: title.
  ///
  /// In en, this message translates to:
  /// **'Password reset'**
  String get resetPasswordTitle;

  /// Review screen: account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get reviewAccount;

  /// Review screen: another son.
  ///
  /// In en, this message translates to:
  /// **'Another son'**
  String get reviewAnotherSon;

  /// Review screen: description.
  ///
  /// In en, this message translates to:
  /// **'Check your details before we send them to the school for approval.'**
  String get reviewDescription;

  /// Review screen: former student id.
  ///
  /// In en, this message translates to:
  /// **'Former student ID'**
  String get reviewFormerStudentId;

  /// Review screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Review and submit'**
  String get reviewHeading;

  /// Review screen: last grade.
  ///
  /// In en, this message translates to:
  /// **'Last grade'**
  String get reviewLastGrade;

  /// Review screen: role name used when no role was chosen.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get reviewMember;

  /// Review screen: not selected.
  ///
  /// In en, this message translates to:
  /// **'Not selected'**
  String get reviewNotSelected;

  /// Review screen: phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get reviewPhone;

  /// Review screen: ready.
  ///
  /// In en, this message translates to:
  /// **'Ready for review'**
  String get reviewReady;

  /// Review screen: role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get reviewRole;

  /// Review screen: title of the role-specific summary card.
  ///
  /// In en, this message translates to:
  /// **'{role} details'**
  String reviewRoleDetails(String role);

  /// Review screen: selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get reviewSelected;

  /// Review screen: son.
  ///
  /// In en, this message translates to:
  /// **'Son'**
  String get reviewSon;

  /// Review screen: status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get reviewStatus;

  /// Review screen: submit.
  ///
  /// In en, this message translates to:
  /// **'Submit application'**
  String get reviewSubmit;

  /// Review screen: title.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get reviewTitle;

  /// Role name: alumnus of the college.
  ///
  /// In en, this message translates to:
  /// **'Old Boy'**
  String get roleOldBoy;

  /// Sign-up role option: Old Boy description.
  ///
  /// In en, this message translates to:
  /// **'I’m a JC alumnus'**
  String get roleOldBoyDescription;

  /// Role name: parent or guardian.
  ///
  /// In en, this message translates to:
  /// **'Parent or guardian'**
  String get roleParent;

  /// Sign-up role option: parent description.
  ///
  /// In en, this message translates to:
  /// **'I have a son at JC'**
  String get roleParentDescription;

  /// Role name: student.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get roleStudent;

  /// Sign-up role option: student description.
  ///
  /// In en, this message translates to:
  /// **'I’m currently enrolled at JC'**
  String get roleStudentDescription;

  /// Role name: teacher or coach.
  ///
  /// In en, this message translates to:
  /// **'Teacher or coach'**
  String get roleTeacher;

  /// Sign-up role option: teacher description.
  ///
  /// In en, this message translates to:
  /// **'I teach or coach at Jamaica College'**
  String get roleTeacherDescription;

  /// Sign-up role screen: description.
  ///
  /// In en, this message translates to:
  /// **'Tell us how you’re connected to Jamaica College.'**
  String get signUpRoleDescription;

  /// Sign-up role screen: have account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get signUpRoleHaveAccount;

  /// Sign-up role screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Join JC Connect'**
  String get signUpRoleHeading;

  /// Sign-up role screen: log in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get signUpRoleLogIn;

  /// Student details screen: date of birth hint.
  ///
  /// In en, this message translates to:
  /// **'DD / MM / YYYY'**
  String get studentDateOfBirthHint;

  /// Student details screen: description.
  ///
  /// In en, this message translates to:
  /// **'We’ll match this with school records to confirm you’re a JC student.'**
  String get studentDescription;

  /// Student details screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Student details'**
  String get studentHeading;

  /// Student details screen: id help.
  ///
  /// In en, this message translates to:
  /// **'You’ll find this on your school ID card.'**
  String get studentIdHelp;

  /// Student details screen: id hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. JC-2026-0000'**
  String get studentIdHint;

  /// Student details screen: select academic track.
  ///
  /// In en, this message translates to:
  /// **'Select academic track'**
  String get studentSelectAcademicTrack;

  /// Student details screen: select academic year.
  ///
  /// In en, this message translates to:
  /// **'Select academic year'**
  String get studentSelectAcademicYear;

  /// Student details screen: select class.
  ///
  /// In en, this message translates to:
  /// **'Select your class'**
  String get studentSelectClass;

  /// Student details screen: select grade.
  ///
  /// In en, this message translates to:
  /// **'Select your grade'**
  String get studentSelectGrade;

  /// Submitted screen: account status.
  ///
  /// In en, this message translates to:
  /// **'Account status'**
  String get submittedAccountStatus;

  /// Submitted screen: contact support.
  ///
  /// In en, this message translates to:
  /// **'Contact support'**
  String get submittedContactSupport;

  /// Submitted screen: description.
  ///
  /// In en, this message translates to:
  /// **'Your account is being reviewed by the JC admin team.'**
  String get submittedDescription;

  /// Submitted screen: done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get submittedDone;

  /// Submitted screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Thanks, we’ve got your details'**
  String get submittedHeading;

  /// Submitted screen: in progress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get submittedInProgress;

  /// Submitted screen: keep posted.
  ///
  /// In en, this message translates to:
  /// **'We’ll keep you posted'**
  String get submittedKeepPosted;

  /// Submitted screen: keep posted description.
  ///
  /// In en, this message translates to:
  /// **'You’ll get an email and a notification as soon as there’s an update.'**
  String get submittedKeepPostedDescription;

  /// Submitted screen: ready description.
  ///
  /// In en, this message translates to:
  /// **'Full access to JC Connect'**
  String get submittedReadyDescription;

  /// Submitted screen: review time.
  ///
  /// In en, this message translates to:
  /// **'Usually 1 to 2 business days'**
  String get submittedReviewTime;

  /// Submitted screen: step ready.
  ///
  /// In en, this message translates to:
  /// **'Account ready'**
  String get submittedStepReady;

  /// Submitted screen: step review.
  ///
  /// In en, this message translates to:
  /// **'Under review'**
  String get submittedStepReview;

  /// Submitted screen: step submitted.
  ///
  /// In en, this message translates to:
  /// **'Submitted'**
  String get submittedStepSubmitted;

  /// Submitted screen: support message.
  ///
  /// In en, this message translates to:
  /// **'Support request started.'**
  String get submittedSupportMessage;

  /// Submitted screen: upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get submittedUpcoming;

  /// Teacher details screen: coach option.
  ///
  /// In en, this message translates to:
  /// **'Coach'**
  String get teacherCoach;

  /// Teacher details screen: coach description.
  ///
  /// In en, this message translates to:
  /// **'I coach a sports team'**
  String get teacherCoachDescription;

  /// Teacher details screen: description.
  ///
  /// In en, this message translates to:
  /// **'We’ll confirm your role with the school administration.'**
  String get teacherDescription;

  /// Teacher details screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Teacher or coach details'**
  String get teacherHeading;

  /// Teacher details screen: pick one.
  ///
  /// In en, this message translates to:
  /// **'Pick at least one. We’ll ask a few questions about each.'**
  String get teacherPickOne;

  /// Teacher details screen: chosen staff roles, shown on the review screen.
  ///
  /// In en, this message translates to:
  /// **'{role, select, teacher{Teacher} coach{Coach} both{Teacher and Coach} other{}}'**
  String teacherRoleSummary(String role);

  /// Teacher details screen: school email help.
  ///
  /// In en, this message translates to:
  /// **'Your @jc.edu.jm email speeds up approval.'**
  String get teacherSchoolEmailHelp;

  /// Teacher details screen: school email hint.
  ///
  /// In en, this message translates to:
  /// **'name@jc.edu.jm'**
  String get teacherSchoolEmailHint;

  /// Teacher details screen: select all.
  ///
  /// In en, this message translates to:
  /// **'Select all that apply'**
  String get teacherSelectAll;

  /// Teacher details screen: staff id help.
  ///
  /// In en, this message translates to:
  /// **'Your JC employee number.'**
  String get teacherStaffIdHelp;

  /// Teacher details screen: staff id hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. JC-STF-0000'**
  String get teacherStaffIdHint;

  /// Teacher details screen: teacher option.
  ///
  /// In en, this message translates to:
  /// **'Teacher'**
  String get teacherTeacher;

  /// Teacher details screen: teacher description.
  ///
  /// In en, this message translates to:
  /// **'I teach subjects and classes'**
  String get teacherTeacherDescription;

  /// Teacher details screen: what do you do.
  ///
  /// In en, this message translates to:
  /// **'What do you do at JC?'**
  String get teacherWhatDoYouDo;

  /// Terms screen: agree button.
  ///
  /// In en, this message translates to:
  /// **'Agree and continue'**
  String get termsAgreeButton;

  /// Terms screen: agree privacy.
  ///
  /// In en, this message translates to:
  /// **'I agree to the Privacy Policy and how my collegiate data is stored and utilized'**
  String get termsAgreePrivacy;

  /// Terms screen: agree terms.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to the Terms of Use'**
  String get termsAgreeTerms;

  /// Terms screen: conduct body.
  ///
  /// In en, this message translates to:
  /// **'In adherence to the motto “For Ever Upwards” members pledge respect, integrity, and good faith.'**
  String get termsConductBody;

  /// Terms screen: conduct title.
  ///
  /// In en, this message translates to:
  /// **'Community conduct and honor code'**
  String get termsConductTitle;

  /// Terms screen: description.
  ///
  /// In en, this message translates to:
  /// **'Please read how JC Connect works before you continue.'**
  String get termsDescription;

  /// Terms screen: donations body.
  ///
  /// In en, this message translates to:
  /// **'Contributions toward collegiate athletic sponsorships, campus restoration, and student bursary grants represent irrevocable settlements overseen by the Board of Trustees.'**
  String get termsDonationsBody;

  /// Terms screen: donations title.
  ///
  /// In en, this message translates to:
  /// **'Donations and bursary payments'**
  String get termsDonationsTitle;

  /// Terms screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Terms and privacy'**
  String get termsHeading;

  /// Terms screen: privacy body.
  ///
  /// In en, this message translates to:
  /// **'All member directories, graduation cohort numbers, and academic achievements are protected with multi-layer cryptographic authentication.'**
  String get termsPrivacyBody;

  /// Terms screen: privacy title.
  ///
  /// In en, this message translates to:
  /// **'Privacy and data safeguards'**
  String get termsPrivacyTitle;

  /// Terms screen: review body.
  ///
  /// In en, this message translates to:
  /// **'System moderators reserve the authority to verify cohort identity cards, inspect reported behavior, and temporarily restrict feed publishing.'**
  String get termsReviewBody;

  /// Terms screen: review later.
  ///
  /// In en, this message translates to:
  /// **'ⓘ  You can review these anytime in Settings'**
  String get termsReviewLater;

  /// Terms screen: review title.
  ///
  /// In en, this message translates to:
  /// **'Account review and auditing'**
  String get termsReviewTitle;

  /// Terms screen: title.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get termsTitle;

  /// Terms screen: using body.
  ///
  /// In en, this message translates to:
  /// **'JC Connect serves as the private collegiate and alumni assembly. Membership is restricted to verified students, faculty, staff, and Old Boys.'**
  String get termsUsingBody;

  /// Terms screen: using title.
  ///
  /// In en, this message translates to:
  /// **'Using the app'**
  String get termsUsingTitle;

  /// Verify email screen: button.
  ///
  /// In en, this message translates to:
  /// **'Verify email'**
  String get verifyEmailButton;

  /// Verify email screen: enter code.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code.'**
  String get verifyEmailEnterCode;

  /// Verify email screen: heading.
  ///
  /// In en, this message translates to:
  /// **'Verify your email'**
  String get verifyEmailHeading;

  /// Verify email screen: no code prompt.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive the code?'**
  String get verifyEmailNoCodePrompt;

  /// Verify email screen: resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get verifyEmailResend;

  /// Verify email screen: resent message.
  ///
  /// In en, this message translates to:
  /// **'A new code has been sent.'**
  String get verifyEmailResentMessage;

  /// Verify email screen: where the code was sent.
  ///
  /// In en, this message translates to:
  /// **'We sent a 6-digit code to\n{email}'**
  String verifyEmailSentTo(String email);

  /// Welcome screen: footer.
  ///
  /// In en, this message translates to:
  /// **'Jamaica College • Founded 1789 • Kingston, JA'**
  String get welcomeFooter;

  /// Welcome screen: join button.
  ///
  /// In en, this message translates to:
  /// **'Join JC Connect'**
  String get welcomeJoinButton;

  /// Welcome screen: login button.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get welcomeLoginButton;

  /// Welcome screen: version.
  ///
  /// In en, this message translates to:
  /// **'v2.4.0 • True Blue Secure Connect'**
  String get welcomeVersion;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
