///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $10;
import 'burial.pb.dart' as $8;
import 'service.pb.dart' as $0;
import 'item.pb.dart' as $3;

class Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Order', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOM<$10.Timestamp>(2, 'createdAt', subBuilder: $10.Timestamp.create)
    ..a<$core.int>(3, 'burialId', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'editedBy', $pb.PbFieldType.OU3)
    ..aOS(5, 'date')
    ..aOS(6, 'name')
    ..aOS(7, 'surname')
    ..aOS(8, 'phone')
    ..aOS(9, 'email')
    ..aOS(10, 'comment')
    ..aOS(11, 'amount')
    ..aOS(12, 'orderId')
    ..aOS(13, 'paymentId')
    ..aOS(14, 'notes')
    ..a<$core.int>(15, 'status', $pb.PbFieldType.OU3)
    ..aOM<$8.Burial>(16, 'burial', subBuilder: $8.Burial.create)
    ..pc<$0.Service>(17, 'services', $pb.PbFieldType.PM, subBuilder: $0.Service.create)
    ..pc<$3.Item>(18, 'items', $pb.PbFieldType.PM, subBuilder: $3.Item.create)
    ..pc<OrderImage>(19, 'images', $pb.PbFieldType.PM, subBuilder: OrderImage.create)
    ..hasRequiredFields = false
  ;

  Order._() : super();
  factory Order() => create();
  factory Order.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Order.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Order clone() => Order()..mergeFromMessage(this);
  Order copyWith(void Function(Order) updates) => super.copyWith((message) => updates(message as Order));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Order create() => Order._();
  Order createEmptyInstance() => create();
  static $pb.PbList<Order> createRepeated() => $pb.PbList<Order>();
  @$core.pragma('dart2js:noInline')
  static Order getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Order>(create);
  static Order _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $10.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($10.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $10.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get burialId => $_getIZ(2);
  @$pb.TagNumber(3)
  set burialId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBurialId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBurialId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get editedBy => $_getIZ(3);
  @$pb.TagNumber(4)
  set editedBy($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEditedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearEditedBy() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get surname => $_getSZ(6);
  @$pb.TagNumber(7)
  set surname($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSurname() => $_has(6);
  @$pb.TagNumber(7)
  void clearSurname() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get phone => $_getSZ(7);
  @$pb.TagNumber(8)
  set phone($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPhone() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhone() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get email => $_getSZ(8);
  @$pb.TagNumber(9)
  set email($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEmail() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmail() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get comment => $_getSZ(9);
  @$pb.TagNumber(10)
  set comment($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasComment() => $_has(9);
  @$pb.TagNumber(10)
  void clearComment() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get amount => $_getSZ(10);
  @$pb.TagNumber(11)
  set amount($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearAmount() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get orderId => $_getSZ(11);
  @$pb.TagNumber(12)
  set orderId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasOrderId() => $_has(11);
  @$pb.TagNumber(12)
  void clearOrderId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get paymentId => $_getSZ(12);
  @$pb.TagNumber(13)
  set paymentId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPaymentId() => $_has(12);
  @$pb.TagNumber(13)
  void clearPaymentId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get notes => $_getSZ(13);
  @$pb.TagNumber(14)
  set notes($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNotes() => $_has(13);
  @$pb.TagNumber(14)
  void clearNotes() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get status => $_getIZ(14);
  @$pb.TagNumber(15)
  set status($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasStatus() => $_has(14);
  @$pb.TagNumber(15)
  void clearStatus() => clearField(15);

  @$pb.TagNumber(16)
  $8.Burial get burial => $_getN(15);
  @$pb.TagNumber(16)
  set burial($8.Burial v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasBurial() => $_has(15);
  @$pb.TagNumber(16)
  void clearBurial() => clearField(16);
  @$pb.TagNumber(16)
  $8.Burial ensureBurial() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.List<$0.Service> get services => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<$3.Item> get items => $_getList(17);

  @$pb.TagNumber(19)
  $core.List<OrderImage> get images => $_getList(18);
}

class HistoryOrder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryOrder', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOM<$10.Timestamp>(2, 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$8.Burial>(3, 'burial', subBuilder: $8.Burial.create)
    ..aOS(4, 'date')
    ..aOS(5, 'name')
    ..aOS(6, 'surname')
    ..aOS(7, 'phone')
    ..aOS(8, 'email')
    ..aOS(9, 'comment')
    ..aOS(10, 'amount')
    ..aOS(11, 'orderId')
    ..aOS(12, 'paymentId')
    ..a<$core.int>(13, 'status', $pb.PbFieldType.OU3)
    ..pc<$0.Service>(14, 'services', $pb.PbFieldType.PM, subBuilder: $0.Service.create)
    ..pc<$3.Item>(15, 'items', $pb.PbFieldType.PM, subBuilder: $3.Item.create)
    ..pc<OrderImage>(16, 'images', $pb.PbFieldType.PM, subBuilder: OrderImage.create)
    ..hasRequiredFields = false
  ;

  HistoryOrder._() : super();
  factory HistoryOrder() => create();
  factory HistoryOrder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryOrder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryOrder clone() => HistoryOrder()..mergeFromMessage(this);
  HistoryOrder copyWith(void Function(HistoryOrder) updates) => super.copyWith((message) => updates(message as HistoryOrder));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryOrder create() => HistoryOrder._();
  HistoryOrder createEmptyInstance() => create();
  static $pb.PbList<HistoryOrder> createRepeated() => $pb.PbList<HistoryOrder>();
  @$core.pragma('dart2js:noInline')
  static HistoryOrder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryOrder>(create);
  static HistoryOrder _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $10.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($10.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $10.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.Burial get burial => $_getN(2);
  @$pb.TagNumber(3)
  set burial($8.Burial v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBurial() => $_has(2);
  @$pb.TagNumber(3)
  void clearBurial() => clearField(3);
  @$pb.TagNumber(3)
  $8.Burial ensureBurial() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get surname => $_getSZ(5);
  @$pb.TagNumber(6)
  set surname($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSurname() => $_has(5);
  @$pb.TagNumber(6)
  void clearSurname() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get phone => $_getSZ(6);
  @$pb.TagNumber(7)
  set phone($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhone() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhone() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(8)
  set email($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get comment => $_getSZ(8);
  @$pb.TagNumber(9)
  set comment($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasComment() => $_has(8);
  @$pb.TagNumber(9)
  void clearComment() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get amount => $_getSZ(9);
  @$pb.TagNumber(10)
  set amount($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearAmount() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get orderId => $_getSZ(10);
  @$pb.TagNumber(11)
  set orderId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrderId() => $_has(10);
  @$pb.TagNumber(11)
  void clearOrderId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get paymentId => $_getSZ(11);
  @$pb.TagNumber(12)
  set paymentId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPaymentId() => $_has(11);
  @$pb.TagNumber(12)
  void clearPaymentId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get status => $_getIZ(12);
  @$pb.TagNumber(13)
  set status($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearStatus() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$0.Service> get services => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<$3.Item> get items => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<OrderImage> get images => $_getList(15);
}

class OrderImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderImage', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'path')
    ..aOS(2, 'filename')
    ..aOS(3, 'name')
    ..hasRequiredFields = false
  ;

  OrderImage._() : super();
  factory OrderImage() => create();
  factory OrderImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderImage clone() => OrderImage()..mergeFromMessage(this);
  OrderImage copyWith(void Function(OrderImage) updates) => super.copyWith((message) => updates(message as OrderImage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderImage create() => OrderImage._();
  OrderImage createEmptyInstance() => create();
  static $pb.PbList<OrderImage> createRepeated() => $pb.PbList<OrderImage>();
  @$core.pragma('dart2js:noInline')
  static OrderImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderImage>(create);
  static OrderImage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class HistoryOrdersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryOrdersResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<HistoryOrder>(1, 'orders', $pb.PbFieldType.PM, subBuilder: HistoryOrder.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  HistoryOrdersResponse._() : super();
  factory HistoryOrdersResponse() => create();
  factory HistoryOrdersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryOrdersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryOrdersResponse clone() => HistoryOrdersResponse()..mergeFromMessage(this);
  HistoryOrdersResponse copyWith(void Function(HistoryOrdersResponse) updates) => super.copyWith((message) => updates(message as HistoryOrdersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryOrdersResponse create() => HistoryOrdersResponse._();
  HistoryOrdersResponse createEmptyInstance() => create();
  static $pb.PbList<HistoryOrdersResponse> createRepeated() => $pb.PbList<HistoryOrdersResponse>();
  @$core.pragma('dart2js:noInline')
  static HistoryOrdersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryOrdersResponse>(create);
  static HistoryOrdersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HistoryOrder> get orders => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminOrdersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminOrdersRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  AdminOrdersRequest._() : super();
  factory AdminOrdersRequest() => create();
  factory AdminOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminOrdersRequest clone() => AdminOrdersRequest()..mergeFromMessage(this);
  AdminOrdersRequest copyWith(void Function(AdminOrdersRequest) updates) => super.copyWith((message) => updates(message as AdminOrdersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminOrdersRequest create() => AdminOrdersRequest._();
  AdminOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<AdminOrdersRequest> createRepeated() => $pb.PbList<AdminOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminOrdersRequest>(create);
  static AdminOrdersRequest _defaultInstance;

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

class AdminOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminOrderRequest._() : super();
  factory AdminOrderRequest() => create();
  factory AdminOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminOrderRequest clone() => AdminOrderRequest()..mergeFromMessage(this);
  AdminOrderRequest copyWith(void Function(AdminOrderRequest) updates) => super.copyWith((message) => updates(message as AdminOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminOrderRequest create() => AdminOrderRequest._();
  AdminOrderRequest createEmptyInstance() => create();
  static $pb.PbList<AdminOrderRequest> createRepeated() => $pb.PbList<AdminOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminOrderRequest>(create);
  static AdminOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'notes')
    ..aOS(3, 'orderImages')
    ..aOS(4, 'uploadImages')
    ..hasRequiredFields = false
  ;

  AdminEditOrderRequest._() : super();
  factory AdminEditOrderRequest() => create();
  factory AdminEditOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditOrderRequest clone() => AdminEditOrderRequest()..mergeFromMessage(this);
  AdminEditOrderRequest copyWith(void Function(AdminEditOrderRequest) updates) => super.copyWith((message) => updates(message as AdminEditOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditOrderRequest create() => AdminEditOrderRequest._();
  AdminEditOrderRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditOrderRequest> createRepeated() => $pb.PbList<AdminEditOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditOrderRequest>(create);
  static AdminEditOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get notes => $_getSZ(1);
  @$pb.TagNumber(2)
  set notes($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotes() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderImages => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderImages($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderImages() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderImages() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uploadImages => $_getSZ(3);
  @$pb.TagNumber(4)
  set uploadImages($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUploadImages() => $_has(3);
  @$pb.TagNumber(4)
  void clearUploadImages() => clearField(4);
}

class AdminChangeOrderStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminChangeOrderStatusRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'status', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminChangeOrderStatusRequest._() : super();
  factory AdminChangeOrderStatusRequest() => create();
  factory AdminChangeOrderStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminChangeOrderStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminChangeOrderStatusRequest clone() => AdminChangeOrderStatusRequest()..mergeFromMessage(this);
  AdminChangeOrderStatusRequest copyWith(void Function(AdminChangeOrderStatusRequest) updates) => super.copyWith((message) => updates(message as AdminChangeOrderStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminChangeOrderStatusRequest create() => AdminChangeOrderStatusRequest._();
  AdminChangeOrderStatusRequest createEmptyInstance() => create();
  static $pb.PbList<AdminChangeOrderStatusRequest> createRepeated() => $pb.PbList<AdminChangeOrderStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminChangeOrderStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminChangeOrderStatusRequest>(create);
  static AdminChangeOrderStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class EditorOrdersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorOrdersRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  EditorOrdersRequest._() : super();
  factory EditorOrdersRequest() => create();
  factory EditorOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorOrdersRequest clone() => EditorOrdersRequest()..mergeFromMessage(this);
  EditorOrdersRequest copyWith(void Function(EditorOrdersRequest) updates) => super.copyWith((message) => updates(message as EditorOrdersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorOrdersRequest create() => EditorOrdersRequest._();
  EditorOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<EditorOrdersRequest> createRepeated() => $pb.PbList<EditorOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorOrdersRequest>(create);
  static EditorOrdersRequest _defaultInstance;

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

class EditorOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorOrderRequest._() : super();
  factory EditorOrderRequest() => create();
  factory EditorOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorOrderRequest clone() => EditorOrderRequest()..mergeFromMessage(this);
  EditorOrderRequest copyWith(void Function(EditorOrderRequest) updates) => super.copyWith((message) => updates(message as EditorOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorOrderRequest create() => EditorOrderRequest._();
  EditorOrderRequest createEmptyInstance() => create();
  static $pb.PbList<EditorOrderRequest> createRepeated() => $pb.PbList<EditorOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorOrderRequest>(create);
  static EditorOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditorEditOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorEditOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'notes')
    ..aOS(3, 'orderImages')
    ..aOS(4, 'uploadImages')
    ..hasRequiredFields = false
  ;

  EditorEditOrderRequest._() : super();
  factory EditorEditOrderRequest() => create();
  factory EditorEditOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorEditOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorEditOrderRequest clone() => EditorEditOrderRequest()..mergeFromMessage(this);
  EditorEditOrderRequest copyWith(void Function(EditorEditOrderRequest) updates) => super.copyWith((message) => updates(message as EditorEditOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorEditOrderRequest create() => EditorEditOrderRequest._();
  EditorEditOrderRequest createEmptyInstance() => create();
  static $pb.PbList<EditorEditOrderRequest> createRepeated() => $pb.PbList<EditorEditOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorEditOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorEditOrderRequest>(create);
  static EditorEditOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get notes => $_getSZ(1);
  @$pb.TagNumber(2)
  set notes($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotes() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderImages => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderImages($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderImages() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderImages() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uploadImages => $_getSZ(3);
  @$pb.TagNumber(4)
  set uploadImages($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUploadImages() => $_has(3);
  @$pb.TagNumber(4)
  void clearUploadImages() => clearField(4);
}

class EditorChangeOrderStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorChangeOrderStatusRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'status', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorChangeOrderStatusRequest._() : super();
  factory EditorChangeOrderStatusRequest() => create();
  factory EditorChangeOrderStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorChangeOrderStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorChangeOrderStatusRequest clone() => EditorChangeOrderStatusRequest()..mergeFromMessage(this);
  EditorChangeOrderStatusRequest copyWith(void Function(EditorChangeOrderStatusRequest) updates) => super.copyWith((message) => updates(message as EditorChangeOrderStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorChangeOrderStatusRequest create() => EditorChangeOrderStatusRequest._();
  EditorChangeOrderStatusRequest createEmptyInstance() => create();
  static $pb.PbList<EditorChangeOrderStatusRequest> createRepeated() => $pb.PbList<EditorChangeOrderStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorChangeOrderStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorChangeOrderStatusRequest>(create);
  static EditorChangeOrderStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class SellerOrdersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerOrdersRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  SellerOrdersRequest._() : super();
  factory SellerOrdersRequest() => create();
  factory SellerOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerOrdersRequest clone() => SellerOrdersRequest()..mergeFromMessage(this);
  SellerOrdersRequest copyWith(void Function(SellerOrdersRequest) updates) => super.copyWith((message) => updates(message as SellerOrdersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerOrdersRequest create() => SellerOrdersRequest._();
  SellerOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<SellerOrdersRequest> createRepeated() => $pb.PbList<SellerOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerOrdersRequest>(create);
  static SellerOrdersRequest _defaultInstance;

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

class SellerOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerOrderRequest._() : super();
  factory SellerOrderRequest() => create();
  factory SellerOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerOrderRequest clone() => SellerOrderRequest()..mergeFromMessage(this);
  SellerOrderRequest copyWith(void Function(SellerOrderRequest) updates) => super.copyWith((message) => updates(message as SellerOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerOrderRequest create() => SellerOrderRequest._();
  SellerOrderRequest createEmptyInstance() => create();
  static $pb.PbList<SellerOrderRequest> createRepeated() => $pb.PbList<SellerOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerOrderRequest>(create);
  static SellerOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SellerEditOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerEditOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'notes')
    ..hasRequiredFields = false
  ;

  SellerEditOrderRequest._() : super();
  factory SellerEditOrderRequest() => create();
  factory SellerEditOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerEditOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerEditOrderRequest clone() => SellerEditOrderRequest()..mergeFromMessage(this);
  SellerEditOrderRequest copyWith(void Function(SellerEditOrderRequest) updates) => super.copyWith((message) => updates(message as SellerEditOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerEditOrderRequest create() => SellerEditOrderRequest._();
  SellerEditOrderRequest createEmptyInstance() => create();
  static $pb.PbList<SellerEditOrderRequest> createRepeated() => $pb.PbList<SellerEditOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerEditOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerEditOrderRequest>(create);
  static SellerEditOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get notes => $_getSZ(1);
  @$pb.TagNumber(2)
  set notes($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotes() => clearField(2);
}

class SellerChangeOrderStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerChangeOrderStatusRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'status', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerChangeOrderStatusRequest._() : super();
  factory SellerChangeOrderStatusRequest() => create();
  factory SellerChangeOrderStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerChangeOrderStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerChangeOrderStatusRequest clone() => SellerChangeOrderStatusRequest()..mergeFromMessage(this);
  SellerChangeOrderStatusRequest copyWith(void Function(SellerChangeOrderStatusRequest) updates) => super.copyWith((message) => updates(message as SellerChangeOrderStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerChangeOrderStatusRequest create() => SellerChangeOrderStatusRequest._();
  SellerChangeOrderStatusRequest createEmptyInstance() => create();
  static $pb.PbList<SellerChangeOrderStatusRequest> createRepeated() => $pb.PbList<SellerChangeOrderStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerChangeOrderStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerChangeOrderStatusRequest>(create);
  static SellerChangeOrderStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class CreateNewOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateNewOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'burialId', $pb.PbFieldType.OU3)
    ..aOS(2, 'date')
    ..aOS(3, 'name')
    ..aOS(4, 'surname')
    ..p<$core.int>(5, 'services', $pb.PbFieldType.PU3)
    ..p<$core.int>(6, 'items', $pb.PbFieldType.PU3)
    ..aOS(7, 'phone')
    ..aOS(8, 'email')
    ..aOS(9, 'comment')
    ..a<$core.double>(10, 'amount', $pb.PbFieldType.OF)
    ..aOS(11, 'orderId')
    ..aOS(12, 'paymentId')
    ..a<$core.int>(13, 'status', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  CreateNewOrderRequest._() : super();
  factory CreateNewOrderRequest() => create();
  factory CreateNewOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNewOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateNewOrderRequest clone() => CreateNewOrderRequest()..mergeFromMessage(this);
  CreateNewOrderRequest copyWith(void Function(CreateNewOrderRequest) updates) => super.copyWith((message) => updates(message as CreateNewOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNewOrderRequest create() => CreateNewOrderRequest._();
  CreateNewOrderRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNewOrderRequest> createRepeated() => $pb.PbList<CreateNewOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNewOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNewOrderRequest>(create);
  static CreateNewOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get burialId => $_getIZ(0);
  @$pb.TagNumber(1)
  set burialId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBurialId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBurialId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get surname => $_getSZ(3);
  @$pb.TagNumber(4)
  set surname($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSurname() => $_has(3);
  @$pb.TagNumber(4)
  void clearSurname() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get services => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get items => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get phone => $_getSZ(6);
  @$pb.TagNumber(7)
  set phone($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhone() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhone() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(8)
  set email($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get comment => $_getSZ(8);
  @$pb.TagNumber(9)
  set comment($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasComment() => $_has(8);
  @$pb.TagNumber(9)
  void clearComment() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get amount => $_getN(9);
  @$pb.TagNumber(10)
  set amount($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearAmount() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get orderId => $_getSZ(10);
  @$pb.TagNumber(11)
  set orderId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrderId() => $_has(10);
  @$pb.TagNumber(11)
  void clearOrderId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get paymentId => $_getSZ(11);
  @$pb.TagNumber(12)
  set paymentId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPaymentId() => $_has(11);
  @$pb.TagNumber(12)
  void clearPaymentId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get status => $_getIZ(12);
  @$pb.TagNumber(13)
  set status($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearStatus() => clearField(13);
}

class GetNewOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetNewOrderRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'orderId')
    ..hasRequiredFields = false
  ;

  GetNewOrderRequest._() : super();
  factory GetNewOrderRequest() => create();
  factory GetNewOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNewOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetNewOrderRequest clone() => GetNewOrderRequest()..mergeFromMessage(this);
  GetNewOrderRequest copyWith(void Function(GetNewOrderRequest) updates) => super.copyWith((message) => updates(message as GetNewOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNewOrderRequest create() => GetNewOrderRequest._();
  GetNewOrderRequest createEmptyInstance() => create();
  static $pb.PbList<GetNewOrderRequest> createRepeated() => $pb.PbList<GetNewOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNewOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNewOrderRequest>(create);
  static GetNewOrderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);
}

class HistoryOrdersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryOrdersRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  HistoryOrdersRequest._() : super();
  factory HistoryOrdersRequest() => create();
  factory HistoryOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryOrdersRequest clone() => HistoryOrdersRequest()..mergeFromMessage(this);
  HistoryOrdersRequest copyWith(void Function(HistoryOrdersRequest) updates) => super.copyWith((message) => updates(message as HistoryOrdersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryOrdersRequest create() => HistoryOrdersRequest._();
  HistoryOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<HistoryOrdersRequest> createRepeated() => $pb.PbList<HistoryOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static HistoryOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryOrdersRequest>(create);
  static HistoryOrdersRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

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
}

class AdminOrdersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminOrdersResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Order>(1, 'Orders', $pb.PbFieldType.PM, protoName: 'Orders', subBuilder: Order.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminOrdersResponse._() : super();
  factory AdminOrdersResponse() => create();
  factory AdminOrdersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminOrdersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminOrdersResponse clone() => AdminOrdersResponse()..mergeFromMessage(this);
  AdminOrdersResponse copyWith(void Function(AdminOrdersResponse) updates) => super.copyWith((message) => updates(message as AdminOrdersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminOrdersResponse create() => AdminOrdersResponse._();
  AdminOrdersResponse createEmptyInstance() => create();
  static $pb.PbList<AdminOrdersResponse> createRepeated() => $pb.PbList<AdminOrdersResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminOrdersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminOrdersResponse>(create);
  static AdminOrdersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Order> get orders => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminOrderResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Order>(1, 'order', subBuilder: Order.create)
    ..hasRequiredFields = false
  ;

  AdminOrderResponse._() : super();
  factory AdminOrderResponse() => create();
  factory AdminOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminOrderResponse clone() => AdminOrderResponse()..mergeFromMessage(this);
  AdminOrderResponse copyWith(void Function(AdminOrderResponse) updates) => super.copyWith((message) => updates(message as AdminOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminOrderResponse create() => AdminOrderResponse._();
  AdminOrderResponse createEmptyInstance() => create();
  static $pb.PbList<AdminOrderResponse> createRepeated() => $pb.PbList<AdminOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminOrderResponse>(create);
  static AdminOrderResponse _defaultInstance;

  @$pb.TagNumber(1)
  Order get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(Order v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  Order ensureOrder() => $_ensure(0);
}

class EditorOrdersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorOrdersResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Order>(1, 'orders', $pb.PbFieldType.PM, subBuilder: Order.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorOrdersResponse._() : super();
  factory EditorOrdersResponse() => create();
  factory EditorOrdersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorOrdersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorOrdersResponse clone() => EditorOrdersResponse()..mergeFromMessage(this);
  EditorOrdersResponse copyWith(void Function(EditorOrdersResponse) updates) => super.copyWith((message) => updates(message as EditorOrdersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorOrdersResponse create() => EditorOrdersResponse._();
  EditorOrdersResponse createEmptyInstance() => create();
  static $pb.PbList<EditorOrdersResponse> createRepeated() => $pb.PbList<EditorOrdersResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorOrdersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorOrdersResponse>(create);
  static EditorOrdersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Order> get orders => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class EditorOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorOrderResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Order>(1, 'order', subBuilder: Order.create)
    ..hasRequiredFields = false
  ;

  EditorOrderResponse._() : super();
  factory EditorOrderResponse() => create();
  factory EditorOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorOrderResponse clone() => EditorOrderResponse()..mergeFromMessage(this);
  EditorOrderResponse copyWith(void Function(EditorOrderResponse) updates) => super.copyWith((message) => updates(message as EditorOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorOrderResponse create() => EditorOrderResponse._();
  EditorOrderResponse createEmptyInstance() => create();
  static $pb.PbList<EditorOrderResponse> createRepeated() => $pb.PbList<EditorOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorOrderResponse>(create);
  static EditorOrderResponse _defaultInstance;

  @$pb.TagNumber(1)
  Order get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(Order v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  Order ensureOrder() => $_ensure(0);
}

class SellerOrdersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerOrdersResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Order>(1, 'orders', $pb.PbFieldType.PM, subBuilder: Order.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerOrdersResponse._() : super();
  factory SellerOrdersResponse() => create();
  factory SellerOrdersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerOrdersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerOrdersResponse clone() => SellerOrdersResponse()..mergeFromMessage(this);
  SellerOrdersResponse copyWith(void Function(SellerOrdersResponse) updates) => super.copyWith((message) => updates(message as SellerOrdersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerOrdersResponse create() => SellerOrdersResponse._();
  SellerOrdersResponse createEmptyInstance() => create();
  static $pb.PbList<SellerOrdersResponse> createRepeated() => $pb.PbList<SellerOrdersResponse>();
  @$core.pragma('dart2js:noInline')
  static SellerOrdersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerOrdersResponse>(create);
  static SellerOrdersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Order> get orders => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class SellerOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerOrderResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Order>(1, 'order', subBuilder: Order.create)
    ..hasRequiredFields = false
  ;

  SellerOrderResponse._() : super();
  factory SellerOrderResponse() => create();
  factory SellerOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerOrderResponse clone() => SellerOrderResponse()..mergeFromMessage(this);
  SellerOrderResponse copyWith(void Function(SellerOrderResponse) updates) => super.copyWith((message) => updates(message as SellerOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerOrderResponse create() => SellerOrderResponse._();
  SellerOrderResponse createEmptyInstance() => create();
  static $pb.PbList<SellerOrderResponse> createRepeated() => $pb.PbList<SellerOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static SellerOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerOrderResponse>(create);
  static SellerOrderResponse _defaultInstance;

  @$pb.TagNumber(1)
  Order get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(Order v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  Order ensureOrder() => $_ensure(0);
}

class NewOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewOrderResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Order>(1, 'order', subBuilder: Order.create)
    ..hasRequiredFields = false
  ;

  NewOrderResponse._() : super();
  factory NewOrderResponse() => create();
  factory NewOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewOrderResponse clone() => NewOrderResponse()..mergeFromMessage(this);
  NewOrderResponse copyWith(void Function(NewOrderResponse) updates) => super.copyWith((message) => updates(message as NewOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewOrderResponse create() => NewOrderResponse._();
  NewOrderResponse createEmptyInstance() => create();
  static $pb.PbList<NewOrderResponse> createRepeated() => $pb.PbList<NewOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static NewOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewOrderResponse>(create);
  static NewOrderResponse _defaultInstance;

  @$pb.TagNumber(1)
  Order get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(Order v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  Order ensureOrder() => $_ensure(0);
}

