///
//  Generated code. Do not modify.
//  source: burial.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $8;
import 'subsector.pb.dart' as $6;
import 'user.pb.dart' as $3;
import 'cemetery.pb.dart' as $4;

class Burial extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Burial', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'createdBy', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'editedBy', $pb.PbFieldType.OU3)
    ..aOM<$8.Timestamp>(4, 'date', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(5, 'birthdate', subBuilder: $8.Timestamp.create)
    ..aOS(6, 'buriedName')
    ..aOS(7, 'buriedSurname')
    ..aOS(8, 'buriedPatronymic')
    ..aOS(9, 'nationality')
    ..aOS(10, 'information')
    ..aOS(11, 'relativeName')
    ..aOS(12, 'relativeSurname')
    ..aOS(13, 'relativePatronymic')
    ..aOS(14, 'relativePhone')
    ..aOM<$6.Subsector>(15, 'subsector', subBuilder: $6.Subsector.create)
    ..aOS(16, 'row')
    ..aOS(17, 'place')
    ..aOM<$3.User>(18, 'user', subBuilder: $3.User.create)
    ..a<$core.int>(19, 'status', $pb.PbFieldType.OU3)
    ..pc<$4.Coordinate>(20, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  Burial._() : super();
  factory Burial() => create();
  factory Burial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Burial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Burial clone() => Burial()..mergeFromMessage(this);
  Burial copyWith(void Function(Burial) updates) => super.copyWith((message) => updates(message as Burial));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Burial create() => Burial._();
  Burial createEmptyInstance() => create();
  static $pb.PbList<Burial> createRepeated() => $pb.PbList<Burial>();
  @$core.pragma('dart2js:noInline')
  static Burial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Burial>(create);
  static Burial _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get createdBy => $_getIZ(1);
  @$pb.TagNumber(2)
  set createdBy($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedBy() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get editedBy => $_getIZ(2);
  @$pb.TagNumber(3)
  set editedBy($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEditedBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearEditedBy() => clearField(3);

  @$pb.TagNumber(4)
  $8.Timestamp get date => $_getN(3);
  @$pb.TagNumber(4)
  set date($8.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);
  @$pb.TagNumber(4)
  $8.Timestamp ensureDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $8.Timestamp get birthdate => $_getN(4);
  @$pb.TagNumber(5)
  set birthdate($8.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBirthdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearBirthdate() => clearField(5);
  @$pb.TagNumber(5)
  $8.Timestamp ensureBirthdate() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get buriedName => $_getSZ(5);
  @$pb.TagNumber(6)
  set buriedName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBuriedName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBuriedName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get buriedSurname => $_getSZ(6);
  @$pb.TagNumber(7)
  set buriedSurname($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBuriedSurname() => $_has(6);
  @$pb.TagNumber(7)
  void clearBuriedSurname() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get buriedPatronymic => $_getSZ(7);
  @$pb.TagNumber(8)
  set buriedPatronymic($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBuriedPatronymic() => $_has(7);
  @$pb.TagNumber(8)
  void clearBuriedPatronymic() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get nationality => $_getSZ(8);
  @$pb.TagNumber(9)
  set nationality($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasNationality() => $_has(8);
  @$pb.TagNumber(9)
  void clearNationality() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get information => $_getSZ(9);
  @$pb.TagNumber(10)
  set information($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasInformation() => $_has(9);
  @$pb.TagNumber(10)
  void clearInformation() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get relativeName => $_getSZ(10);
  @$pb.TagNumber(11)
  set relativeName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRelativeName() => $_has(10);
  @$pb.TagNumber(11)
  void clearRelativeName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get relativeSurname => $_getSZ(11);
  @$pb.TagNumber(12)
  set relativeSurname($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRelativeSurname() => $_has(11);
  @$pb.TagNumber(12)
  void clearRelativeSurname() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get relativePatronymic => $_getSZ(12);
  @$pb.TagNumber(13)
  set relativePatronymic($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRelativePatronymic() => $_has(12);
  @$pb.TagNumber(13)
  void clearRelativePatronymic() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get relativePhone => $_getSZ(13);
  @$pb.TagNumber(14)
  set relativePhone($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRelativePhone() => $_has(13);
  @$pb.TagNumber(14)
  void clearRelativePhone() => clearField(14);

  @$pb.TagNumber(15)
  $6.Subsector get subsector => $_getN(14);
  @$pb.TagNumber(15)
  set subsector($6.Subsector v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSubsector() => $_has(14);
  @$pb.TagNumber(15)
  void clearSubsector() => clearField(15);
  @$pb.TagNumber(15)
  $6.Subsector ensureSubsector() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get row => $_getSZ(15);
  @$pb.TagNumber(16)
  set row($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasRow() => $_has(15);
  @$pb.TagNumber(16)
  void clearRow() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get place => $_getSZ(16);
  @$pb.TagNumber(17)
  set place($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPlace() => $_has(16);
  @$pb.TagNumber(17)
  void clearPlace() => clearField(17);

  @$pb.TagNumber(18)
  $3.User get user => $_getN(17);
  @$pb.TagNumber(18)
  set user($3.User v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasUser() => $_has(17);
  @$pb.TagNumber(18)
  void clearUser() => clearField(18);
  @$pb.TagNumber(18)
  $3.User ensureUser() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.int get status => $_getIZ(18);
  @$pb.TagNumber(19)
  set status($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasStatus() => $_has(18);
  @$pb.TagNumber(19)
  void clearStatus() => clearField(19);

  @$pb.TagNumber(20)
  $core.List<$4.Coordinate> get coordinates => $_getList(19);
}

class AdminBurialsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminBurialsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  AdminBurialsRequest._() : super();
  factory AdminBurialsRequest() => create();
  factory AdminBurialsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminBurialsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminBurialsRequest clone() => AdminBurialsRequest()..mergeFromMessage(this);
  AdminBurialsRequest copyWith(void Function(AdminBurialsRequest) updates) => super.copyWith((message) => updates(message as AdminBurialsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminBurialsRequest create() => AdminBurialsRequest._();
  AdminBurialsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminBurialsRequest> createRepeated() => $pb.PbList<AdminBurialsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminBurialsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminBurialsRequest>(create);
  static AdminBurialsRequest _defaultInstance;

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

class AdminBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminBurialRequest._() : super();
  factory AdminBurialRequest() => create();
  factory AdminBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminBurialRequest clone() => AdminBurialRequest()..mergeFromMessage(this);
  AdminBurialRequest copyWith(void Function(AdminBurialRequest) updates) => super.copyWith((message) => updates(message as AdminBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminBurialRequest create() => AdminBurialRequest._();
  AdminBurialRequest createEmptyInstance() => create();
  static $pb.PbList<AdminBurialRequest> createRepeated() => $pb.PbList<AdminBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminBurialRequest>(create);
  static AdminBurialRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOM<$8.Timestamp>(2, 'birthdate', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(3, 'date', subBuilder: $8.Timestamp.create)
    ..aOS(4, 'buriedName')
    ..aOS(5, 'buriedSurname')
    ..aOS(6, 'buriedPatronymic')
    ..aOS(7, 'nationality')
    ..aOS(8, 'information')
    ..aOS(9, 'relativeName')
    ..aOS(10, 'relativeSurname')
    ..aOS(11, 'relativePatronymic')
    ..aOS(12, 'relativePhone')
    ..a<$core.int>(13, 'subsectorId', $pb.PbFieldType.OU3)
    ..aOS(14, 'row')
    ..aOS(15, 'place')
    ..pc<$4.Coordinate>(16, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  AdminEditBurialRequest._() : super();
  factory AdminEditBurialRequest() => create();
  factory AdminEditBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditBurialRequest clone() => AdminEditBurialRequest()..mergeFromMessage(this);
  AdminEditBurialRequest copyWith(void Function(AdminEditBurialRequest) updates) => super.copyWith((message) => updates(message as AdminEditBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditBurialRequest create() => AdminEditBurialRequest._();
  AdminEditBurialRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditBurialRequest> createRepeated() => $pb.PbList<AdminEditBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditBurialRequest>(create);
  static AdminEditBurialRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $8.Timestamp get birthdate => $_getN(1);
  @$pb.TagNumber(2)
  set birthdate($8.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBirthdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearBirthdate() => clearField(2);
  @$pb.TagNumber(2)
  $8.Timestamp ensureBirthdate() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($8.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $8.Timestamp ensureDate() => $_ensure(2);

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
  $core.String get nationality => $_getSZ(6);
  @$pb.TagNumber(7)
  set nationality($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNationality() => $_has(6);
  @$pb.TagNumber(7)
  void clearNationality() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get information => $_getSZ(7);
  @$pb.TagNumber(8)
  set information($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasInformation() => $_has(7);
  @$pb.TagNumber(8)
  void clearInformation() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get relativeName => $_getSZ(8);
  @$pb.TagNumber(9)
  set relativeName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRelativeName() => $_has(8);
  @$pb.TagNumber(9)
  void clearRelativeName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get relativeSurname => $_getSZ(9);
  @$pb.TagNumber(10)
  set relativeSurname($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRelativeSurname() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeSurname() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get relativePatronymic => $_getSZ(10);
  @$pb.TagNumber(11)
  set relativePatronymic($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRelativePatronymic() => $_has(10);
  @$pb.TagNumber(11)
  void clearRelativePatronymic() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get relativePhone => $_getSZ(11);
  @$pb.TagNumber(12)
  set relativePhone($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRelativePhone() => $_has(11);
  @$pb.TagNumber(12)
  void clearRelativePhone() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get subsectorId => $_getIZ(12);
  @$pb.TagNumber(13)
  set subsectorId($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSubsectorId() => $_has(12);
  @$pb.TagNumber(13)
  void clearSubsectorId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get row => $_getSZ(13);
  @$pb.TagNumber(14)
  set row($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRow() => $_has(13);
  @$pb.TagNumber(14)
  void clearRow() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get place => $_getSZ(14);
  @$pb.TagNumber(15)
  set place($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPlace() => $_has(14);
  @$pb.TagNumber(15)
  void clearPlace() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$4.Coordinate> get coordinates => $_getList(15);
}

class AdminDeleteBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..aOS(7, 'filter')
    ..hasRequiredFields = false
  ;

  AdminDeleteBurialRequest._() : super();
  factory AdminDeleteBurialRequest() => create();
  factory AdminDeleteBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteBurialRequest clone() => AdminDeleteBurialRequest()..mergeFromMessage(this);
  AdminDeleteBurialRequest copyWith(void Function(AdminDeleteBurialRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteBurialRequest create() => AdminDeleteBurialRequest._();
  AdminDeleteBurialRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteBurialRequest> createRepeated() => $pb.PbList<AdminDeleteBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteBurialRequest>(create);
  static AdminDeleteBurialRequest _defaultInstance;

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

class BurialSearchRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BurialSearchRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'surname')
    ..aOS(3, 'patronymic')
    ..aOS(4, 'year')
    ..a<$core.int>(5, 'cemeteryId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  BurialSearchRequest._() : super();
  factory BurialSearchRequest() => create();
  factory BurialSearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BurialSearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BurialSearchRequest clone() => BurialSearchRequest()..mergeFromMessage(this);
  BurialSearchRequest copyWith(void Function(BurialSearchRequest) updates) => super.copyWith((message) => updates(message as BurialSearchRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BurialSearchRequest create() => BurialSearchRequest._();
  BurialSearchRequest createEmptyInstance() => create();
  static $pb.PbList<BurialSearchRequest> createRepeated() => $pb.PbList<BurialSearchRequest>();
  @$core.pragma('dart2js:noInline')
  static BurialSearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BurialSearchRequest>(create);
  static BurialSearchRequest _defaultInstance;

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
  $core.String get year => $_getSZ(3);
  @$pb.TagNumber(4)
  set year($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasYear() => $_has(3);
  @$pb.TagNumber(4)
  void clearYear() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cemeteryId => $_getIZ(4);
  @$pb.TagNumber(5)
  set cemeteryId($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCemeteryId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCemeteryId() => clearField(5);
}

class AdminBurialsAutocompleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminBurialsAutocompleteRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'sectors')
    ..hasRequiredFields = false
  ;

  AdminBurialsAutocompleteRequest._() : super();
  factory AdminBurialsAutocompleteRequest() => create();
  factory AdminBurialsAutocompleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminBurialsAutocompleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminBurialsAutocompleteRequest clone() => AdminBurialsAutocompleteRequest()..mergeFromMessage(this);
  AdminBurialsAutocompleteRequest copyWith(void Function(AdminBurialsAutocompleteRequest) updates) => super.copyWith((message) => updates(message as AdminBurialsAutocompleteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminBurialsAutocompleteRequest create() => AdminBurialsAutocompleteRequest._();
  AdminBurialsAutocompleteRequest createEmptyInstance() => create();
  static $pb.PbList<AdminBurialsAutocompleteRequest> createRepeated() => $pb.PbList<AdminBurialsAutocompleteRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminBurialsAutocompleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminBurialsAutocompleteRequest>(create);
  static AdminBurialsAutocompleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sectors => $_getSZ(0);
  @$pb.TagNumber(1)
  set sectors($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSectors() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectors() => clearField(1);
}

class AdminNewBurialsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewBurialsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  AdminNewBurialsRequest._() : super();
  factory AdminNewBurialsRequest() => create();
  factory AdminNewBurialsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewBurialsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewBurialsRequest clone() => AdminNewBurialsRequest()..mergeFromMessage(this);
  AdminNewBurialsRequest copyWith(void Function(AdminNewBurialsRequest) updates) => super.copyWith((message) => updates(message as AdminNewBurialsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialsRequest create() => AdminNewBurialsRequest._();
  AdminNewBurialsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminNewBurialsRequest> createRepeated() => $pb.PbList<AdminNewBurialsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewBurialsRequest>(create);
  static AdminNewBurialsRequest _defaultInstance;

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

class AdminNewBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminNewBurialRequest._() : super();
  factory AdminNewBurialRequest() => create();
  factory AdminNewBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewBurialRequest clone() => AdminNewBurialRequest()..mergeFromMessage(this);
  AdminNewBurialRequest copyWith(void Function(AdminNewBurialRequest) updates) => super.copyWith((message) => updates(message as AdminNewBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialRequest create() => AdminNewBurialRequest._();
  AdminNewBurialRequest createEmptyInstance() => create();
  static $pb.PbList<AdminNewBurialRequest> createRepeated() => $pb.PbList<AdminNewBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewBurialRequest>(create);
  static AdminNewBurialRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminNewEditBurialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewEditBurialRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOM<$8.Timestamp>(2, 'birthdate', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(3, 'date', subBuilder: $8.Timestamp.create)
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

  AdminNewEditBurialRequest._() : super();
  factory AdminNewEditBurialRequest() => create();
  factory AdminNewEditBurialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewEditBurialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewEditBurialRequest clone() => AdminNewEditBurialRequest()..mergeFromMessage(this);
  AdminNewEditBurialRequest copyWith(void Function(AdminNewEditBurialRequest) updates) => super.copyWith((message) => updates(message as AdminNewEditBurialRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewEditBurialRequest create() => AdminNewEditBurialRequest._();
  AdminNewEditBurialRequest createEmptyInstance() => create();
  static $pb.PbList<AdminNewEditBurialRequest> createRepeated() => $pb.PbList<AdminNewEditBurialRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminNewEditBurialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewEditBurialRequest>(create);
  static AdminNewEditBurialRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $8.Timestamp get birthdate => $_getN(1);
  @$pb.TagNumber(2)
  set birthdate($8.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBirthdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearBirthdate() => clearField(2);
  @$pb.TagNumber(2)
  $8.Timestamp ensureBirthdate() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($8.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $8.Timestamp ensureDate() => $_ensure(2);

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

class AdminNewBurialSetStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewBurialSetStateRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'Status', $pb.PbFieldType.OU3, protoName: 'Status')
    ..a<$fixnum.Int64>(2, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AdminNewBurialSetStateRequest._() : super();
  factory AdminNewBurialSetStateRequest() => create();
  factory AdminNewBurialSetStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewBurialSetStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewBurialSetStateRequest clone() => AdminNewBurialSetStateRequest()..mergeFromMessage(this);
  AdminNewBurialSetStateRequest copyWith(void Function(AdminNewBurialSetStateRequest) updates) => super.copyWith((message) => updates(message as AdminNewBurialSetStateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialSetStateRequest create() => AdminNewBurialSetStateRequest._();
  AdminNewBurialSetStateRequest createEmptyInstance() => create();
  static $pb.PbList<AdminNewBurialSetStateRequest> createRepeated() => $pb.PbList<AdminNewBurialSetStateRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialSetStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewBurialSetStateRequest>(create);
  static AdminNewBurialSetStateRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class AdminBurialsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminBurialsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Burial>(1, 'burials', $pb.PbFieldType.PM, subBuilder: Burial.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminBurialsResponse._() : super();
  factory AdminBurialsResponse() => create();
  factory AdminBurialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminBurialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminBurialsResponse clone() => AdminBurialsResponse()..mergeFromMessage(this);
  AdminBurialsResponse copyWith(void Function(AdminBurialsResponse) updates) => super.copyWith((message) => updates(message as AdminBurialsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminBurialsResponse create() => AdminBurialsResponse._();
  AdminBurialsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminBurialsResponse> createRepeated() => $pb.PbList<AdminBurialsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminBurialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminBurialsResponse>(create);
  static AdminBurialsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Burial> get burials => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class BurialsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BurialsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Burial>(1, 'burials', $pb.PbFieldType.PM, subBuilder: Burial.create)
    ..hasRequiredFields = false
  ;

  BurialsResponse._() : super();
  factory BurialsResponse() => create();
  factory BurialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BurialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BurialsResponse clone() => BurialsResponse()..mergeFromMessage(this);
  BurialsResponse copyWith(void Function(BurialsResponse) updates) => super.copyWith((message) => updates(message as BurialsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BurialsResponse create() => BurialsResponse._();
  BurialsResponse createEmptyInstance() => create();
  static $pb.PbList<BurialsResponse> createRepeated() => $pb.PbList<BurialsResponse>();
  @$core.pragma('dart2js:noInline')
  static BurialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BurialsResponse>(create);
  static BurialsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Burial> get burials => $_getList(0);
}

class AdminBurialResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminBurialResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Burial>(1, 'burial', subBuilder: Burial.create)
    ..hasRequiredFields = false
  ;

  AdminBurialResponse._() : super();
  factory AdminBurialResponse() => create();
  factory AdminBurialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminBurialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminBurialResponse clone() => AdminBurialResponse()..mergeFromMessage(this);
  AdminBurialResponse copyWith(void Function(AdminBurialResponse) updates) => super.copyWith((message) => updates(message as AdminBurialResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminBurialResponse create() => AdminBurialResponse._();
  AdminBurialResponse createEmptyInstance() => create();
  static $pb.PbList<AdminBurialResponse> createRepeated() => $pb.PbList<AdminBurialResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminBurialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminBurialResponse>(create);
  static AdminBurialResponse _defaultInstance;

  @$pb.TagNumber(1)
  Burial get burial => $_getN(0);
  @$pb.TagNumber(1)
  set burial(Burial v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBurial() => $_has(0);
  @$pb.TagNumber(1)
  void clearBurial() => clearField(1);
  @$pb.TagNumber(1)
  Burial ensureBurial() => $_ensure(0);
}

class AdminBurialsAutocompleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminBurialsAutocompleteResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$6.Subsector>(1, 'subsectors', $pb.PbFieldType.PM, subBuilder: $6.Subsector.create)
    ..hasRequiredFields = false
  ;

  AdminBurialsAutocompleteResponse._() : super();
  factory AdminBurialsAutocompleteResponse() => create();
  factory AdminBurialsAutocompleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminBurialsAutocompleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminBurialsAutocompleteResponse clone() => AdminBurialsAutocompleteResponse()..mergeFromMessage(this);
  AdminBurialsAutocompleteResponse copyWith(void Function(AdminBurialsAutocompleteResponse) updates) => super.copyWith((message) => updates(message as AdminBurialsAutocompleteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminBurialsAutocompleteResponse create() => AdminBurialsAutocompleteResponse._();
  AdminBurialsAutocompleteResponse createEmptyInstance() => create();
  static $pb.PbList<AdminBurialsAutocompleteResponse> createRepeated() => $pb.PbList<AdminBurialsAutocompleteResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminBurialsAutocompleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminBurialsAutocompleteResponse>(create);
  static AdminBurialsAutocompleteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.Subsector> get subsectors => $_getList(0);
}

class AdminNewBurialsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewBurialsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Burial>(1, 'burials', $pb.PbFieldType.PM, subBuilder: Burial.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminNewBurialsResponse._() : super();
  factory AdminNewBurialsResponse() => create();
  factory AdminNewBurialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewBurialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewBurialsResponse clone() => AdminNewBurialsResponse()..mergeFromMessage(this);
  AdminNewBurialsResponse copyWith(void Function(AdminNewBurialsResponse) updates) => super.copyWith((message) => updates(message as AdminNewBurialsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialsResponse create() => AdminNewBurialsResponse._();
  AdminNewBurialsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminNewBurialsResponse> createRepeated() => $pb.PbList<AdminNewBurialsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewBurialsResponse>(create);
  static AdminNewBurialsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Burial> get burials => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminNewBurialResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewBurialResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Burial>(1, 'burial', subBuilder: Burial.create)
    ..hasRequiredFields = false
  ;

  AdminNewBurialResponse._() : super();
  factory AdminNewBurialResponse() => create();
  factory AdminNewBurialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewBurialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewBurialResponse clone() => AdminNewBurialResponse()..mergeFromMessage(this);
  AdminNewBurialResponse copyWith(void Function(AdminNewBurialResponse) updates) => super.copyWith((message) => updates(message as AdminNewBurialResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialResponse create() => AdminNewBurialResponse._();
  AdminNewBurialResponse createEmptyInstance() => create();
  static $pb.PbList<AdminNewBurialResponse> createRepeated() => $pb.PbList<AdminNewBurialResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminNewBurialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewBurialResponse>(create);
  static AdminNewBurialResponse _defaultInstance;

  @$pb.TagNumber(1)
  Burial get burial => $_getN(0);
  @$pb.TagNumber(1)
  set burial(Burial v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBurial() => $_has(0);
  @$pb.TagNumber(1)
  void clearBurial() => clearField(1);
  @$pb.TagNumber(1)
  Burial ensureBurial() => $_ensure(0);
}

