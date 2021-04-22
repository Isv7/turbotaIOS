///
//  Generated code. Do not modify.
//  source: subsector.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'sector.pb.dart' as $5;
import 'user.pb.dart' as $3;
import 'cemetery.pb.dart' as $4;
import 'google/protobuf/timestamp.pb.dart' as $7;

class Subsector extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Subsector', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'editedBy', $pb.PbFieldType.OU3)
    ..aOS(3, 'name')
    ..aOM<$5.Sector>(4, 'sector', subBuilder: $5.Sector.create)
    ..aOM<$3.User>(5, 'user', subBuilder: $3.User.create)
    ..a<$core.int>(6, 'burialsNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'rowsNum', $pb.PbFieldType.OU3)
    ..pc<$4.Coordinate>(8, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..aOB(9, 'burialsComputed')
    ..pc<OtherSubsector>(10, 'otherSubsectors', $pb.PbFieldType.PM, subBuilder: OtherSubsector.create)
    ..pc<$5.Sector>(11, 'sectors', $pb.PbFieldType.PM, subBuilder: $5.Sector.create)
    ..pc<Row>(12, 'rows', $pb.PbFieldType.PM, subBuilder: Row.create)
    ..hasRequiredFields = false
  ;

  Subsector._() : super();
  factory Subsector() => create();
  factory Subsector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subsector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Subsector clone() => Subsector()..mergeFromMessage(this);
  Subsector copyWith(void Function(Subsector) updates) => super.copyWith((message) => updates(message as Subsector));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Subsector create() => Subsector._();
  Subsector createEmptyInstance() => create();
  static $pb.PbList<Subsector> createRepeated() => $pb.PbList<Subsector>();
  @$core.pragma('dart2js:noInline')
  static Subsector getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subsector>(create);
  static Subsector _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get editedBy => $_getIZ(1);
  @$pb.TagNumber(2)
  set editedBy($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEditedBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearEditedBy() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $5.Sector get sector => $_getN(3);
  @$pb.TagNumber(4)
  set sector($5.Sector v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSector() => $_has(3);
  @$pb.TagNumber(4)
  void clearSector() => clearField(4);
  @$pb.TagNumber(4)
  $5.Sector ensureSector() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.User get user => $_getN(4);
  @$pb.TagNumber(5)
  set user($3.User v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(4);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);
  @$pb.TagNumber(5)
  $3.User ensureUser() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get burialsNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set burialsNum($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBurialsNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearBurialsNum() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get rowsNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set rowsNum($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRowsNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearRowsNum() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$4.Coordinate> get coordinates => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get burialsComputed => $_getBF(8);
  @$pb.TagNumber(9)
  set burialsComputed($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBurialsComputed() => $_has(8);
  @$pb.TagNumber(9)
  void clearBurialsComputed() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<OtherSubsector> get otherSubsectors => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$5.Sector> get sectors => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<Row> get rows => $_getList(11);
}

class OtherSubsector extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OtherSubsector', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..pc<$4.Coordinate>(2, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  OtherSubsector._() : super();
  factory OtherSubsector() => create();
  factory OtherSubsector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtherSubsector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OtherSubsector clone() => OtherSubsector()..mergeFromMessage(this);
  OtherSubsector copyWith(void Function(OtherSubsector) updates) => super.copyWith((message) => updates(message as OtherSubsector));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtherSubsector create() => OtherSubsector._();
  OtherSubsector createEmptyInstance() => create();
  static $pb.PbList<OtherSubsector> createRepeated() => $pb.PbList<OtherSubsector>();
  @$core.pragma('dart2js:noInline')
  static OtherSubsector getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtherSubsector>(create);
  static OtherSubsector _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$4.Coordinate> get coordinates => $_getList(1);
}

class Row extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Row', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..pc<RowBurial>(2, 'burials', $pb.PbFieldType.PM, subBuilder: RowBurial.create)
    ..hasRequiredFields = false
  ;

  Row._() : super();
  factory Row() => create();
  factory Row.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Row.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Row clone() => Row()..mergeFromMessage(this);
  Row copyWith(void Function(Row) updates) => super.copyWith((message) => updates(message as Row));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Row create() => Row._();
  Row createEmptyInstance() => create();
  static $pb.PbList<Row> createRepeated() => $pb.PbList<Row>();
  @$core.pragma('dart2js:noInline')
  static Row getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Row>(create);
  static Row _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<RowBurial> get burials => $_getList(1);
}

class RowBurial extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RowBurial', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOM<$7.Timestamp>(2, 'date', subBuilder: $7.Timestamp.create)
    ..aOM<$7.Timestamp>(3, 'birthdate', subBuilder: $7.Timestamp.create)
    ..aOS(4, 'buriedName')
    ..aOS(5, 'buriedSurname')
    ..aOS(6, 'buriedPatronymic')
    ..aOS(7, 'place')
    ..pc<$4.Coordinate>(8, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  RowBurial._() : super();
  factory RowBurial() => create();
  factory RowBurial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RowBurial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RowBurial clone() => RowBurial()..mergeFromMessage(this);
  RowBurial copyWith(void Function(RowBurial) updates) => super.copyWith((message) => updates(message as RowBurial));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RowBurial create() => RowBurial._();
  RowBurial createEmptyInstance() => create();
  static $pb.PbList<RowBurial> createRepeated() => $pb.PbList<RowBurial>();
  @$core.pragma('dart2js:noInline')
  static RowBurial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RowBurial>(create);
  static RowBurial _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $7.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($7.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $7.Timestamp ensureDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.Timestamp get birthdate => $_getN(2);
  @$pb.TagNumber(3)
  set birthdate($7.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthdate() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthdate() => clearField(3);
  @$pb.TagNumber(3)
  $7.Timestamp ensureBirthdate() => $_ensure(2);

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
  $core.String get place => $_getSZ(6);
  @$pb.TagNumber(7)
  set place($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlace() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlace() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$4.Coordinate> get coordinates => $_getList(7);
}

class AdminSubsectorsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSubsectorsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  AdminSubsectorsRequest._() : super();
  factory AdminSubsectorsRequest() => create();
  factory AdminSubsectorsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSubsectorsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSubsectorsRequest clone() => AdminSubsectorsRequest()..mergeFromMessage(this);
  AdminSubsectorsRequest copyWith(void Function(AdminSubsectorsRequest) updates) => super.copyWith((message) => updates(message as AdminSubsectorsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsRequest create() => AdminSubsectorsRequest._();
  AdminSubsectorsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSubsectorsRequest> createRepeated() => $pb.PbList<AdminSubsectorsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSubsectorsRequest>(create);
  static AdminSubsectorsRequest _defaultInstance;

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

class AdminSubsectorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSubsectorRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminSubsectorRequest._() : super();
  factory AdminSubsectorRequest() => create();
  factory AdminSubsectorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSubsectorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSubsectorRequest clone() => AdminSubsectorRequest()..mergeFromMessage(this);
  AdminSubsectorRequest copyWith(void Function(AdminSubsectorRequest) updates) => super.copyWith((message) => updates(message as AdminSubsectorRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorRequest create() => AdminSubsectorRequest._();
  AdminSubsectorRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSubsectorRequest> createRepeated() => $pb.PbList<AdminSubsectorRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSubsectorRequest>(create);
  static AdminSubsectorRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditSubsectorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditSubsectorRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'sectorId', $pb.PbFieldType.OU3)
    ..pc<$4.Coordinate>(4, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  AdminEditSubsectorRequest._() : super();
  factory AdminEditSubsectorRequest() => create();
  factory AdminEditSubsectorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditSubsectorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditSubsectorRequest clone() => AdminEditSubsectorRequest()..mergeFromMessage(this);
  AdminEditSubsectorRequest copyWith(void Function(AdminEditSubsectorRequest) updates) => super.copyWith((message) => updates(message as AdminEditSubsectorRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditSubsectorRequest create() => AdminEditSubsectorRequest._();
  AdminEditSubsectorRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditSubsectorRequest> createRepeated() => $pb.PbList<AdminEditSubsectorRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditSubsectorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditSubsectorRequest>(create);
  static AdminEditSubsectorRequest _defaultInstance;

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
  $core.int get sectorId => $_getIZ(2);
  @$pb.TagNumber(3)
  set sectorId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSectorId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSectorId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$4.Coordinate> get coordinates => $_getList(3);
}

class AdminSaveSubsectorBurialsCoordinatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSaveSubsectorBurialsCoordinatesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'data')
    ..hasRequiredFields = false
  ;

  AdminSaveSubsectorBurialsCoordinatesRequest._() : super();
  factory AdminSaveSubsectorBurialsCoordinatesRequest() => create();
  factory AdminSaveSubsectorBurialsCoordinatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSaveSubsectorBurialsCoordinatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSaveSubsectorBurialsCoordinatesRequest clone() => AdminSaveSubsectorBurialsCoordinatesRequest()..mergeFromMessage(this);
  AdminSaveSubsectorBurialsCoordinatesRequest copyWith(void Function(AdminSaveSubsectorBurialsCoordinatesRequest) updates) => super.copyWith((message) => updates(message as AdminSaveSubsectorBurialsCoordinatesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSaveSubsectorBurialsCoordinatesRequest create() => AdminSaveSubsectorBurialsCoordinatesRequest._();
  AdminSaveSubsectorBurialsCoordinatesRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSaveSubsectorBurialsCoordinatesRequest> createRepeated() => $pb.PbList<AdminSaveSubsectorBurialsCoordinatesRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSaveSubsectorBurialsCoordinatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSaveSubsectorBurialsCoordinatesRequest>(create);
  static AdminSaveSubsectorBurialsCoordinatesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class AdminDeleteSubsectorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteSubsectorRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..aOS(7, 'filter')
    ..hasRequiredFields = false
  ;

  AdminDeleteSubsectorRequest._() : super();
  factory AdminDeleteSubsectorRequest() => create();
  factory AdminDeleteSubsectorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteSubsectorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteSubsectorRequest clone() => AdminDeleteSubsectorRequest()..mergeFromMessage(this);
  AdminDeleteSubsectorRequest copyWith(void Function(AdminDeleteSubsectorRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteSubsectorRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteSubsectorRequest create() => AdminDeleteSubsectorRequest._();
  AdminDeleteSubsectorRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteSubsectorRequest> createRepeated() => $pb.PbList<AdminDeleteSubsectorRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteSubsectorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteSubsectorRequest>(create);
  static AdminDeleteSubsectorRequest _defaultInstance;

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

class AdminSectorSubsectorsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSectorSubsectorsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'sectorId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminSectorSubsectorsRequest._() : super();
  factory AdminSectorSubsectorsRequest() => create();
  factory AdminSectorSubsectorsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSectorSubsectorsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSectorSubsectorsRequest clone() => AdminSectorSubsectorsRequest()..mergeFromMessage(this);
  AdminSectorSubsectorsRequest copyWith(void Function(AdminSectorSubsectorsRequest) updates) => super.copyWith((message) => updates(message as AdminSectorSubsectorsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSectorSubsectorsRequest create() => AdminSectorSubsectorsRequest._();
  AdminSectorSubsectorsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSectorSubsectorsRequest> createRepeated() => $pb.PbList<AdminSectorSubsectorsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSectorSubsectorsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSectorSubsectorsRequest>(create);
  static AdminSectorSubsectorsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sectorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sectorId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSectorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectorId() => clearField(1);
}

class AdminSubsectorsAutocompleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSubsectorsAutocompleteRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'cemeteries')
    ..hasRequiredFields = false
  ;

  AdminSubsectorsAutocompleteRequest._() : super();
  factory AdminSubsectorsAutocompleteRequest() => create();
  factory AdminSubsectorsAutocompleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSubsectorsAutocompleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSubsectorsAutocompleteRequest clone() => AdminSubsectorsAutocompleteRequest()..mergeFromMessage(this);
  AdminSubsectorsAutocompleteRequest copyWith(void Function(AdminSubsectorsAutocompleteRequest) updates) => super.copyWith((message) => updates(message as AdminSubsectorsAutocompleteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsAutocompleteRequest create() => AdminSubsectorsAutocompleteRequest._();
  AdminSubsectorsAutocompleteRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSubsectorsAutocompleteRequest> createRepeated() => $pb.PbList<AdminSubsectorsAutocompleteRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsAutocompleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSubsectorsAutocompleteRequest>(create);
  static AdminSubsectorsAutocompleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cemeteries => $_getSZ(0);
  @$pb.TagNumber(1)
  set cemeteries($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCemeteries() => $_has(0);
  @$pb.TagNumber(1)
  void clearCemeteries() => clearField(1);
}

class AdminSubsectorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSubsectorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Subsector>(1, 'subsectors', $pb.PbFieldType.PM, subBuilder: Subsector.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminSubsectorsResponse._() : super();
  factory AdminSubsectorsResponse() => create();
  factory AdminSubsectorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSubsectorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSubsectorsResponse clone() => AdminSubsectorsResponse()..mergeFromMessage(this);
  AdminSubsectorsResponse copyWith(void Function(AdminSubsectorsResponse) updates) => super.copyWith((message) => updates(message as AdminSubsectorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsResponse create() => AdminSubsectorsResponse._();
  AdminSubsectorsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminSubsectorsResponse> createRepeated() => $pb.PbList<AdminSubsectorsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSubsectorsResponse>(create);
  static AdminSubsectorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Subsector> get subsectors => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminSubsectorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSubsectorResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Subsector>(1, 'subsector', subBuilder: Subsector.create)
    ..hasRequiredFields = false
  ;

  AdminSubsectorResponse._() : super();
  factory AdminSubsectorResponse() => create();
  factory AdminSubsectorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSubsectorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSubsectorResponse clone() => AdminSubsectorResponse()..mergeFromMessage(this);
  AdminSubsectorResponse copyWith(void Function(AdminSubsectorResponse) updates) => super.copyWith((message) => updates(message as AdminSubsectorResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorResponse create() => AdminSubsectorResponse._();
  AdminSubsectorResponse createEmptyInstance() => create();
  static $pb.PbList<AdminSubsectorResponse> createRepeated() => $pb.PbList<AdminSubsectorResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSubsectorResponse>(create);
  static AdminSubsectorResponse _defaultInstance;

  @$pb.TagNumber(1)
  Subsector get subsector => $_getN(0);
  @$pb.TagNumber(1)
  set subsector(Subsector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubsector() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubsector() => clearField(1);
  @$pb.TagNumber(1)
  Subsector ensureSubsector() => $_ensure(0);
}

class AdminSectorSubsectorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSectorSubsectorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Subsector>(1, 'subsectors', $pb.PbFieldType.PM, subBuilder: Subsector.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminSectorSubsectorsResponse._() : super();
  factory AdminSectorSubsectorsResponse() => create();
  factory AdminSectorSubsectorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSectorSubsectorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSectorSubsectorsResponse clone() => AdminSectorSubsectorsResponse()..mergeFromMessage(this);
  AdminSectorSubsectorsResponse copyWith(void Function(AdminSectorSubsectorsResponse) updates) => super.copyWith((message) => updates(message as AdminSectorSubsectorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSectorSubsectorsResponse create() => AdminSectorSubsectorsResponse._();
  AdminSectorSubsectorsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminSectorSubsectorsResponse> createRepeated() => $pb.PbList<AdminSectorSubsectorsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminSectorSubsectorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSectorSubsectorsResponse>(create);
  static AdminSectorSubsectorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Subsector> get subsectors => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminSubsectorsAutocompleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSubsectorsAutocompleteResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<$5.Sector>(1, 'sectors', $pb.PbFieldType.PM, subBuilder: $5.Sector.create)
    ..hasRequiredFields = false
  ;

  AdminSubsectorsAutocompleteResponse._() : super();
  factory AdminSubsectorsAutocompleteResponse() => create();
  factory AdminSubsectorsAutocompleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSubsectorsAutocompleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSubsectorsAutocompleteResponse clone() => AdminSubsectorsAutocompleteResponse()..mergeFromMessage(this);
  AdminSubsectorsAutocompleteResponse copyWith(void Function(AdminSubsectorsAutocompleteResponse) updates) => super.copyWith((message) => updates(message as AdminSubsectorsAutocompleteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsAutocompleteResponse create() => AdminSubsectorsAutocompleteResponse._();
  AdminSubsectorsAutocompleteResponse createEmptyInstance() => create();
  static $pb.PbList<AdminSubsectorsAutocompleteResponse> createRepeated() => $pb.PbList<AdminSubsectorsAutocompleteResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminSubsectorsAutocompleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSubsectorsAutocompleteResponse>(create);
  static AdminSubsectorsAutocompleteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Sector> get sectors => $_getList(0);
}

