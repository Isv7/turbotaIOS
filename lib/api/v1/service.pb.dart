///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Service extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Service', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'type', $pb.PbFieldType.OU3)
    ..aOB(7, 'selected')
    ..aOS(8, 'image')
    ..hasRequiredFields = false
  ;

  Service._() : super();
  factory Service() => create();
  factory Service.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Service.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Service clone() => Service()..mergeFromMessage(this);
  Service copyWith(void Function(Service) updates) => super.copyWith((message) => updates(message as Service));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Service create() => Service._();
  Service createEmptyInstance() => create();
  static $pb.PbList<Service> createRepeated() => $pb.PbList<Service>();
  @$core.pragma('dart2js:noInline')
  static Service getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Service>(create);
  static Service _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get commission => $_getN(4);
  @$pb.TagNumber(5)
  set commission($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommission() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommission() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get selected => $_getBF(6);
  @$pb.TagNumber(7)
  set selected($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSelected() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelected() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get image => $_getSZ(7);
  @$pb.TagNumber(8)
  set image($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasImage() => $_has(7);
  @$pb.TagNumber(8)
  void clearImage() => clearField(8);
}

class NewService extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewService', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'type', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'status', $pb.PbFieldType.OU3)
    ..aOB(8, 'selected')
    ..hasRequiredFields = false
  ;

  NewService._() : super();
  factory NewService() => create();
  factory NewService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewService clone() => NewService()..mergeFromMessage(this);
  NewService copyWith(void Function(NewService) updates) => super.copyWith((message) => updates(message as NewService));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewService create() => NewService._();
  NewService createEmptyInstance() => create();
  static $pb.PbList<NewService> createRepeated() => $pb.PbList<NewService>();
  @$core.pragma('dart2js:noInline')
  static NewService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewService>(create);
  static NewService _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get commission => $_getN(4);
  @$pb.TagNumber(5)
  set commission($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommission() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommission() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get status => $_getIZ(6);
  @$pb.TagNumber(7)
  set status($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get selected => $_getBF(7);
  @$pb.TagNumber(8)
  set selected($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSelected() => $_has(7);
  @$pb.TagNumber(8)
  void clearSelected() => clearField(8);
}

class AdminServicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminServicesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  AdminServicesRequest._() : super();
  factory AdminServicesRequest() => create();
  factory AdminServicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminServicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminServicesRequest clone() => AdminServicesRequest()..mergeFromMessage(this);
  AdminServicesRequest copyWith(void Function(AdminServicesRequest) updates) => super.copyWith((message) => updates(message as AdminServicesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminServicesRequest create() => AdminServicesRequest._();
  AdminServicesRequest createEmptyInstance() => create();
  static $pb.PbList<AdminServicesRequest> createRepeated() => $pb.PbList<AdminServicesRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminServicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminServicesRequest>(create);
  static AdminServicesRequest _defaultInstance;

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

class AdminServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminServiceRequest._() : super();
  factory AdminServiceRequest() => create();
  factory AdminServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminServiceRequest clone() => AdminServiceRequest()..mergeFromMessage(this);
  AdminServiceRequest copyWith(void Function(AdminServiceRequest) updates) => super.copyWith((message) => updates(message as AdminServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminServiceRequest create() => AdminServiceRequest._();
  AdminServiceRequest createEmptyInstance() => create();
  static $pb.PbList<AdminServiceRequest> createRepeated() => $pb.PbList<AdminServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminServiceRequest>(create);
  static AdminServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'type', $pb.PbFieldType.OU3)
    ..aOB(7, 'selected')
    ..hasRequiredFields = false
  ;

  AdminEditServiceRequest._() : super();
  factory AdminEditServiceRequest() => create();
  factory AdminEditServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditServiceRequest clone() => AdminEditServiceRequest()..mergeFromMessage(this);
  AdminEditServiceRequest copyWith(void Function(AdminEditServiceRequest) updates) => super.copyWith((message) => updates(message as AdminEditServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditServiceRequest create() => AdminEditServiceRequest._();
  AdminEditServiceRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditServiceRequest> createRepeated() => $pb.PbList<AdminEditServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditServiceRequest>(create);
  static AdminEditServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get commission => $_getN(4);
  @$pb.TagNumber(5)
  set commission($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommission() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommission() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get selected => $_getBF(6);
  @$pb.TagNumber(7)
  set selected($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSelected() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelected() => clearField(7);
}

class AdminDeleteServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  AdminDeleteServiceRequest._() : super();
  factory AdminDeleteServiceRequest() => create();
  factory AdminDeleteServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteServiceRequest clone() => AdminDeleteServiceRequest()..mergeFromMessage(this);
  AdminDeleteServiceRequest copyWith(void Function(AdminDeleteServiceRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteServiceRequest create() => AdminDeleteServiceRequest._();
  AdminDeleteServiceRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteServiceRequest> createRepeated() => $pb.PbList<AdminDeleteServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteServiceRequest>(create);
  static AdminDeleteServiceRequest _defaultInstance;

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
}

class AdminEditNewServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditNewServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'type', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminEditNewServiceRequest._() : super();
  factory AdminEditNewServiceRequest() => create();
  factory AdminEditNewServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditNewServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditNewServiceRequest clone() => AdminEditNewServiceRequest()..mergeFromMessage(this);
  AdminEditNewServiceRequest copyWith(void Function(AdminEditNewServiceRequest) updates) => super.copyWith((message) => updates(message as AdminEditNewServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditNewServiceRequest create() => AdminEditNewServiceRequest._();
  AdminEditNewServiceRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditNewServiceRequest> createRepeated() => $pb.PbList<AdminEditNewServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditNewServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditNewServiceRequest>(create);
  static AdminEditNewServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get commission => $_getN(4);
  @$pb.TagNumber(5)
  set commission($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommission() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommission() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);
}

class AdminNewServiceSetStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewServiceSetStateRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'Status', $pb.PbFieldType.OU3, protoName: 'Status')
    ..a<$fixnum.Int64>(2, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AdminNewServiceSetStateRequest._() : super();
  factory AdminNewServiceSetStateRequest() => create();
  factory AdminNewServiceSetStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewServiceSetStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewServiceSetStateRequest clone() => AdminNewServiceSetStateRequest()..mergeFromMessage(this);
  AdminNewServiceSetStateRequest copyWith(void Function(AdminNewServiceSetStateRequest) updates) => super.copyWith((message) => updates(message as AdminNewServiceSetStateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewServiceSetStateRequest create() => AdminNewServiceSetStateRequest._();
  AdminNewServiceSetStateRequest createEmptyInstance() => create();
  static $pb.PbList<AdminNewServiceSetStateRequest> createRepeated() => $pb.PbList<AdminNewServiceSetStateRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminNewServiceSetStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewServiceSetStateRequest>(create);
  static AdminNewServiceSetStateRequest _defaultInstance;

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

class EditorServicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorServicesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  EditorServicesRequest._() : super();
  factory EditorServicesRequest() => create();
  factory EditorServicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorServicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorServicesRequest clone() => EditorServicesRequest()..mergeFromMessage(this);
  EditorServicesRequest copyWith(void Function(EditorServicesRequest) updates) => super.copyWith((message) => updates(message as EditorServicesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorServicesRequest create() => EditorServicesRequest._();
  EditorServicesRequest createEmptyInstance() => create();
  static $pb.PbList<EditorServicesRequest> createRepeated() => $pb.PbList<EditorServicesRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorServicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorServicesRequest>(create);
  static EditorServicesRequest _defaultInstance;

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

class EditorServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorServiceRequest._() : super();
  factory EditorServiceRequest() => create();
  factory EditorServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorServiceRequest clone() => EditorServiceRequest()..mergeFromMessage(this);
  EditorServiceRequest copyWith(void Function(EditorServiceRequest) updates) => super.copyWith((message) => updates(message as EditorServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorServiceRequest create() => EditorServiceRequest._();
  EditorServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorServiceRequest> createRepeated() => $pb.PbList<EditorServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorServiceRequest>(create);
  static EditorServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditorEditServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorEditServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'type', $pb.PbFieldType.OU3)
    ..aOS(7, 'image')
    ..hasRequiredFields = false
  ;

  EditorEditServiceRequest._() : super();
  factory EditorEditServiceRequest() => create();
  factory EditorEditServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorEditServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorEditServiceRequest clone() => EditorEditServiceRequest()..mergeFromMessage(this);
  EditorEditServiceRequest copyWith(void Function(EditorEditServiceRequest) updates) => super.copyWith((message) => updates(message as EditorEditServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorEditServiceRequest create() => EditorEditServiceRequest._();
  EditorEditServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorEditServiceRequest> createRepeated() => $pb.PbList<EditorEditServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorEditServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorEditServiceRequest>(create);
  static EditorEditServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get commission => $_getN(4);
  @$pb.TagNumber(5)
  set commission($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommission() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommission() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get image => $_getSZ(6);
  @$pb.TagNumber(7)
  set image($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasImage() => $_has(6);
  @$pb.TagNumber(7)
  void clearImage() => clearField(7);
}

class EditorDeleteServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorDeleteServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  EditorDeleteServiceRequest._() : super();
  factory EditorDeleteServiceRequest() => create();
  factory EditorDeleteServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorDeleteServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorDeleteServiceRequest clone() => EditorDeleteServiceRequest()..mergeFromMessage(this);
  EditorDeleteServiceRequest copyWith(void Function(EditorDeleteServiceRequest) updates) => super.copyWith((message) => updates(message as EditorDeleteServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorDeleteServiceRequest create() => EditorDeleteServiceRequest._();
  EditorDeleteServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorDeleteServiceRequest> createRepeated() => $pb.PbList<EditorDeleteServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorDeleteServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorDeleteServiceRequest>(create);
  static EditorDeleteServiceRequest _defaultInstance;

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
}

class EditorSelectServicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorSelectServicesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..p<$core.int>(1, 'id', $pb.PbFieldType.PU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  EditorSelectServicesRequest._() : super();
  factory EditorSelectServicesRequest() => create();
  factory EditorSelectServicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorSelectServicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorSelectServicesRequest clone() => EditorSelectServicesRequest()..mergeFromMessage(this);
  EditorSelectServicesRequest copyWith(void Function(EditorSelectServicesRequest) updates) => super.copyWith((message) => updates(message as EditorSelectServicesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorSelectServicesRequest create() => EditorSelectServicesRequest._();
  EditorSelectServicesRequest createEmptyInstance() => create();
  static $pb.PbList<EditorSelectServicesRequest> createRepeated() => $pb.PbList<EditorSelectServicesRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorSelectServicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorSelectServicesRequest>(create);
  static EditorSelectServicesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getList(0);

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
}

class EditorCreateNewServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorCreateNewServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'description')
    ..a<$core.double>(3, 'price', $pb.PbFieldType.OF)
    ..a<$core.int>(4, 'type', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorCreateNewServiceRequest._() : super();
  factory EditorCreateNewServiceRequest() => create();
  factory EditorCreateNewServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorCreateNewServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorCreateNewServiceRequest clone() => EditorCreateNewServiceRequest()..mergeFromMessage(this);
  EditorCreateNewServiceRequest copyWith(void Function(EditorCreateNewServiceRequest) updates) => super.copyWith((message) => updates(message as EditorCreateNewServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorCreateNewServiceRequest create() => EditorCreateNewServiceRequest._();
  EditorCreateNewServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorCreateNewServiceRequest> createRepeated() => $pb.PbList<EditorCreateNewServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorCreateNewServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorCreateNewServiceRequest>(create);
  static EditorCreateNewServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}

class EditorNewServicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewServicesRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  EditorNewServicesRequest._() : super();
  factory EditorNewServicesRequest() => create();
  factory EditorNewServicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewServicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewServicesRequest clone() => EditorNewServicesRequest()..mergeFromMessage(this);
  EditorNewServicesRequest copyWith(void Function(EditorNewServicesRequest) updates) => super.copyWith((message) => updates(message as EditorNewServicesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewServicesRequest create() => EditorNewServicesRequest._();
  EditorNewServicesRequest createEmptyInstance() => create();
  static $pb.PbList<EditorNewServicesRequest> createRepeated() => $pb.PbList<EditorNewServicesRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorNewServicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewServicesRequest>(create);
  static EditorNewServicesRequest _defaultInstance;

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

class EditorNewServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorNewServiceRequest._() : super();
  factory EditorNewServiceRequest() => create();
  factory EditorNewServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewServiceRequest clone() => EditorNewServiceRequest()..mergeFromMessage(this);
  EditorNewServiceRequest copyWith(void Function(EditorNewServiceRequest) updates) => super.copyWith((message) => updates(message as EditorNewServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewServiceRequest create() => EditorNewServiceRequest._();
  EditorNewServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorNewServiceRequest> createRepeated() => $pb.PbList<EditorNewServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorNewServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewServiceRequest>(create);
  static EditorNewServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditorEditNewServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorEditNewServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(6, 'type', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorEditNewServiceRequest._() : super();
  factory EditorEditNewServiceRequest() => create();
  factory EditorEditNewServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorEditNewServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorEditNewServiceRequest clone() => EditorEditNewServiceRequest()..mergeFromMessage(this);
  EditorEditNewServiceRequest copyWith(void Function(EditorEditNewServiceRequest) updates) => super.copyWith((message) => updates(message as EditorEditNewServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorEditNewServiceRequest create() => EditorEditNewServiceRequest._();
  EditorEditNewServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorEditNewServiceRequest> createRepeated() => $pb.PbList<EditorEditNewServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorEditNewServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorEditNewServiceRequest>(create);
  static EditorEditNewServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get commission => $_getN(4);
  @$pb.TagNumber(5)
  set commission($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommission() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommission() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);
}

class EditorDeleteNewServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorDeleteNewServiceRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  EditorDeleteNewServiceRequest._() : super();
  factory EditorDeleteNewServiceRequest() => create();
  factory EditorDeleteNewServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorDeleteNewServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorDeleteNewServiceRequest clone() => EditorDeleteNewServiceRequest()..mergeFromMessage(this);
  EditorDeleteNewServiceRequest copyWith(void Function(EditorDeleteNewServiceRequest) updates) => super.copyWith((message) => updates(message as EditorDeleteNewServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorDeleteNewServiceRequest create() => EditorDeleteNewServiceRequest._();
  EditorDeleteNewServiceRequest createEmptyInstance() => create();
  static $pb.PbList<EditorDeleteNewServiceRequest> createRepeated() => $pb.PbList<EditorDeleteNewServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorDeleteNewServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorDeleteNewServiceRequest>(create);
  static EditorDeleteNewServiceRequest _defaultInstance;

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
}

class ServicesListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServicesListRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cemeteryId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ServicesListRequest._() : super();
  factory ServicesListRequest() => create();
  factory ServicesListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServicesListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServicesListRequest clone() => ServicesListRequest()..mergeFromMessage(this);
  ServicesListRequest copyWith(void Function(ServicesListRequest) updates) => super.copyWith((message) => updates(message as ServicesListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServicesListRequest create() => ServicesListRequest._();
  ServicesListRequest createEmptyInstance() => create();
  static $pb.PbList<ServicesListRequest> createRepeated() => $pb.PbList<ServicesListRequest>();
  @$core.pragma('dart2js:noInline')
  static ServicesListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServicesListRequest>(create);
  static ServicesListRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cemeteryId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cemeteryId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCemeteryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCemeteryId() => clearField(1);
}

class AdminServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminServicesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Service>(1, 'services', $pb.PbFieldType.PM, subBuilder: Service.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminServicesResponse._() : super();
  factory AdminServicesResponse() => create();
  factory AdminServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminServicesResponse clone() => AdminServicesResponse()..mergeFromMessage(this);
  AdminServicesResponse copyWith(void Function(AdminServicesResponse) updates) => super.copyWith((message) => updates(message as AdminServicesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminServicesResponse create() => AdminServicesResponse._();
  AdminServicesResponse createEmptyInstance() => create();
  static $pb.PbList<AdminServicesResponse> createRepeated() => $pb.PbList<AdminServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminServicesResponse>(create);
  static AdminServicesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Service> get services => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminServiceResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Service>(1, 'service', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  AdminServiceResponse._() : super();
  factory AdminServiceResponse() => create();
  factory AdminServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminServiceResponse clone() => AdminServiceResponse()..mergeFromMessage(this);
  AdminServiceResponse copyWith(void Function(AdminServiceResponse) updates) => super.copyWith((message) => updates(message as AdminServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminServiceResponse create() => AdminServiceResponse._();
  AdminServiceResponse createEmptyInstance() => create();
  static $pb.PbList<AdminServiceResponse> createRepeated() => $pb.PbList<AdminServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminServiceResponse>(create);
  static AdminServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  Service get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
  @$pb.TagNumber(1)
  Service ensureService() => $_ensure(0);
}

class AdminNewServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewServicesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<NewService>(1, 'services', $pb.PbFieldType.PM, subBuilder: NewService.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminNewServicesResponse._() : super();
  factory AdminNewServicesResponse() => create();
  factory AdminNewServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewServicesResponse clone() => AdminNewServicesResponse()..mergeFromMessage(this);
  AdminNewServicesResponse copyWith(void Function(AdminNewServicesResponse) updates) => super.copyWith((message) => updates(message as AdminNewServicesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewServicesResponse create() => AdminNewServicesResponse._();
  AdminNewServicesResponse createEmptyInstance() => create();
  static $pb.PbList<AdminNewServicesResponse> createRepeated() => $pb.PbList<AdminNewServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminNewServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewServicesResponse>(create);
  static AdminNewServicesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NewService> get services => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminNewServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminNewServiceResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<NewService>(1, 'service', subBuilder: NewService.create)
    ..hasRequiredFields = false
  ;

  AdminNewServiceResponse._() : super();
  factory AdminNewServiceResponse() => create();
  factory AdminNewServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminNewServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminNewServiceResponse clone() => AdminNewServiceResponse()..mergeFromMessage(this);
  AdminNewServiceResponse copyWith(void Function(AdminNewServiceResponse) updates) => super.copyWith((message) => updates(message as AdminNewServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminNewServiceResponse create() => AdminNewServiceResponse._();
  AdminNewServiceResponse createEmptyInstance() => create();
  static $pb.PbList<AdminNewServiceResponse> createRepeated() => $pb.PbList<AdminNewServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminNewServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminNewServiceResponse>(create);
  static AdminNewServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  NewService get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(NewService v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
  @$pb.TagNumber(1)
  NewService ensureService() => $_ensure(0);
}

class EditorServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorServicesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Service>(1, 'services', $pb.PbFieldType.PM, subBuilder: Service.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..pc<Service>(3, 'adminServices', $pb.PbFieldType.PM, subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  EditorServicesResponse._() : super();
  factory EditorServicesResponse() => create();
  factory EditorServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorServicesResponse clone() => EditorServicesResponse()..mergeFromMessage(this);
  EditorServicesResponse copyWith(void Function(EditorServicesResponse) updates) => super.copyWith((message) => updates(message as EditorServicesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorServicesResponse create() => EditorServicesResponse._();
  EditorServicesResponse createEmptyInstance() => create();
  static $pb.PbList<EditorServicesResponse> createRepeated() => $pb.PbList<EditorServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorServicesResponse>(create);
  static EditorServicesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Service> get services => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Service> get adminServices => $_getList(2);
}

class EditorServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorServiceResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Service>(1, 'service', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  EditorServiceResponse._() : super();
  factory EditorServiceResponse() => create();
  factory EditorServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorServiceResponse clone() => EditorServiceResponse()..mergeFromMessage(this);
  EditorServiceResponse copyWith(void Function(EditorServiceResponse) updates) => super.copyWith((message) => updates(message as EditorServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorServiceResponse create() => EditorServiceResponse._();
  EditorServiceResponse createEmptyInstance() => create();
  static $pb.PbList<EditorServiceResponse> createRepeated() => $pb.PbList<EditorServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorServiceResponse>(create);
  static EditorServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  Service get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
  @$pb.TagNumber(1)
  Service ensureService() => $_ensure(0);
}

class EditorNewServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewServicesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<NewService>(1, 'services', $pb.PbFieldType.PM, subBuilder: NewService.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorNewServicesResponse._() : super();
  factory EditorNewServicesResponse() => create();
  factory EditorNewServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewServicesResponse clone() => EditorNewServicesResponse()..mergeFromMessage(this);
  EditorNewServicesResponse copyWith(void Function(EditorNewServicesResponse) updates) => super.copyWith((message) => updates(message as EditorNewServicesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewServicesResponse create() => EditorNewServicesResponse._();
  EditorNewServicesResponse createEmptyInstance() => create();
  static $pb.PbList<EditorNewServicesResponse> createRepeated() => $pb.PbList<EditorNewServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorNewServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewServicesResponse>(create);
  static EditorNewServicesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NewService> get services => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class EditorNewServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorNewServiceResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<NewService>(1, 'service', subBuilder: NewService.create)
    ..hasRequiredFields = false
  ;

  EditorNewServiceResponse._() : super();
  factory EditorNewServiceResponse() => create();
  factory EditorNewServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorNewServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorNewServiceResponse clone() => EditorNewServiceResponse()..mergeFromMessage(this);
  EditorNewServiceResponse copyWith(void Function(EditorNewServiceResponse) updates) => super.copyWith((message) => updates(message as EditorNewServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorNewServiceResponse create() => EditorNewServiceResponse._();
  EditorNewServiceResponse createEmptyInstance() => create();
  static $pb.PbList<EditorNewServiceResponse> createRepeated() => $pb.PbList<EditorNewServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorNewServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorNewServiceResponse>(create);
  static EditorNewServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  NewService get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(NewService v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
  @$pb.TagNumber(1)
  NewService ensureService() => $_ensure(0);
}

class ServicesListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServicesListResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Service>(1, 'services', $pb.PbFieldType.PM, subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  ServicesListResponse._() : super();
  factory ServicesListResponse() => create();
  factory ServicesListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServicesListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServicesListResponse clone() => ServicesListResponse()..mergeFromMessage(this);
  ServicesListResponse copyWith(void Function(ServicesListResponse) updates) => super.copyWith((message) => updates(message as ServicesListResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServicesListResponse create() => ServicesListResponse._();
  ServicesListResponse createEmptyInstance() => create();
  static $pb.PbList<ServicesListResponse> createRepeated() => $pb.PbList<ServicesListResponse>();
  @$core.pragma('dart2js:noInline')
  static ServicesListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServicesListResponse>(create);
  static ServicesListResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Service> get services => $_getList(0);
}

