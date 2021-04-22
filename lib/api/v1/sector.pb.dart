///
//  Generated code. Do not modify.
//  source: sector.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'cemetery.pb.dart' as $4;
import 'user.pb.dart' as $3;

class Sector extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Sector', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'editedBy', $pb.PbFieldType.OU3)
    ..aOS(3, 'name')
    ..aOM<$4.Cemetery>(4, 'cemetery', subBuilder: $4.Cemetery.create)
    ..aOM<$3.User>(5, 'user', subBuilder: $3.User.create)
    ..a<$core.int>(6, 'subsectorsNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'burialsNum', $pb.PbFieldType.OU3)
    ..pc<$4.Coordinate>(8, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  Sector._() : super();
  factory Sector() => create();
  factory Sector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Sector clone() => Sector()..mergeFromMessage(this);
  Sector copyWith(void Function(Sector) updates) => super.copyWith((message) => updates(message as Sector));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sector create() => Sector._();
  Sector createEmptyInstance() => create();
  static $pb.PbList<Sector> createRepeated() => $pb.PbList<Sector>();
  @$core.pragma('dart2js:noInline')
  static Sector getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sector>(create);
  static Sector _defaultInstance;

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
  $4.Cemetery get cemetery => $_getN(3);
  @$pb.TagNumber(4)
  set cemetery($4.Cemetery v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCemetery() => $_has(3);
  @$pb.TagNumber(4)
  void clearCemetery() => clearField(4);
  @$pb.TagNumber(4)
  $4.Cemetery ensureCemetery() => $_ensure(3);

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
  $core.int get subsectorsNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set subsectorsNum($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSubsectorsNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubsectorsNum() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get burialsNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set burialsNum($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBurialsNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearBurialsNum() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$4.Coordinate> get coordinates => $_getList(7);
}

class AdminSectorsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSectorsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..aOS(6, 'filter')
    ..hasRequiredFields = false
  ;

  AdminSectorsRequest._() : super();
  factory AdminSectorsRequest() => create();
  factory AdminSectorsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSectorsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSectorsRequest clone() => AdminSectorsRequest()..mergeFromMessage(this);
  AdminSectorsRequest copyWith(void Function(AdminSectorsRequest) updates) => super.copyWith((message) => updates(message as AdminSectorsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSectorsRequest create() => AdminSectorsRequest._();
  AdminSectorsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSectorsRequest> createRepeated() => $pb.PbList<AdminSectorsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSectorsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSectorsRequest>(create);
  static AdminSectorsRequest _defaultInstance;

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

class AdminSectorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSectorRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminSectorRequest._() : super();
  factory AdminSectorRequest() => create();
  factory AdminSectorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSectorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSectorRequest clone() => AdminSectorRequest()..mergeFromMessage(this);
  AdminSectorRequest copyWith(void Function(AdminSectorRequest) updates) => super.copyWith((message) => updates(message as AdminSectorRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSectorRequest create() => AdminSectorRequest._();
  AdminSectorRequest createEmptyInstance() => create();
  static $pb.PbList<AdminSectorRequest> createRepeated() => $pb.PbList<AdminSectorRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminSectorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSectorRequest>(create);
  static AdminSectorRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditSectorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditSectorRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'cemeteryId', $pb.PbFieldType.OU3)
    ..pc<$4.Coordinate>(4, 'coordinates', $pb.PbFieldType.PM, subBuilder: $4.Coordinate.create)
    ..hasRequiredFields = false
  ;

  AdminEditSectorRequest._() : super();
  factory AdminEditSectorRequest() => create();
  factory AdminEditSectorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditSectorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditSectorRequest clone() => AdminEditSectorRequest()..mergeFromMessage(this);
  AdminEditSectorRequest copyWith(void Function(AdminEditSectorRequest) updates) => super.copyWith((message) => updates(message as AdminEditSectorRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditSectorRequest create() => AdminEditSectorRequest._();
  AdminEditSectorRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditSectorRequest> createRepeated() => $pb.PbList<AdminEditSectorRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditSectorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditSectorRequest>(create);
  static AdminEditSectorRequest _defaultInstance;

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
  $core.int get cemeteryId => $_getIZ(2);
  @$pb.TagNumber(3)
  set cemeteryId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCemeteryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCemeteryId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$4.Coordinate> get coordinates => $_getList(3);
}

class AdminDeleteSectorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteSectorRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..aOS(7, 'filter')
    ..hasRequiredFields = false
  ;

  AdminDeleteSectorRequest._() : super();
  factory AdminDeleteSectorRequest() => create();
  factory AdminDeleteSectorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteSectorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteSectorRequest clone() => AdminDeleteSectorRequest()..mergeFromMessage(this);
  AdminDeleteSectorRequest copyWith(void Function(AdminDeleteSectorRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteSectorRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteSectorRequest create() => AdminDeleteSectorRequest._();
  AdminDeleteSectorRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteSectorRequest> createRepeated() => $pb.PbList<AdminDeleteSectorRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteSectorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteSectorRequest>(create);
  static AdminDeleteSectorRequest _defaultInstance;

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

class AdminCemeterySectorsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCemeterySectorsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cemeteryId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminCemeterySectorsRequest._() : super();
  factory AdminCemeterySectorsRequest() => create();
  factory AdminCemeterySectorsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCemeterySectorsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCemeterySectorsRequest clone() => AdminCemeterySectorsRequest()..mergeFromMessage(this);
  AdminCemeterySectorsRequest copyWith(void Function(AdminCemeterySectorsRequest) updates) => super.copyWith((message) => updates(message as AdminCemeterySectorsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCemeterySectorsRequest create() => AdminCemeterySectorsRequest._();
  AdminCemeterySectorsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminCemeterySectorsRequest> createRepeated() => $pb.PbList<AdminCemeterySectorsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminCemeterySectorsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCemeterySectorsRequest>(create);
  static AdminCemeterySectorsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cemeteryId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cemeteryId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCemeteryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCemeteryId() => clearField(1);
}

class AdminSectorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSectorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Sector>(1, 'sectors', $pb.PbFieldType.PM, subBuilder: Sector.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminSectorsResponse._() : super();
  factory AdminSectorsResponse() => create();
  factory AdminSectorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSectorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSectorsResponse clone() => AdminSectorsResponse()..mergeFromMessage(this);
  AdminSectorsResponse copyWith(void Function(AdminSectorsResponse) updates) => super.copyWith((message) => updates(message as AdminSectorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSectorsResponse create() => AdminSectorsResponse._();
  AdminSectorsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminSectorsResponse> createRepeated() => $pb.PbList<AdminSectorsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminSectorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSectorsResponse>(create);
  static AdminSectorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Sector> get sectors => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminSectorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminSectorResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Sector>(1, 'sector', subBuilder: Sector.create)
    ..hasRequiredFields = false
  ;

  AdminSectorResponse._() : super();
  factory AdminSectorResponse() => create();
  factory AdminSectorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminSectorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminSectorResponse clone() => AdminSectorResponse()..mergeFromMessage(this);
  AdminSectorResponse copyWith(void Function(AdminSectorResponse) updates) => super.copyWith((message) => updates(message as AdminSectorResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminSectorResponse create() => AdminSectorResponse._();
  AdminSectorResponse createEmptyInstance() => create();
  static $pb.PbList<AdminSectorResponse> createRepeated() => $pb.PbList<AdminSectorResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminSectorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminSectorResponse>(create);
  static AdminSectorResponse _defaultInstance;

  @$pb.TagNumber(1)
  Sector get sector => $_getN(0);
  @$pb.TagNumber(1)
  set sector(Sector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSector() => $_has(0);
  @$pb.TagNumber(1)
  void clearSector() => clearField(1);
  @$pb.TagNumber(1)
  Sector ensureSector() => $_ensure(0);
}

class AdminCemeterySectorsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminCemeterySectorsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Sector>(1, 'sectors', $pb.PbFieldType.PM, subBuilder: Sector.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminCemeterySectorsResponse._() : super();
  factory AdminCemeterySectorsResponse() => create();
  factory AdminCemeterySectorsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminCemeterySectorsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminCemeterySectorsResponse clone() => AdminCemeterySectorsResponse()..mergeFromMessage(this);
  AdminCemeterySectorsResponse copyWith(void Function(AdminCemeterySectorsResponse) updates) => super.copyWith((message) => updates(message as AdminCemeterySectorsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminCemeterySectorsResponse create() => AdminCemeterySectorsResponse._();
  AdminCemeterySectorsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminCemeterySectorsResponse> createRepeated() => $pb.PbList<AdminCemeterySectorsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminCemeterySectorsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminCemeterySectorsResponse>(create);
  static AdminCemeterySectorsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Sector> get sectors => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

