///
//  Generated code. Do not modify.
//  source: seller.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $2;

class SellerEditProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerEditProfileRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..aOS(3, 'surname')
    ..aOS(4, 'patronymic')
    ..aOS(5, 'phone')
    ..aOS(6, 'email')
    ..aOS(7, 'password')
    ..a<$core.int>(8, 'role', $pb.PbFieldType.OU3)
    ..aOB(9, 'active')
    ..aOS(10, 'subject')
    ..aOS(11, 'fopName')
    ..aOS(12, 'fio')
    ..aOS(13, 'inn')
    ..aOS(14, 'legalAddress')
    ..aOS(15, 'account')
    ..aOS(16, 'mfo')
    ..aOS(17, 'bank')
    ..aOS(18, 'legalPhone')
    ..hasRequiredFields = false
  ;

  SellerEditProfileRequest._() : super();
  factory SellerEditProfileRequest() => create();
  factory SellerEditProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerEditProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerEditProfileRequest clone() => SellerEditProfileRequest()..mergeFromMessage(this);
  SellerEditProfileRequest copyWith(void Function(SellerEditProfileRequest) updates) => super.copyWith((message) => updates(message as SellerEditProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerEditProfileRequest create() => SellerEditProfileRequest._();
  SellerEditProfileRequest createEmptyInstance() => create();
  static $pb.PbList<SellerEditProfileRequest> createRepeated() => $pb.PbList<SellerEditProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerEditProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerEditProfileRequest>(create);
  static SellerEditProfileRequest _defaultInstance;

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
  $core.bool get active => $_getBF(8);
  @$pb.TagNumber(9)
  set active($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasActive() => $_has(8);
  @$pb.TagNumber(9)
  void clearActive() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get subject => $_getSZ(9);
  @$pb.TagNumber(10)
  set subject($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSubject() => $_has(9);
  @$pb.TagNumber(10)
  void clearSubject() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get fopName => $_getSZ(10);
  @$pb.TagNumber(11)
  set fopName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFopName() => $_has(10);
  @$pb.TagNumber(11)
  void clearFopName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get fio => $_getSZ(11);
  @$pb.TagNumber(12)
  set fio($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFio() => $_has(11);
  @$pb.TagNumber(12)
  void clearFio() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get inn => $_getSZ(12);
  @$pb.TagNumber(13)
  set inn($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasInn() => $_has(12);
  @$pb.TagNumber(13)
  void clearInn() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get legalAddress => $_getSZ(13);
  @$pb.TagNumber(14)
  set legalAddress($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLegalAddress() => $_has(13);
  @$pb.TagNumber(14)
  void clearLegalAddress() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get account => $_getSZ(14);
  @$pb.TagNumber(15)
  set account($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAccount() => $_has(14);
  @$pb.TagNumber(15)
  void clearAccount() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get mfo => $_getSZ(15);
  @$pb.TagNumber(16)
  set mfo($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasMfo() => $_has(15);
  @$pb.TagNumber(16)
  void clearMfo() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get bank => $_getSZ(16);
  @$pb.TagNumber(17)
  set bank($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasBank() => $_has(16);
  @$pb.TagNumber(17)
  void clearBank() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get legalPhone => $_getSZ(17);
  @$pb.TagNumber(18)
  set legalPhone($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasLegalPhone() => $_has(17);
  @$pb.TagNumber(18)
  void clearLegalPhone() => clearField(18);
}

class SellerDeleteFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerDeleteFileRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerDeleteFileRequest._() : super();
  factory SellerDeleteFileRequest() => create();
  factory SellerDeleteFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerDeleteFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerDeleteFileRequest clone() => SellerDeleteFileRequest()..mergeFromMessage(this);
  SellerDeleteFileRequest copyWith(void Function(SellerDeleteFileRequest) updates) => super.copyWith((message) => updates(message as SellerDeleteFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerDeleteFileRequest create() => SellerDeleteFileRequest._();
  SellerDeleteFileRequest createEmptyInstance() => create();
  static $pb.PbList<SellerDeleteFileRequest> createRepeated() => $pb.PbList<SellerDeleteFileRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerDeleteFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerDeleteFileRequest>(create);
  static SellerDeleteFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SellerProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerProfileResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<$2.User>(1, 'user', subBuilder: $2.User.create)
    ..hasRequiredFields = false
  ;

  SellerProfileResponse._() : super();
  factory SellerProfileResponse() => create();
  factory SellerProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerProfileResponse clone() => SellerProfileResponse()..mergeFromMessage(this);
  SellerProfileResponse copyWith(void Function(SellerProfileResponse) updates) => super.copyWith((message) => updates(message as SellerProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerProfileResponse create() => SellerProfileResponse._();
  SellerProfileResponse createEmptyInstance() => create();
  static $pb.PbList<SellerProfileResponse> createRepeated() => $pb.PbList<SellerProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static SellerProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerProfileResponse>(create);
  static SellerProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  $2.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($2.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $2.User ensureUser() => $_ensure(0);
}

