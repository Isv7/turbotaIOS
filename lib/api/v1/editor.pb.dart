///
//  Generated code. Do not modify.
//  source: editor.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $9;
import 'cemetery.pb.dart' as $4;
import 'user.pb.dart' as $3;
import 'burial.pb.dart' as $7;
import 'subsector.pb.dart' as $6;
import 'sector.pb.dart' as $5;

class EditorEditProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorEditProfileRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
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

  EditorEditProfileRequest._() : super();
  factory EditorEditProfileRequest() => create();
  factory EditorEditProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorEditProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorEditProfileRequest clone() => EditorEditProfileRequest()..mergeFromMessage(this);
  EditorEditProfileRequest copyWith(void Function(EditorEditProfileRequest) updates) => super.copyWith((message) => updates(message as EditorEditProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorEditProfileRequest create() => EditorEditProfileRequest._();
  EditorEditProfileRequest createEmptyInstance() => create();
  static $pb.PbList<EditorEditProfileRequest> createRepeated() => $pb.PbList<EditorEditProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorEditProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorEditProfileRequest>(create);
  static EditorEditProfileRequest _defaultInstance;

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

class EditorBurialsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorBurialsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  EditorBurialsRequest._() : super();
  factory EditorBurialsRequest() => create();
  factory EditorBurialsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorBurialsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorBurialsRequest clone() => EditorBurialsRequest()..mergeFromMessage(this);
  EditorBurialsRequest copyWith(void Function(EditorBurialsRequest) updates) => super.copyWith((message) => updates(message as EditorBurialsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorBurialsRequest create() => EditorBurialsRequest._();
  EditorBurialsRequest createEmptyInstance() => create();
  static $pb.PbList<EditorBurialsRequest> createRepeated() => $pb.PbList<EditorBurialsRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorBurialsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorBurialsRequest>(create);
  static EditorBurialsRequest _defaultInstance;

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

  @$pb.TagNumber(6)
  $core.String get filter => $_getSZ(5);
  @$pb.TagNumber(6)
  set filter($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFilter() => $_has(5);
  @$pb.TagNumber(6)
  void clearFilter() => clearField(6);
}

class EditorNewBurialsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewBurialsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  EditorNewBurialsRequest._() : super();
  factory EditorNewBurialsRequest() => create();
  factory EditorNewBurialsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewBurialsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewBurialsRequest clone() => EditorNewBurialsRequest()..mergeFromMessage(this);
  EditorNewBurialsRequest copyWith(void Function(EditorNewBurialsRequest) updates) => super.copyWith((message) => updates(message as EditorNewBurialsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialsRequest create() => EditorNewBurialsRequest._();
  EditorNewBurialsRequest createEmptyInstance() => create();
  static $pb.PbList<EditorNewBurialsRequest> createRepeated() => $pb.PbList<EditorNewBurialsRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewBurialsRequest>(create);
  static EditorNewBurialsRequest _defaultInstance;

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

  @$pb.TagNumber(6)
  $core.String get filter => $_getSZ(5);
  @$pb.TagNumber(6)
  set filter($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFilter() => $_has(5);
  @$pb.TagNumber(6)
  void clearFilter() => clearField(6);
}

class EditorNewBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorNewBurialRequest._() : super();
  factory EditorNewBurialRequest() => create();
  factory EditorNewBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewBurialRequest clone() => EditorNewBurialRequest()..mergeFromMessage(this);
  EditorNewBurialRequest copyWith(void Function(EditorNewBurialRequest) updates) => super.copyWith((message) => updates(message as EditorNewBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialRequest create() => EditorNewBurialRequest._();
  EditorNewBurialRequest createEmptyInstance() => create();
  static $pb.PbList<EditorNewBurialRequest> createRepeated() => $pb.PbList<EditorNewBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewBurialRequest>(create);
  static EditorNewBurialRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditorEditNewBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorEditNewBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOM<$9.Timestamp>(2, 'birthdate', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'date', subBuilder: $9.Timestamp.create)
    ..aOS(4, 'buriedName')
    ..aOS(5, 'buriedSurname')
    ..aOS(6, 'buriedPatronymic')
    ..aOS(7, 'relativeName')
    ..aOS(8, 'relativeSurname')
    ..aOS(9, 'relativePatronymic')
    ..aOS(10, 'relativePhone')
    ..a<$core.int>(11, 'subsectorId', $pb.PbFieldType.OU3)
    ..aOS(12, 'row')
    ..aOS(13, 'place')
    ..pc<$4.Coordinate>(14, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  EditorEditNewBurialRequest._() : super();
  factory EditorEditNewBurialRequest() => create();
  factory EditorEditNewBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorEditNewBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorEditNewBurialRequest clone() => EditorEditNewBurialRequest()..mergeFromMessage(this);
  EditorEditNewBurialRequest copyWith(void Function(EditorEditNewBurialRequest) updates) => super.copyWith((message) => updates(message as EditorEditNewBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorEditNewBurialRequest create() => EditorEditNewBurialRequest._();
  EditorEditNewBurialRequest createEmptyInstance() => create();
  static $pb.PbList<EditorEditNewBurialRequest> createRepeated() => $pb.PbList<EditorEditNewBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorEditNewBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorEditNewBurialRequest>(create);
  static EditorEditNewBurialRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $9.Timestamp get birthdate => $_getN(1);
  @$pb.TagNumber(2)
  set birthdate($9.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBirthdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearBirthdate() => clearField(2);
  @$pb.TagNumber(2)
  $9.Timestamp ensureBirthdate() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($9.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $9.Timestamp ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get buriedName => $_getSZ(3);
  @$pb.TagNumber(4)
  set buriedName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBuriedName() => $_has(3);
  @$pb.TagNumber(4)
  void clearBuriedName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get buriedSurname => $_getSZ(4);
  @$pb.TagNumber(5)
  set buriedSurname($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBuriedSurname() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuriedSurname() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get buriedPatronymic => $_getSZ(5);
  @$pb.TagNumber(6)
  set buriedPatronymic($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBuriedPatronymic() => $_has(5);
  @$pb.TagNumber(6)
  void clearBuriedPatronymic() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get relativeName => $_getSZ(6);
  @$pb.TagNumber(7)
  set relativeName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRelativeName() => $_has(6);
  @$pb.TagNumber(7)
  void clearRelativeName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get relativeSurname => $_getSZ(7);
  @$pb.TagNumber(8)
  set relativeSurname($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRelativeSurname() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeSurname() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get relativePatronymic => $_getSZ(8);
  @$pb.TagNumber(9)
  set relativePatronymic($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRelativePatronymic() => $_has(8);
  @$pb.TagNumber(9)
  void clearRelativePatronymic() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get relativePhone => $_getSZ(9);
  @$pb.TagNumber(10)
  set relativePhone($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRelativePhone() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativePhone() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get subsectorId => $_getIZ(10);
  @$pb.TagNumber(11)
  set subsectorId($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSubsectorId() => $_has(10);
  @$pb.TagNumber(11)
  void clearSubsectorId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get row => $_getSZ(11);
  @$pb.TagNumber(12)
  set row($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRow() => $_has(11);
  @$pb.TagNumber(12)
  void clearRow() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get place => $_getSZ(12);
  @$pb.TagNumber(13)
  set place($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPlace() => $_has(12);
  @$pb.TagNumber(13)
  void clearPlace() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$4.Coordinate> get coordinates => $_getList(13);
}

class EditorDeleteNewBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorDeleteNewBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..aOS(7, 'filter')
    ..hasRequiredFields = false
  ;

  EditorDeleteNewBurialRequest._() : super();
  factory EditorDeleteNewBurialRequest() => create();
  factory EditorDeleteNewBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorDeleteNewBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorDeleteNewBurialRequest clone() => EditorDeleteNewBurialRequest()..mergeFromMessage(this);
  EditorDeleteNewBurialRequest copyWith(void Function(EditorDeleteNewBurialRequest) updates) => super.copyWith((message) => updates(message as EditorDeleteNewBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorDeleteNewBurialRequest create() => EditorDeleteNewBurialRequest._();
  EditorDeleteNewBurialRequest createEmptyInstance() => create();
  static $pb.PbList<EditorDeleteNewBurialRequest> createRepeated() => $pb.PbList<EditorDeleteNewBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorDeleteNewBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorDeleteNewBurialRequest>(create);
  static EditorDeleteNewBurialRequest _defaultInstance;

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

  @$pb.TagNumber(6)
  $core.String get search => $_getSZ(5);
  @$pb.TagNumber(6)
  set search($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSearch() => $_has(5);
  @$pb.TagNumber(6)
  void clearSearch() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get filter => $_getSZ(6);
  @$pb.TagNumber(7)
  set filter($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFilter() => $_has(6);
  @$pb.TagNumber(7)
  void clearFilter() => clearField(7);
}

class EditorBurialsAutocompleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorBurialsAutocompleteRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'sectors')
    ..hasRequiredFields = false
  ;

  EditorBurialsAutocompleteRequest._() : super();
  factory EditorBurialsAutocompleteRequest() => create();
  factory EditorBurialsAutocompleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorBurialsAutocompleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorBurialsAutocompleteRequest clone() => EditorBurialsAutocompleteRequest()..mergeFromMessage(this);
  EditorBurialsAutocompleteRequest copyWith(void Function(EditorBurialsAutocompleteRequest) updates) => super.copyWith((message) => updates(message as EditorBurialsAutocompleteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorBurialsAutocompleteRequest create() => EditorBurialsAutocompleteRequest._();
  EditorBurialsAutocompleteRequest createEmptyInstance() => create();
  static $pb.PbList<EditorBurialsAutocompleteRequest> createRepeated() => $pb.PbList<EditorBurialsAutocompleteRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorBurialsAutocompleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorBurialsAutocompleteRequest>(create);
  static EditorBurialsAutocompleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sectors => $_getSZ(0);
  @$pb.TagNumber(1)
  set sectors($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSectors() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectors() => clearField(1);
}

class EditorSubsectorsAutocompleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorSubsectorsAutocompleteRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'cemeteries')
    ..hasRequiredFields = false
  ;

  EditorSubsectorsAutocompleteRequest._() : super();
  factory EditorSubsectorsAutocompleteRequest() => create();
  factory EditorSubsectorsAutocompleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorSubsectorsAutocompleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorSubsectorsAutocompleteRequest clone() => EditorSubsectorsAutocompleteRequest()..mergeFromMessage(this);
  EditorSubsectorsAutocompleteRequest copyWith(void Function(EditorSubsectorsAutocompleteRequest) updates) => super.copyWith((message) => updates(message as EditorSubsectorsAutocompleteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorSubsectorsAutocompleteRequest create() => EditorSubsectorsAutocompleteRequest._();
  EditorSubsectorsAutocompleteRequest createEmptyInstance() => create();
  static $pb.PbList<EditorSubsectorsAutocompleteRequest> createRepeated() => $pb.PbList<EditorSubsectorsAutocompleteRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorSubsectorsAutocompleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorSubsectorsAutocompleteRequest>(create);
  static EditorSubsectorsAutocompleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cemeteries => $_getSZ(0);
  @$pb.TagNumber(1)
  set cemeteries($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCemeteries() => $_has(0);
  @$pb.TagNumber(1)
  void clearCemeteries() => clearField(1);
}

class EditorDeleteFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorDeleteFileRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorDeleteFileRequest._() : super();
  factory EditorDeleteFileRequest() => create();
  factory EditorDeleteFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorDeleteFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorDeleteFileRequest clone() => EditorDeleteFileRequest()..mergeFromMessage(this);
  EditorDeleteFileRequest copyWith(void Function(EditorDeleteFileRequest) updates) => super.copyWith((message) => updates(message as EditorDeleteFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorDeleteFileRequest create() => EditorDeleteFileRequest._();
  EditorDeleteFileRequest createEmptyInstance() => create();
  static $pb.PbList<EditorDeleteFileRequest> createRepeated() => $pb.PbList<EditorDeleteFileRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorDeleteFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorDeleteFileRequest>(create);
  static EditorDeleteFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditorCemeterySectorsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorCemeterySectorsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cemeteryId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorCemeterySectorsRequest._() : super();
  factory EditorCemeterySectorsRequest() => create();
  factory EditorCemeterySectorsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorCemeterySectorsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorCemeterySectorsRequest clone() => EditorCemeterySectorsRequest()..mergeFromMessage(this);
  EditorCemeterySectorsRequest copyWith(void Function(EditorCemeterySectorsRequest) updates) => super.copyWith((message) => updates(message as EditorCemeterySectorsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorCemeterySectorsRequest create() => EditorCemeterySectorsRequest._();
  EditorCemeterySectorsRequest createEmptyInstance() => create();
  static $pb.PbList<EditorCemeterySectorsRequest> createRepeated() => $pb.PbList<EditorCemeterySectorsRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorCemeterySectorsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorCemeterySectorsRequest>(create);
  static EditorCemeterySectorsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cemeteryId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cemeteryId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCemeteryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCemeteryId() => clearField(1);
}

class EditorSectorSubsectorsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorSectorSubsectorsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'sectorId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorSectorSubsectorsRequest._() : super();
  factory EditorSectorSubsectorsRequest() => create();
  factory EditorSectorSubsectorsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorSectorSubsectorsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorSectorSubsectorsRequest clone() => EditorSectorSubsectorsRequest()..mergeFromMessage(this);
  EditorSectorSubsectorsRequest copyWith(void Function(EditorSectorSubsectorsRequest) updates) => super.copyWith((message) => updates(message as EditorSectorSubsectorsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorSectorSubsectorsRequest create() => EditorSectorSubsectorsRequest._();
  EditorSectorSubsectorsRequest createEmptyInstance() => create();
  static $pb.PbList<EditorSectorSubsectorsRequest> createRepeated() => $pb.PbList<EditorSectorSubsectorsRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorSectorSubsectorsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorSectorSubsectorsRequest>(create);
  static EditorSectorSubsectorsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sectorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sectorId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSectorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectorId() => clearField(1);
}

class EditorProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorProfileResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<$3.User>(1, 'user', subBuilder: $3.User.create)
    ..hasRequiredFields = false
  ;

  EditorProfileResponse._() : super();
  factory EditorProfileResponse() => create();
  factory EditorProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorProfileResponse clone() => EditorProfileResponse()..mergeFromMessage(this);
  EditorProfileResponse copyWith(void Function(EditorProfileResponse) updates) => super.copyWith((message) => updates(message as EditorProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorProfileResponse create() => EditorProfileResponse._();
  EditorProfileResponse createEmptyInstance() => create();
  static $pb.PbList<EditorProfileResponse> createRepeated() => $pb.PbList<EditorProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorProfileResponse>(create);
  static EditorProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($3.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $3.User ensureUser() => $_ensure(0);
}

class EditorBurialsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorBurialsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$7.Burial>(1, 'burials', $pb.PbFieldType.PM, subBuilder: $7.Burial.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorBurialsResponse._() : super();
  factory EditorBurialsResponse() => create();
  factory EditorBurialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorBurialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorBurialsResponse clone() => EditorBurialsResponse()..mergeFromMessage(this);
  EditorBurialsResponse copyWith(void Function(EditorBurialsResponse) updates) => super.copyWith((message) => updates(message as EditorBurialsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorBurialsResponse create() => EditorBurialsResponse._();
  EditorBurialsResponse createEmptyInstance() => create();
  static $pb.PbList<EditorBurialsResponse> createRepeated() => $pb.PbList<EditorBurialsResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorBurialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorBurialsResponse>(create);
  static EditorBurialsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.Burial> get burials => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class EditorNewBurialsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewBurialsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$7.Burial>(1, 'burials', $pb.PbFieldType.PM, subBuilder: $7.Burial.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorNewBurialsResponse._() : super();
  factory EditorNewBurialsResponse() => create();
  factory EditorNewBurialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewBurialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewBurialsResponse clone() => EditorNewBurialsResponse()..mergeFromMessage(this);
  EditorNewBurialsResponse copyWith(void Function(EditorNewBurialsResponse) updates) => super.copyWith((message) => updates(message as EditorNewBurialsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialsResponse create() => EditorNewBurialsResponse._();
  EditorNewBurialsResponse createEmptyInstance() => create();
  static $pb.PbList<EditorNewBurialsResponse> createRepeated() => $pb.PbList<EditorNewBurialsResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewBurialsResponse>(create);
  static EditorNewBurialsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.Burial> get burials => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class EditorNewBurialResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewBurialResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<$7.Burial>(1, 'burial', subBuilder: $7.Burial.create)
    ..hasRequiredFields = false
  ;

  EditorNewBurialResponse._() : super();
  factory EditorNewBurialResponse() => create();
  factory EditorNewBurialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewBurialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewBurialResponse clone() => EditorNewBurialResponse()..mergeFromMessage(this);
  EditorNewBurialResponse copyWith(void Function(EditorNewBurialResponse) updates) => super.copyWith((message) => updates(message as EditorNewBurialResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialResponse create() => EditorNewBurialResponse._();
  EditorNewBurialResponse createEmptyInstance() => create();
  static $pb.PbList<EditorNewBurialResponse> createRepeated() => $pb.PbList<EditorNewBurialResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorNewBurialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewBurialResponse>(create);
  static EditorNewBurialResponse _defaultInstance;

  @$pb.TagNumber(1)
  $7.Burial get burial => $_getN(0);
  @$pb.TagNumber(1)
  set burial($7.Burial v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBurial() => $_has(0);
  @$pb.TagNumber(1)
  void clearBurial() => clearField(1);
  @$pb.TagNumber(1)
  $7.Burial ensureBurial() => $_ensure(0);
}

class EditorBurialsAutocompleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorBurialsAutocompleteResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$6.Subsector>(1, 'subsectors', $pb.PbFieldType.PM, subBuilder: $6.Subsector.create)
    ..hasRequiredFields = false
  ;

  EditorBurialsAutocompleteResponse._() : super();
  factory EditorBurialsAutocompleteResponse() => create();
  factory EditorBurialsAutocompleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorBurialsAutocompleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorBurialsAutocompleteResponse clone() => EditorBurialsAutocompleteResponse()..mergeFromMessage(this);
  EditorBurialsAutocompleteResponse copyWith(void Function(EditorBurialsAutocompleteResponse) updates) => super.copyWith((message) => updates(message as EditorBurialsAutocompleteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorBurialsAutocompleteResponse create() => EditorBurialsAutocompleteResponse._();
  EditorBurialsAutocompleteResponse createEmptyInstance() => create();
  static $pb.PbList<EditorBurialsAutocompleteResponse> createRepeated() => $pb.PbList<EditorBurialsAutocompleteResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorBurialsAutocompleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorBurialsAutocompleteResponse>(create);
  static EditorBurialsAutocompleteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.Subsector> get subsectors => $_getList(0);
}

class EditorSubsectorsAutocompleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorSubsectorsAutocompleteResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$5.Sector>(1, 'sectors', $pb.PbFieldType.PM, subBuilder: $5.Sector.create)
    ..hasRequiredFields = false
  ;

  EditorSubsectorsAutocompleteResponse._() : super();
  factory EditorSubsectorsAutocompleteResponse() => create();
  factory EditorSubsectorsAutocompleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorSubsectorsAutocompleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorSubsectorsAutocompleteResponse clone() => EditorSubsectorsAutocompleteResponse()..mergeFromMessage(this);
  EditorSubsectorsAutocompleteResponse copyWith(void Function(EditorSubsectorsAutocompleteResponse) updates) => super.copyWith((message) => updates(message as EditorSubsectorsAutocompleteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorSubsectorsAutocompleteResponse create() => EditorSubsectorsAutocompleteResponse._();
  EditorSubsectorsAutocompleteResponse createEmptyInstance() => create();
  static $pb.PbList<EditorSubsectorsAutocompleteResponse> createRepeated() => $pb.PbList<EditorSubsectorsAutocompleteResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorSubsectorsAutocompleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorSubsectorsAutocompleteResponse>(create);
  static EditorSubsectorsAutocompleteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Sector> get sectors => $_getList(0);
}

class EditorObjectsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorObjectsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$4.Cemetery>(1, 'cemeteries', $pb.PbFieldType.PM, subBuilder: $4.Cemetery.create)
    ..hasRequiredFields = false
  ;

  EditorObjectsResponse._() : super();
  factory EditorObjectsResponse() => create();
  factory EditorObjectsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorObjectsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorObjectsResponse clone() => EditorObjectsResponse()..mergeFromMessage(this);
  EditorObjectsResponse copyWith(void Function(EditorObjectsResponse) updates) => super.copyWith((message) => updates(message as EditorObjectsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorObjectsResponse create() => EditorObjectsResponse._();
  EditorObjectsResponse createEmptyInstance() => create();
  static $pb.PbList<EditorObjectsResponse> createRepeated() => $pb.PbList<EditorObjectsResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorObjectsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorObjectsResponse>(create);
  static EditorObjectsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.Cemetery> get cemeteries => $_getList(0);
}

class EditorCemeterySectorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorCemeterySectorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$5.Sector>(1, 'sectors', $pb.PbFieldType.PM, subBuilder: $5.Sector.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorCemeterySectorsResponse._() : super();
  factory EditorCemeterySectorsResponse() => create();
  factory EditorCemeterySectorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorCemeterySectorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorCemeterySectorsResponse clone() => EditorCemeterySectorsResponse()..mergeFromMessage(this);
  EditorCemeterySectorsResponse copyWith(void Function(EditorCemeterySectorsResponse) updates) => super.copyWith((message) => updates(message as EditorCemeterySectorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorCemeterySectorsResponse create() => EditorCemeterySectorsResponse._();
  EditorCemeterySectorsResponse createEmptyInstance() => create();
  static $pb.PbList<EditorCemeterySectorsResponse> createRepeated() => $pb.PbList<EditorCemeterySectorsResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorCemeterySectorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorCemeterySectorsResponse>(create);
  static EditorCemeterySectorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Sector> get sectors => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class EditorSectorSubsectorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorSectorSubsectorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$6.Subsector>(1, 'subsectors', $pb.PbFieldType.PM, subBuilder: $6.Subsector.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorSectorSubsectorsResponse._() : super();
  factory EditorSectorSubsectorsResponse() => create();
  factory EditorSectorSubsectorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorSectorSubsectorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorSectorSubsectorsResponse clone() => EditorSectorSubsectorsResponse()..mergeFromMessage(this);
  EditorSectorSubsectorsResponse copyWith(void Function(EditorSectorSubsectorsResponse) updates) => super.copyWith((message) => updates(message as EditorSectorSubsectorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorSectorSubsectorsResponse create() => EditorSectorSubsectorsResponse._();
  EditorSectorSubsectorsResponse createEmptyInstance() => create();
  static $pb.PbList<EditorSectorSubsectorsResponse> createRepeated() => $pb.PbList<EditorSectorSubsectorsResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorSectorSubsectorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorSectorSubsectorsResponse>(create);
  static EditorSectorSubsectorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.Subsector> get subsectors => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

