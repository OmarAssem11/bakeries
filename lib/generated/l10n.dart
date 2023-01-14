// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get localeName {
    return Intl.message(
      'en',
      name: 'localeName',
      desc: '',
      args: [],
    );
  }

  /// `No page found!`
  String get noPageFound {
    return Intl.message(
      'No page found!',
      name: 'noPageFound',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong!`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong!',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get doNotHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'doNotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Can't be empty`
  String get canNotBeEmpty {
    return Intl.message(
      'Can\'t be empty',
      name: 'canNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email can't be empty`
  String get emailCanNotBeEmpty {
    return Intl.message(
      'Email can\'t be empty',
      name: 'emailCanNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalidEmailFormat {
    return Intl.message(
      'Invalid email format',
      name: 'invalidEmailFormat',
      desc: '',
      args: [],
    );
  }

  /// `Password can't be less than eight characters`
  String get passwordCanNotBeLessThanEightCharacters {
    return Intl.message(
      'Password can\'t be less than eight characters',
      name: 'passwordCanNotBeLessThanEightCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get checkYourEmail {
    return Intl.message(
      'Check your email',
      name: 'checkYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get areYouSureYouWantToLogout {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'areYouSureYouWantToLogout',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get darkMode {
    return Intl.message(
      'Dark mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Bakeries`
  String get bakeries {
    return Intl.message(
      'Bakeries',
      name: 'bakeries',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Phone can't be empty`
  String get phoneCanNotBeEmpty {
    return Intl.message(
      'Phone can\'t be empty',
      name: 'phoneCanNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get invalidPhoneNumber {
    return Intl.message(
      'Invalid phone number',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `My orders`
  String get myOrders {
    return Intl.message(
      'My orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Basket`
  String get basket {
    return Intl.message(
      'Basket',
      name: 'basket',
      desc: '',
      args: [],
    );
  }

  /// `Special request`
  String get specialRequest {
    return Intl.message(
      'Special request',
      name: 'specialRequest',
      desc: '',
      args: [],
    );
  }

  /// `Add a note`
  String get addANote {
    return Intl.message(
      'Add a note',
      name: 'addANote',
      desc: '',
      args: [],
    );
  }

  /// `Anything else we need to know?`
  String get anythingElseWeNeedToKnow {
    return Intl.message(
      'Anything else we need to know?',
      name: 'anythingElseWeNeedToKnow',
      desc: '',
      args: [],
    );
  }

  /// `Payment summery`
  String get paymentSummery {
    return Intl.message(
      'Payment summery',
      name: 'paymentSummery',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Delivery fee`
  String get deliveryFee {
    return Intl.message(
      'Delivery fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `Total amount`
  String get totalAmount {
    return Intl.message(
      'Total amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Add to basket`
  String get addToBasket {
    return Intl.message(
      'Add to basket',
      name: 'addToBasket',
      desc: '',
      args: [],
    );
  }

  /// `Item added to your basket`
  String get itemAddedToYourBasket {
    return Intl.message(
      'Item added to your basket',
      name: 'itemAddedToYourBasket',
      desc: '',
      args: [],
    );
  }

  /// `View basket`
  String get viewBasket {
    return Intl.message(
      'View basket',
      name: 'viewBasket',
      desc: '',
      args: [],
    );
  }

  /// `Your basket is empty!`
  String get yourBasketIsEmpty {
    return Intl.message(
      'Your basket is empty!',
      name: 'yourBasketIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Pay with`
  String get payWith {
    return Intl.message(
      'Pay with',
      name: 'payWith',
      desc: '',
      args: [],
    );
  }

  /// `Cash on delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `place order`
  String get placeOrder {
    return Intl.message(
      'place order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Order details`
  String get orderDetails {
    return Intl.message(
      'Order details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Confirm address`
  String get confirmAddress {
    return Intl.message(
      'Confirm address',
      name: 'confirmAddress',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get orderId {
    return Intl.message(
      'Order ID',
      name: 'orderId',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry it happens. Please enter the address \n associated with your account`
  String get forgotPasswordCaption {
    return Intl.message(
      'Don\'t worry it happens. Please enter the address \n associated with your account',
      name: 'forgotPasswordCaption',
      desc: '',
      args: [],
    );
  }

  /// `Please enable Your Location Service`
  String get pleaseEnableYourLocation {
    return Intl.message(
      'Please enable Your Location Service',
      name: 'pleaseEnableYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Location permission are denied`
  String get locationPermissionDenied {
    return Intl.message(
      'Location permission are denied',
      name: 'locationPermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Location permission are permanently denied, we cannot request permission`
  String get locationPermissionPermanentlyDenied {
    return Intl.message(
      'Location permission are permanently denied, we cannot request permission',
      name: 'locationPermissionPermanentlyDenied',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `You have no orders yet!`
  String get youHaveNoOrdersYet {
    return Intl.message(
      'You have no orders yet!',
      name: 'youHaveNoOrdersYet',
      desc: '',
      args: [],
    );
  }

  /// `Mark as collected`
  String get markAsCollected {
    return Intl.message(
      'Mark as collected',
      name: 'markAsCollected',
      desc: '',
      args: [],
    );
  }

  /// `Cancel order`
  String get cancelOrder {
    return Intl.message(
      'Cancel order',
      name: 'cancelOrder',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel this order?`
  String get areYouSureYouWantToCancelThisOrder {
    return Intl.message(
      'Are you sure you want to cancel this order?',
      name: 'areYouSureYouWantToCancelThisOrder',
      desc: '',
      args: [],
    );
  }

  /// `Rate your order`
  String get rateYourOrder {
    return Intl.message(
      'Rate your order',
      name: 'rateYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Order Rating`
  String get orderRating {
    return Intl.message(
      'Order Rating',
      name: 'orderRating',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Pick your category`
  String get pickYourCategory {
    return Intl.message(
      'Pick your category',
      name: 'pickYourCategory',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Filter bakeries by range`
  String get filterBakeriesByRange {
    return Intl.message(
      'Filter bakeries by range',
      name: 'filterBakeriesByRange',
      desc: '',
      args: [],
    );
  }

  /// `Invalid number`
  String get invalidNumber {
    return Intl.message(
      'Invalid number',
      name: 'invalidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Range by km`
  String get rangeByKm {
    return Intl.message(
      'Range by km',
      name: 'rangeByKm',
      desc: '',
      args: [],
    );
  }

  /// `Bakeries within`
  String get bakeriesWithin {
    return Intl.message(
      'Bakeries within',
      name: 'bakeriesWithin',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
