///
//  Generated code. Do not modify.
//  source: cemetery.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'region.pb.dart' as $1;
import 'user.pb.dart' as $3;

class Cemetery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Cemetery', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'editedBy', $pb.PbFieldType.OU3)
    ..aOS(3, 'name')
    ..aOM<$1.City>(4, 'city', subBuilder: $1.City.create)
    ..aOM<$3.User>(5, 'user', subBuilder: $3.User.create)
    ..a<$core.int>(6, 'sectorsNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'subsectorsNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'burialsNum', $pb.PbFieldType.OU3)
    ..p<$core.int>(9, 'editors', $pb.PbFieldType.PU3)
    ..pc<Coordinate>(10, 'coordinates', $pb.PbFieldType.PM, subBuilder: Coordinate.create)
    ..a<$core.int>(11, 'scale', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Cemetery._() : super();
  factory Cemetery() => create();
  factory Cemetery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cemetery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Cemetery clone() => Cemetery()..mergeFromMessage(this);
  Cemetery copyWith(void Function(Cemetery) updates) => super.copyWith((message) => updates(message as Cemetery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cemetery create() => Cemetery._();
  Cemetery createEmptyInstance() => create();
  static $pb.PbList<Cemetery> createRepeated() => $pb.PbList<Cemetery>();
  @$core.pragma('dart2js:noInline')
  static Cemetery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cemetery>(create);
  static Cemetery _defaultInstance;

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
  $1.City get city => $_getN(3);
  @$pb.TagNumber(4)
  set city($1.City v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCity() => $_has(3);
  @$pb.TagNumber(4)
  void clearCity() => clearField(4);
  @$pb.TagNumber(4)
  $1.City ensureCity() => $_ensure(3);

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
  $core.int get sectorsNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set sectorsNum($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSectorsNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearSectorsNum() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get subsectorsNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set subsectorsNum($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSubsectorsNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubsectorsNum() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get burialsNum => $_getIZ(7);
  @$pb.TagNumber(8)
  set burialsNum($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBurialsNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearBurialsNum() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get editors => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<Coordinate> get coordinates => $_getList(9);

  @$pb.TagNumber(11)
  $core.int get scale => $_getIZ(10);
  @$pb.TagNumber(11)
  set scale($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasScale() => $_has(10);
  @$pb.TagNumber(11)
  void clearScale() => clearField(11);
}

class Coordinate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Coordinate', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.double>(1, 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'longitude', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Coordinate._() : super();
  factory Coordinate() => create();
  factory Coordinate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Coordinate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Coordinate clone() => Coordinate()..mergeFromMessage(this);
  Coordinate copyWith(void Function(Coordinate) updates) => super.copyWith((message) => updates(message as Coordinate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Coordinate create() => Coordinate._();
  Coordinate createEmptyInstance() => create();
  static $pb.PbList<Coordinate> createRepeated() => $pb.PbList<Coordinate>();
  @$core.pragma('dart2js:noInline')
  static Coordinate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Coordinate>(create);
  static Coordinate _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);
}

class AdminCemeteriesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCemeteriesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  AdminCemeteriesRequest._() : super();
  factory AdminCemeteriesRequest() => create();
  factory AdminCemeteriesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCemeteriesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCemeteriesRequest clone() => AdminCemeteriesRequest()..mergeFromMessage(this);
  AdminCemeteriesRequest copyWith(void Function(AdminCemeteriesRequest) updates) => super.copyWith((message) => updates(message as AdminCemeteriesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCemeteriesRequest create() => AdminCemeteriesRequest._();
  AdminCemeteriesRequest createEmptyInstance() => create();
  static $pb.PbList<AdminCemeteriesRequest> createRepeated() => $pb.PbList<AdminCemeteriesRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminCemeteriesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCemeteriesRequest>(create);
  static AdminCemeteriesRequest _defaultInstance;

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

class AdminCemeteryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCemeteryRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminCemeteryRequest._() : super();
  factory AdminCemeteryRequest() => create();
  factory AdminCemeteryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCemeteryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCemeteryRequest clone() => AdminCemeteryRequest()..mergeFromMessage(this);
  AdminCemeteryRequest copyWith(void Function(AdminCemeteryRequest) updates) => super.copyWith((message) => updates(message as AdminCemeteryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCemeteryRequest create() => AdminCemeteryRequest._();
  AdminCemeteryRequest createEmptyInstance() => create();
  static $pb.PbList<AdminCemeteryRequest> createRepeated() => $pb.PbList<AdminCemeteryRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminCemeteryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCemeteryRequest>(create);
  static AdminCemeteryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditCemeteryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditCemeteryRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'cityId', $pb.PbFieldType.OU3)
    ..p<$core.int>(4, 'editors', $pb.PbFieldType.PU3)
    ..pc<Coordinate>(5, 'coordinates', $pb.PbFieldType.PM, subBuilder: Coordinate.create)
    ..a<$core.int>(6, 'scale', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminEditCemeteryRequest._() : super();
  factory AdminEditCemeteryRequest() => create();
  factory AdminEditCemeteryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditCemeteryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditCemeteryRequest clone() => AdminEditCemeteryRequest()..mergeFromMessage(this);
  AdminEditCemeteryRequest copyWith(void Function(AdminEditCemeteryRequest) updates) => super.copyWith((message) => updates(message as AdminEditCemeteryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditCemeteryRequest create() => AdminEditCemeteryRequest._();
  AdminEditCemeteryRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditCemeteryRequest> createRepeated() => $pb.PbList<AdminEditCemeteryRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditCemeteryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditCemeteryRequest>(create);
  static AdminEditCemeteryRequest _defaultInstance;

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
  $core.int get cityId => $_getIZ(2);
  @$pb.TagNumber(3)
  set cityId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCityId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCityId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get editors => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Coordinate> get coordinates => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get scale => $_getIZ(5);
  @$pb.TagNumber(6)
  set scale($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasScale() => $_has(5);
  @$pb.TagNumber(6)
  void clearScale() => clearField(6);
}

class AdminDeleteCemeteryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteCemeteryRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..aOS(7, 'filter')
    ..hasRequiredFields = false
  ;

  AdminDeleteCemeteryRequest._() : super();
  factory AdminDeleteCemeteryRequest() => create();
  factory AdminDeleteCemeteryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteCemeteryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteCemeteryRequest clone() => AdminDeleteCemeteryRequest()..mergeFromMessage(this);
  AdminDeleteCemeteryRequest copyWith(void Function(AdminDeleteCemeteryRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteCemeteryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteCemeteryRequest create() => AdminDeleteCemeteryRequest._();
  AdminDeleteCemeteryRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteCemeteryRequest> createRepeated() => $pb.PbList<AdminDeleteCemeteryRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteCemeteryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteCemeteryRequest>(create);
  static AdminDeleteCemeteryRequest _defaultInstance;

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

class AdminCityCemeteriesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCityCemeteriesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cityId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminCityCemeteriesRequest._() : super();
  factory AdminCityCemeteriesRequest() => create();
  factory AdminCityCemeteriesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCityCemeteriesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCityCemeteriesRequest clone() => AdminCityCemeteriesRequest()..mergeFromMessage(this);
  AdminCityCemeteriesRequest copyWith(void Function(AdminCityCemeteriesRequest) updates) => super.copyWith((message) => updates(message as AdminCityCemeteriesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCityCemeteriesRequest create() => AdminCityCemeteriesRequest._();
  AdminCityCemeteriesRequest createEmptyInstance() => create();
  static $pb.PbList<AdminCityCemeteriesRequest> createRepeated() => $pb.PbList<AdminCityCemeteriesRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminCityCemeteriesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCityCemeteriesRequest>(create);
  static AdminCityCemeteriesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cityId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cityId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCityId() => clearField(1);
}

class AdminCemeteriesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCemeteriesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Cemetery>(1, 'cemeteries', $pb.PbFieldType.PM, subBuilder: Cemetery.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminCemeteriesResponse._() : super();
  factory AdminCemeteriesResponse() => create();
  factory AdminCemeteriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCemeteriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCemeteriesResponse clone() => AdminCemeteriesResponse()..mergeFromMessage(this);
  AdminCemeteriesResponse copyWith(void Function(AdminCemeteriesResponse) updates) => super.copyWith((message) => updates(message as AdminCemeteriesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCemeteriesResponse create() => AdminCemeteriesResponse._();
  AdminCemeteriesResponse createEmptyInstance() => create();
  static $pb.PbList<AdminCemeteriesResponse> createRepeated() => $pb.PbList<AdminCemeteriesResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminCemeteriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCemeteriesResponse>(create);
  static AdminCemeteriesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Cemetery> get cemeteries => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminCemeteryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCemeteryResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Cemetery>(1, 'cemetery', subBuilder: Cemetery.create)
    ..hasRequiredFields = false
  ;

  AdminCemeteryResponse._() : super();
  factory AdminCemeteryResponse() => create();
  factory AdminCemeteryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCemeteryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCemeteryResponse clone() => AdminCemeteryResponse()..mergeFromMessage(this);
  AdminCemeteryResponse copyWith(void Function(AdminCemeteryResponse) updates) => super.copyWith((message) => updates(message as AdminCemeteryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCemeteryResponse create() => AdminCemeteryResponse._();
  AdminCemeteryResponse createEmptyInstance() => create();
  static $pb.PbList<AdminCemeteryResponse> createRepeated() => $pb.PbList<AdminCemeteryResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminCemeteryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCemeteryResponse>(create);
  static AdminCemeteryResponse _defaultInstance;

  @$pb.TagNumber(1)
  Cemetery get cemetery => $_getN(0);
  @$pb.TagNumber(1)
  set cemetery(Cemetery v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCemetery() => $_has(0);
  @$pb.TagNumber(1)
  void clearCemetery() => clearField(1);
  @$pb.TagNumber(1)
  Cemetery ensureCemetery() => $_ensure(0);
}

class AdminCityCemeteriesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCityCemeteriesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Cemetery>(1, 'cemeteries', $pb.PbFieldType.PM, subBuilder: Cemetery.create)
    ..hasRequiredFields = false
  ;

  AdminCityCemeteriesResponse._() : super();
  factory AdminCityCemeteriesResponse() => create();
  factory AdminCityCemeteriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCityCemeteriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCityCemeteriesResponse clone() => AdminCityCemeteriesResponse()..mergeFromMessage(this);
  AdminCityCemeteriesResponse copyWith(void Function(AdminCityCemeteriesResponse) updates) => super.copyWith((message) => updates(message as AdminCityCemeteriesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCityCemeteriesResponse create() => AdminCityCemeteriesResponse._();
  AdminCityCemeteriesResponse createEmptyInstance() => create();
  static $pb.PbList<AdminCityCemeteriesResponse> createRepeated() => $pb.PbList<AdminCityCemeteriesResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminCityCemeteriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCityCemeteriesResponse>(create);
  static AdminCityCemeteriesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Cemetery> get cemeteries => $_getList(0);
}

