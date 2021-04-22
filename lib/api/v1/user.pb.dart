///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'item.pb.dart' as $0;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..aOS(3, 'surname')
    ..aOS(4, 'patronymic')
    ..aOS(5, 'phone')
    ..aOS(6, 'firebaseId')
    ..aOS(7, 'liqpayKey')
    ..aOS(8, 'email')
    ..a<$core.int>(9, 'role', $pb.PbFieldType.OU3)
    ..aOB(10, 'canSell')
    ..aOB(11, 'active')
    ..aOS(12, 'subject')
    ..aOS(13, 'fopName')
    ..aOS(14, 'fio')
    ..aOS(15, 'inn')
    ..aOS(16, 'legalAddress')
    ..aOS(17, 'account')
    ..aOS(18, 'mfo')
    ..aOS(19, 'bank')
    ..aOS(20, 'legalPhone')
    ..pc<UserFile>(21, 'files', $pb.PbFieldType.PM, subBuilder: UserFile.create)
    ..pc<$0.ItemImage>(22, 'uploadImages', $pb.PbFieldType.PM, subBuilder: $0.ItemImage.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get surname => $_getSZ(2);
  @$pb.TagNumber(3)
  set surname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurname() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get patronymic => $_getSZ(3);
  @$pb.TagNumber(4)
  set patronymic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPatronymic() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatronymic() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firebaseId => $_getSZ(5);
  @$pb.TagNumber(6)
  set firebaseId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirebaseId() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirebaseId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get liqpayKey => $_getSZ(6);
  @$pb.TagNumber(7)
  set liqpayKey($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLiqpayKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearLiqpayKey() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(8)
  set email($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get role => $_getIZ(8);
  @$pb.TagNumber(9)
  set role($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRole() => $_has(8);
  @$pb.TagNumber(9)
  void clearRole() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get canSell => $_getBF(9);
  @$pb.TagNumber(10)
  set canSell($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCanSell() => $_has(9);
  @$pb.TagNumber(10)
  void clearCanSell() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get active => $_getBF(10);
  @$pb.TagNumber(11)
  set active($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasActive() => $_has(10);
  @$pb.TagNumber(11)
  void clearActive() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get subject => $_getSZ(11);
  @$pb.TagNumber(12)
  set subject($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSubject() => $_has(11);
  @$pb.TagNumber(12)
  void clearSubject() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get fopName => $_getSZ(12);
  @$pb.TagNumber(13)
  set fopName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFopName() => $_has(12);
  @$pb.TagNumber(13)
  void clearFopName() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get fio => $_getSZ(13);
  @$pb.TagNumber(14)
  set fio($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFio() => $_has(13);
  @$pb.TagNumber(14)
  void clearFio() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get inn => $_getSZ(14);
  @$pb.TagNumber(15)
  set inn($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasInn() => $_has(14);
  @$pb.TagNumber(15)
  void clearInn() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get legalAddress => $_getSZ(15);
  @$pb.TagNumber(16)
  set legalAddress($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLegalAddress() => $_has(15);
  @$pb.TagNumber(16)
  void clearLegalAddress() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get account => $_getSZ(16);
  @$pb.TagNumber(17)
  set account($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasAccount() => $_has(16);
  @$pb.TagNumber(17)
  void clearAccount() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get mfo => $_getSZ(17);
  @$pb.TagNumber(18)
  set mfo($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasMfo() => $_has(17);
  @$pb.TagNumber(18)
  void clearMfo() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get bank => $_getSZ(18);
  @$pb.TagNumber(19)
  set bank($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasBank() => $_has(18);
  @$pb.TagNumber(19)
  void clearBank() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get legalPhone => $_getSZ(19);
  @$pb.TagNumber(20)
  set legalPhone($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasLegalPhone() => $_has(19);
  @$pb.TagNumber(20)
  void clearLegalPhone() => clearField(20);

  @$pb.TagNumber(21)
  $core.List<UserFile> get files => $_getList(20);

  @$pb.TagNumber(22)
  $core.List<$0.ItemImage> get uploadImages => $_getList(21);
}

class UserFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserFile', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'filename')
    ..hasRequiredFields = false
  ;

  UserFile._() : super();
  factory UserFile() => create();
  factory UserFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserFile clone() => UserFile()..mergeFromMessage(this);
  UserFile copyWith(void Function(UserFile) updates) => super.copyWith((message) => updates(message as UserFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFile create() => UserFile._();
  UserFile createEmptyInstance() => create();
  static $pb.PbList<UserFile> createRepeated() => $pb.PbList<UserFile>();
  @$core.pragma('dart2js:noInline')
  static UserFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFile>(create);
  static UserFile _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'surname')
    ..aOS(3, 'patronymic')
    ..aOS(4, 'email')
    ..aOS(5, 'phone')
    ..aOS(6, 'password')
    ..aOS(7, 'firebaseId')
    ..aOS(8, 'firebaseToken')
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest() => create();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get surname => $_getSZ(1);
  @$pb.TagNumber(2)
  set surname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSurname() => $_has(1);
  @$pb.TagNumber(2)
  void clearSurname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get patronymic => $_getSZ(2);
  @$pb.TagNumber(3)
  set patronymic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatronymic() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatronymic() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get password => $_getSZ(5);
  @$pb.TagNumber(6)
  set password($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPassword() => $_has(5);
  @$pb.TagNumber(6)
  void clearPassword() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firebaseId => $_getSZ(6);
  @$pb.TagNumber(7)
  set firebaseId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirebaseId() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirebaseId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firebaseToken => $_getSZ(7);
  @$pb.TagNumber(8)
  set firebaseToken($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirebaseToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirebaseToken() => clearField(8);
}

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'login')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  AuthRequest._() : super();
  factory AuthRequest() => create();
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class GoogleSignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GoogleSignInRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'email')
    ..aOS(3, 'firebaseId')
    ..aOS(4, 'firebaseToken')
    ..hasRequiredFields = false
  ;

  GoogleSignInRequest._() : super();
  factory GoogleSignInRequest() => create();
  factory GoogleSignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoogleSignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GoogleSignInRequest clone() => GoogleSignInRequest()..mergeFromMessage(this);
  GoogleSignInRequest copyWith(void Function(GoogleSignInRequest) updates) => super.copyWith((message) => updates(message as GoogleSignInRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GoogleSignInRequest create() => GoogleSignInRequest._();
  GoogleSignInRequest createEmptyInstance() => create();
  static $pb.PbList<GoogleSignInRequest> createRepeated() => $pb.PbList<GoogleSignInRequest>();
  @$core.pragma('dart2js:noInline')
  static GoogleSignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoogleSignInRequest>(create);
  static GoogleSignInRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firebaseId => $_getSZ(2);
  @$pb.TagNumber(3)
  set firebaseId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirebaseId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirebaseId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firebaseToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set firebaseToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirebaseToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirebaseToken() => clearField(4);
}

class FacebookSignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FacebookSignInRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'email')
    ..aOS(3, 'firebaseId')
    ..aOS(4, 'firebaseToken')
    ..hasRequiredFields = false
  ;

  FacebookSignInRequest._() : super();
  factory FacebookSignInRequest() => create();
  factory FacebookSignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FacebookSignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FacebookSignInRequest clone() => FacebookSignInRequest()..mergeFromMessage(this);
  FacebookSignInRequest copyWith(void Function(FacebookSignInRequest) updates) => super.copyWith((message) => updates(message as FacebookSignInRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FacebookSignInRequest create() => FacebookSignInRequest._();
  FacebookSignInRequest createEmptyInstance() => create();
  static $pb.PbList<FacebookSignInRequest> createRepeated() => $pb.PbList<FacebookSignInRequest>();
  @$core.pragma('dart2js:noInline')
  static FacebookSignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FacebookSignInRequest>(create);
  static FacebookSignInRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firebaseId => $_getSZ(2);
  @$pb.TagNumber(3)
  set firebaseId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirebaseId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirebaseId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firebaseToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set firebaseToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirebaseToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirebaseToken() => clearField(4);
}

class ForgotPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ForgotPasswordRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'login')
    ..aOS(2, 'firebaseToken')
    ..hasRequiredFields = false
  ;

  ForgotPasswordRequest._() : super();
  factory ForgotPasswordRequest() => create();
  factory ForgotPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgotPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ForgotPasswordRequest clone() => ForgotPasswordRequest()..mergeFromMessage(this);
  ForgotPasswordRequest copyWith(void Function(ForgotPasswordRequest) updates) => super.copyWith((message) => updates(message as ForgotPasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest create() => ForgotPasswordRequest._();
  ForgotPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordRequest> createRepeated() => $pb.PbList<ForgotPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordRequest>(create);
  static ForgotPasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firebaseToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set firebaseToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirebaseToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirebaseToken() => clearField(2);
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangePasswordRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'password')
    ..hasRequiredFields = false
  ;

  ChangePasswordRequest._() : super();
  factory ChangePasswordRequest() => create();
  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangePasswordRequest clone() => ChangePasswordRequest()..mergeFromMessage(this);
  ChangePasswordRequest copyWith(void Function(ChangePasswordRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() => $pb.PbList<ChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class AdminUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminUsersRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  AdminUsersRequest._() : super();
  factory AdminUsersRequest() => create();
  factory AdminUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminUsersRequest clone() => AdminUsersRequest()..mergeFromMessage(this);
  AdminUsersRequest copyWith(void Function(AdminUsersRequest) updates) => super.copyWith((message) => updates(message as AdminUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminUsersRequest create() => AdminUsersRequest._();
  AdminUsersRequest createEmptyInstance() => create();
  static $pb.PbList<AdminUsersRequest> createRepeated() => $pb.PbList<AdminUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminUsersRequest>(create);
  static AdminUsersRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sort => $_getSZ(2);
  @$pb.TagNumber(3)
  set sort($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSort() => $_has(2);
  @$pb.TagNumber(3)
  void clearSort() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get direction => $_getSZ(3);
  @$pb.TagNumber(4)
  set direction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDirection() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirection() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get search => $_getSZ(4);
  @$pb.TagNumber(5)
  set search($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSearch() => $_has(4);
  @$pb.TagNumber(5)
  void clearSearch() => clearField(5);
}

class AdminUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminUserRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminUserRequest._() : super();
  factory AdminUserRequest() => create();
  factory AdminUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminUserRequest clone() => AdminUserRequest()..mergeFromMessage(this);
  AdminUserRequest copyWith(void Function(AdminUserRequest) updates) => super.copyWith((message) => updates(message as AdminUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminUserRequest create() => AdminUserRequest._();
  AdminUserRequest createEmptyInstance() => create();
  static $pb.PbList<AdminUserRequest> createRepeated() => $pb.PbList<AdminUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminUserRequest>(create);
  static AdminUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditUserRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..aOS(3, 'surname')
    ..aOS(4, 'patronymic')
    ..aOS(5, 'phone')
    ..aOS(6, 'email')
    ..aOS(7, 'password')
    ..a<$core.int>(8, 'role', $pb.PbFieldType.OU3)
    ..aOB(9, 'canSell')
    ..aOB(10, 'active')
    ..aOS(11, 'liqpayKey')
    ..hasRequiredFields = false
  ;

  AdminEditUserRequest._() : super();
  factory AdminEditUserRequest() => create();
  factory AdminEditUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditUserRequest clone() => AdminEditUserRequest()..mergeFromMessage(this);
  AdminEditUserRequest copyWith(void Function(AdminEditUserRequest) updates) => super.copyWith((message) => updates(message as AdminEditUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditUserRequest create() => AdminEditUserRequest._();
  AdminEditUserRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditUserRequest> createRepeated() => $pb.PbList<AdminEditUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditUserRequest>(create);
  static AdminEditUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get surname => $_getSZ(2);
  @$pb.TagNumber(3)
  set surname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSurname() => $_has(2);
  @$pb.TagNumber(3)
  void clearSurname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get patronymic => $_getSZ(3);
  @$pb.TagNumber(4)
  set patronymic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPatronymic() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatronymic() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get email => $_getSZ(5);
  @$pb.TagNumber(6)
  set email($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get password => $_getSZ(6);
  @$pb.TagNumber(7)
  set password($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPassword() => $_has(6);
  @$pb.TagNumber(7)
  void clearPassword() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get role => $_getIZ(7);
  @$pb.TagNumber(8)
  set role($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRole() => $_has(7);
  @$pb.TagNumber(8)
  void clearRole() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get canSell => $_getBF(8);
  @$pb.TagNumber(9)
  set canSell($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCanSell() => $_has(8);
  @$pb.TagNumber(9)
  void clearCanSell() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get active => $_getBF(9);
  @$pb.TagNumber(10)
  set active($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasActive() => $_has(9);
  @$pb.TagNumber(10)
  void clearActive() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get liqpayKey => $_getSZ(10);
  @$pb.TagNumber(11)
  set liqpayKey($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLiqpayKey() => $_has(10);
  @$pb.TagNumber(11)
  void clearLiqpayKey() => clearField(11);
}

class AdminDeleteUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteUserRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..hasRequiredFields = false
  ;

  AdminDeleteUserRequest._() : super();
  factory AdminDeleteUserRequest() => create();
  factory AdminDeleteUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteUserRequest clone() => AdminDeleteUserRequest()..mergeFromMessage(this);
  AdminDeleteUserRequest copyWith(void Function(AdminDeleteUserRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteUserRequest create() => AdminDeleteUserRequest._();
  AdminDeleteUserRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteUserRequest> createRepeated() => $pb.PbList<AdminDeleteUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteUserRequest>(create);
  static AdminDeleteUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sort => $_getSZ(3);
  @$pb.TagNumber(4)
  set sort($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSort() => $_has(3);
  @$pb.TagNumber(4)
  void clearSort() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get direction => $_getSZ(4);
  @$pb.TagNumber(5)
  set direction($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDirection() => $_has(4);
  @$pb.TagNumber(5)
  void clearDirection() => clearField(5);
}

class UserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<User>(1, 'user', subBuilder: User.create)
    ..aOS(2, 'token')
    ..aOB(3, 'newUser', protoName: 'newUser')
    ..hasRequiredFields = false
  ;

  UserResponse._() : super();
  factory UserResponse() => create();
  factory UserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserResponse clone() => UserResponse()..mergeFromMessage(this);
  UserResponse copyWith(void Function(UserResponse) updates) => super.copyWith((message) => updates(message as UserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserResponse create() => UserResponse._();
  UserResponse createEmptyInstance() => create();
  static $pb.PbList<UserResponse> createRepeated() => $pb.PbList<UserResponse>();
  @$core.pragma('dart2js:noInline')
  static UserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserResponse>(create);
  static UserResponse _defaultInstance;

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get newUser => $_getBF(2);
  @$pb.TagNumber(3)
  set newUser($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewUser() => clearField(3);
}

class AdminUsersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminUsersResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<User>(1, 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminUsersResponse._() : super();
  factory AdminUsersResponse() => create();
  factory AdminUsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminUsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminUsersResponse clone() => AdminUsersResponse()..mergeFromMessage(this);
  AdminUsersResponse copyWith(void Function(AdminUsersResponse) updates) => super.copyWith((message) => updates(message as AdminUsersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminUsersResponse create() => AdminUsersResponse._();
  AdminUsersResponse createEmptyInstance() => create();
  static $pb.PbList<AdminUsersResponse> createRepeated() => $pb.PbList<AdminUsersResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminUsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminUsersResponse>(create);
  static AdminUsersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminUserResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<User>(1, 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  AdminUserResponse._() : super();
  factory AdminUserResponse() => create();
  factory AdminUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminUserResponse clone() => AdminUserResponse()..mergeFromMessage(this);
  AdminUserResponse copyWith(void Function(AdminUserResponse) updates) => super.copyWith((message) => updates(message as AdminUserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminUserResponse create() => AdminUserResponse._();
  AdminUserResponse createEmptyInstance() => create();
  static $pb.PbList<AdminUserResponse> createRepeated() => $pb.PbList<AdminUserResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminUserResponse>(create);
  static AdminUserResponse _defaultInstance;

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);
}

class AdminEditorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<User>(1, 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  AdminEditorsResponse._() : super();
  factory AdminEditorsResponse() => create();
  factory AdminEditorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditorsResponse clone() => AdminEditorsResponse()..mergeFromMessage(this);
  AdminEditorsResponse copyWith(void Function(AdminEditorsResponse) updates) => super.copyWith((message) => updates(message as AdminEditorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditorsResponse create() => AdminEditorsResponse._();
  AdminEditorsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminEditorsResponse> createRepeated() => $pb.PbList<AdminEditorsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminEditorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditorsResponse>(create);
  static AdminEditorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);
}

