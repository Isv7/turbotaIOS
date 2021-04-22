///
//  Generated code. Do not modify.
//  source: item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Item', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'userId', $pb.PbFieldType.OU3)
    ..aOS(3, 'title')
    ..aOS(4, 'article')
    ..pc<ItemImage>(5, 'images', $pb.PbFieldType.PM, subBuilder: ItemImage.create)
    ..aOS(6, 'description')
    ..a<$core.double>(7, 'price', $pb.PbFieldType.OF)
    ..aOB(8, 'available')
    ..a<$core.double>(9, 'commission', $pb.PbFieldType.OF)
    ..a<$core.int>(10, 'sort', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item() => create();
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Item clone() => Item()..mergeFromMessage(this);
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get article => $_getSZ(3);
  @$pb.TagNumber(4)
  set article($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasArticle() => $_has(3);
  @$pb.TagNumber(4)
  void clearArticle() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ItemImage> get images => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get price => $_getN(6);
  @$pb.TagNumber(7)
  set price($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrice() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get available => $_getBF(7);
  @$pb.TagNumber(8)
  set available($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvailable() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvailable() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get commission => $_getN(8);
  @$pb.TagNumber(9)
  set commission($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCommission() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommission() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get sort => $_getIZ(9);
  @$pb.TagNumber(10)
  set sort($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSort() => $_has(9);
  @$pb.TagNumber(10)
  void clearSort() => clearField(10);
}

class ItemImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemImage', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOS(1, 'path')
    ..aOS(2, 'filename')
    ..aOS(3, 'name')
    ..hasRequiredFields = false
  ;

  ItemImage._() : super();
  factory ItemImage() => create();
  factory ItemImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemImage clone() => ItemImage()..mergeFromMessage(this);
  ItemImage copyWith(void Function(ItemImage) updates) => super.copyWith((message) => updates(message as ItemImage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemImage create() => ItemImage._();
  ItemImage createEmptyInstance() => create();
  static $pb.PbList<ItemImage> createRepeated() => $pb.PbList<ItemImage>();
  @$core.pragma('dart2js:noInline')
  static ItemImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemImage>(create);
  static ItemImage _defaultInstance;

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

class AdminItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminItemsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  AdminItemsRequest._() : super();
  factory AdminItemsRequest() => create();
  factory AdminItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminItemsRequest clone() => AdminItemsRequest()..mergeFromMessage(this);
  AdminItemsRequest copyWith(void Function(AdminItemsRequest) updates) => super.copyWith((message) => updates(message as AdminItemsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminItemsRequest create() => AdminItemsRequest._();
  AdminItemsRequest createEmptyInstance() => create();
  static $pb.PbList<AdminItemsRequest> createRepeated() => $pb.PbList<AdminItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminItemsRequest>(create);
  static AdminItemsRequest _defaultInstance;

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

class AdminItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminItemRequest._() : super();
  factory AdminItemRequest() => create();
  factory AdminItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminItemRequest clone() => AdminItemRequest()..mergeFromMessage(this);
  AdminItemRequest copyWith(void Function(AdminItemRequest) updates) => super.copyWith((message) => updates(message as AdminItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminItemRequest create() => AdminItemRequest._();
  AdminItemRequest createEmptyInstance() => create();
  static $pb.PbList<AdminItemRequest> createRepeated() => $pb.PbList<AdminItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminItemRequest>(create);
  static AdminItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminEditItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminEditItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'article')
    ..aOS(4, 'description')
    ..a<$core.double>(5, 'price', $pb.PbFieldType.OF)
    ..aOB(6, 'available')
    ..aOS(7, 'itemImages')
    ..aOS(8, 'uploadImages')
    ..a<$core.int>(9, 'sort', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminEditItemRequest._() : super();
  factory AdminEditItemRequest() => create();
  factory AdminEditItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminEditItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminEditItemRequest clone() => AdminEditItemRequest()..mergeFromMessage(this);
  AdminEditItemRequest copyWith(void Function(AdminEditItemRequest) updates) => super.copyWith((message) => updates(message as AdminEditItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminEditItemRequest create() => AdminEditItemRequest._();
  AdminEditItemRequest createEmptyInstance() => create();
  static $pb.PbList<AdminEditItemRequest> createRepeated() => $pb.PbList<AdminEditItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminEditItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminEditItemRequest>(create);
  static AdminEditItemRequest _defaultInstance;

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
  $core.String get article => $_getSZ(2);
  @$pb.TagNumber(3)
  set article($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArticle() => $_has(2);
  @$pb.TagNumber(3)
  void clearArticle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get available => $_getBF(5);
  @$pb.TagNumber(6)
  set available($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvailable() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvailable() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get itemImages => $_getSZ(6);
  @$pb.TagNumber(7)
  set itemImages($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasItemImages() => $_has(6);
  @$pb.TagNumber(7)
  void clearItemImages() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get uploadImages => $_getSZ(7);
  @$pb.TagNumber(8)
  set uploadImages($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUploadImages() => $_has(7);
  @$pb.TagNumber(8)
  void clearUploadImages() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sort => $_getIZ(8);
  @$pb.TagNumber(9)
  set sort($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSort() => $_has(8);
  @$pb.TagNumber(9)
  void clearSort() => clearField(9);
}

class AdminDeleteItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminDeleteItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  AdminDeleteItemRequest._() : super();
  factory AdminDeleteItemRequest() => create();
  factory AdminDeleteItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDeleteItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminDeleteItemRequest clone() => AdminDeleteItemRequest()..mergeFromMessage(this);
  AdminDeleteItemRequest copyWith(void Function(AdminDeleteItemRequest) updates) => super.copyWith((message) => updates(message as AdminDeleteItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDeleteItemRequest create() => AdminDeleteItemRequest._();
  AdminDeleteItemRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDeleteItemRequest> createRepeated() => $pb.PbList<AdminDeleteItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDeleteItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDeleteItemRequest>(create);
  static AdminDeleteItemRequest _defaultInstance;

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

class EditorItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorItemsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  EditorItemsRequest._() : super();
  factory EditorItemsRequest() => create();
  factory EditorItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorItemsRequest clone() => EditorItemsRequest()..mergeFromMessage(this);
  EditorItemsRequest copyWith(void Function(EditorItemsRequest) updates) => super.copyWith((message) => updates(message as EditorItemsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorItemsRequest create() => EditorItemsRequest._();
  EditorItemsRequest createEmptyInstance() => create();
  static $pb.PbList<EditorItemsRequest> createRepeated() => $pb.PbList<EditorItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorItemsRequest>(create);
  static EditorItemsRequest _defaultInstance;

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

class EditorItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorItemRequest._() : super();
  factory EditorItemRequest() => create();
  factory EditorItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorItemRequest clone() => EditorItemRequest()..mergeFromMessage(this);
  EditorItemRequest copyWith(void Function(EditorItemRequest) updates) => super.copyWith((message) => updates(message as EditorItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorItemRequest create() => EditorItemRequest._();
  EditorItemRequest createEmptyInstance() => create();
  static $pb.PbList<EditorItemRequest> createRepeated() => $pb.PbList<EditorItemRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorItemRequest>(create);
  static EditorItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditorEditItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorEditItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'article')
    ..aOS(4, 'description')
    ..a<$core.double>(5, 'price', $pb.PbFieldType.OF)
    ..aOB(6, 'available')
    ..aOS(7, 'itemImages')
    ..aOS(8, 'uploadImages')
    ..a<$core.int>(9, 'sort', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorEditItemRequest._() : super();
  factory EditorEditItemRequest() => create();
  factory EditorEditItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorEditItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorEditItemRequest clone() => EditorEditItemRequest()..mergeFromMessage(this);
  EditorEditItemRequest copyWith(void Function(EditorEditItemRequest) updates) => super.copyWith((message) => updates(message as EditorEditItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorEditItemRequest create() => EditorEditItemRequest._();
  EditorEditItemRequest createEmptyInstance() => create();
  static $pb.PbList<EditorEditItemRequest> createRepeated() => $pb.PbList<EditorEditItemRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorEditItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorEditItemRequest>(create);
  static EditorEditItemRequest _defaultInstance;

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
  $core.String get article => $_getSZ(2);
  @$pb.TagNumber(3)
  set article($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArticle() => $_has(2);
  @$pb.TagNumber(3)
  void clearArticle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get available => $_getBF(5);
  @$pb.TagNumber(6)
  set available($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvailable() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvailable() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get itemImages => $_getSZ(6);
  @$pb.TagNumber(7)
  set itemImages($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasItemImages() => $_has(6);
  @$pb.TagNumber(7)
  void clearItemImages() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get uploadImages => $_getSZ(7);
  @$pb.TagNumber(8)
  set uploadImages($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUploadImages() => $_has(7);
  @$pb.TagNumber(8)
  void clearUploadImages() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sort => $_getIZ(8);
  @$pb.TagNumber(9)
  set sort($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSort() => $_has(8);
  @$pb.TagNumber(9)
  void clearSort() => clearField(9);
}

class EditorDeleteItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorDeleteItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  EditorDeleteItemRequest._() : super();
  factory EditorDeleteItemRequest() => create();
  factory EditorDeleteItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorDeleteItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorDeleteItemRequest clone() => EditorDeleteItemRequest()..mergeFromMessage(this);
  EditorDeleteItemRequest copyWith(void Function(EditorDeleteItemRequest) updates) => super.copyWith((message) => updates(message as EditorDeleteItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorDeleteItemRequest create() => EditorDeleteItemRequest._();
  EditorDeleteItemRequest createEmptyInstance() => create();
  static $pb.PbList<EditorDeleteItemRequest> createRepeated() => $pb.PbList<EditorDeleteItemRequest>();
  @$core.pragma('dart2js:noInline')
  static EditorDeleteItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorDeleteItemRequest>(create);
  static EditorDeleteItemRequest _defaultInstance;

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

class SellerItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerItemsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'sort')
    ..aOS(4, 'direction')
    ..aOS(5, 'search')
    ..hasRequiredFields = false
  ;

  SellerItemsRequest._() : super();
  factory SellerItemsRequest() => create();
  factory SellerItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerItemsRequest clone() => SellerItemsRequest()..mergeFromMessage(this);
  SellerItemsRequest copyWith(void Function(SellerItemsRequest) updates) => super.copyWith((message) => updates(message as SellerItemsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerItemsRequest create() => SellerItemsRequest._();
  SellerItemsRequest createEmptyInstance() => create();
  static $pb.PbList<SellerItemsRequest> createRepeated() => $pb.PbList<SellerItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerItemsRequest>(create);
  static SellerItemsRequest _defaultInstance;

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

class SellerItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerItemRequest._() : super();
  factory SellerItemRequest() => create();
  factory SellerItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerItemRequest clone() => SellerItemRequest()..mergeFromMessage(this);
  SellerItemRequest copyWith(void Function(SellerItemRequest) updates) => super.copyWith((message) => updates(message as SellerItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerItemRequest create() => SellerItemRequest._();
  SellerItemRequest createEmptyInstance() => create();
  static $pb.PbList<SellerItemRequest> createRepeated() => $pb.PbList<SellerItemRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerItemRequest>(create);
  static SellerItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SellerEditItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerEditItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'title')
    ..aOS(3, 'article')
    ..aOS(4, 'description')
    ..a<$core.double>(5, 'price', $pb.PbFieldType.OF)
    ..aOB(6, 'available')
    ..aOS(7, 'itemImages')
    ..aOS(8, 'uploadImages')
    ..a<$core.int>(9, 'sort', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerEditItemRequest._() : super();
  factory SellerEditItemRequest() => create();
  factory SellerEditItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerEditItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerEditItemRequest clone() => SellerEditItemRequest()..mergeFromMessage(this);
  SellerEditItemRequest copyWith(void Function(SellerEditItemRequest) updates) => super.copyWith((message) => updates(message as SellerEditItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerEditItemRequest create() => SellerEditItemRequest._();
  SellerEditItemRequest createEmptyInstance() => create();
  static $pb.PbList<SellerEditItemRequest> createRepeated() => $pb.PbList<SellerEditItemRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerEditItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerEditItemRequest>(create);
  static SellerEditItemRequest _defaultInstance;

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
  $core.String get article => $_getSZ(2);
  @$pb.TagNumber(3)
  set article($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArticle() => $_has(2);
  @$pb.TagNumber(3)
  void clearArticle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get available => $_getBF(5);
  @$pb.TagNumber(6)
  set available($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvailable() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvailable() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get itemImages => $_getSZ(6);
  @$pb.TagNumber(7)
  set itemImages($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasItemImages() => $_has(6);
  @$pb.TagNumber(7)
  void clearItemImages() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get uploadImages => $_getSZ(7);
  @$pb.TagNumber(8)
  set uploadImages($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUploadImages() => $_has(7);
  @$pb.TagNumber(8)
  void clearUploadImages() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sort => $_getIZ(8);
  @$pb.TagNumber(9)
  set sort($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSort() => $_has(8);
  @$pb.TagNumber(9)
  void clearSort() => clearField(9);
}

class SellerDeleteItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerDeleteItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'sort')
    ..aOS(5, 'direction')
    ..aOS(6, 'search')
    ..hasRequiredFields = false
  ;

  SellerDeleteItemRequest._() : super();
  factory SellerDeleteItemRequest() => create();
  factory SellerDeleteItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerDeleteItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerDeleteItemRequest clone() => SellerDeleteItemRequest()..mergeFromMessage(this);
  SellerDeleteItemRequest copyWith(void Function(SellerDeleteItemRequest) updates) => super.copyWith((message) => updates(message as SellerDeleteItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerDeleteItemRequest create() => SellerDeleteItemRequest._();
  SellerDeleteItemRequest createEmptyInstance() => create();
  static $pb.PbList<SellerDeleteItemRequest> createRepeated() => $pb.PbList<SellerDeleteItemRequest>();
  @$core.pragma('dart2js:noInline')
  static SellerDeleteItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerDeleteItemRequest>(create);
  static SellerDeleteItemRequest _defaultInstance;

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

class ItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemsRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'page', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'cityId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ItemsRequest._() : super();
  factory ItemsRequest() => create();
  factory ItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemsRequest clone() => ItemsRequest()..mergeFromMessage(this);
  ItemsRequest copyWith(void Function(ItemsRequest) updates) => super.copyWith((message) => updates(message as ItemsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemsRequest create() => ItemsRequest._();
  ItemsRequest createEmptyInstance() => create();
  static $pb.PbList<ItemsRequest> createRepeated() => $pb.PbList<ItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static ItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemsRequest>(create);
  static ItemsRequest _defaultInstance;

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
  $core.int get cityId => $_getIZ(2);
  @$pb.TagNumber(3)
  set cityId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCityId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCityId() => clearField(3);
}

class ItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemRequest', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ItemRequest._() : super();
  factory ItemRequest() => create();
  factory ItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemRequest clone() => ItemRequest()..mergeFromMessage(this);
  ItemRequest copyWith(void Function(ItemRequest) updates) => super.copyWith((message) => updates(message as ItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemRequest create() => ItemRequest._();
  ItemRequest createEmptyInstance() => create();
  static $pb.PbList<ItemRequest> createRepeated() => $pb.PbList<ItemRequest>();
  @$core.pragma('dart2js:noInline')
  static ItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemRequest>(create);
  static ItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AdminItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminItemsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AdminItemsResponse._() : super();
  factory AdminItemsResponse() => create();
  factory AdminItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminItemsResponse clone() => AdminItemsResponse()..mergeFromMessage(this);
  AdminItemsResponse copyWith(void Function(AdminItemsResponse) updates) => super.copyWith((message) => updates(message as AdminItemsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminItemsResponse create() => AdminItemsResponse._();
  AdminItemsResponse createEmptyInstance() => create();
  static $pb.PbList<AdminItemsResponse> createRepeated() => $pb.PbList<AdminItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminItemsResponse>(create);
  static AdminItemsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class AdminItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdminItemResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Item>(1, 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  AdminItemResponse._() : super();
  factory AdminItemResponse() => create();
  factory AdminItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdminItemResponse clone() => AdminItemResponse()..mergeFromMessage(this);
  AdminItemResponse copyWith(void Function(AdminItemResponse) updates) => super.copyWith((message) => updates(message as AdminItemResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminItemResponse create() => AdminItemResponse._();
  AdminItemResponse createEmptyInstance() => create();
  static $pb.PbList<AdminItemResponse> createRepeated() => $pb.PbList<AdminItemResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminItemResponse>(create);
  static AdminItemResponse _defaultInstance;

  @$pb.TagNumber(1)
  Item get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Item v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  Item ensureItem() => $_ensure(0);
}

class EditorItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorItemsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EditorItemsResponse._() : super();
  factory EditorItemsResponse() => create();
  factory EditorItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorItemsResponse clone() => EditorItemsResponse()..mergeFromMessage(this);
  EditorItemsResponse copyWith(void Function(EditorItemsResponse) updates) => super.copyWith((message) => updates(message as EditorItemsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorItemsResponse create() => EditorItemsResponse._();
  EditorItemsResponse createEmptyInstance() => create();
  static $pb.PbList<EditorItemsResponse> createRepeated() => $pb.PbList<EditorItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorItemsResponse>(create);
  static EditorItemsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class EditorItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditorItemResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Item>(1, 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  EditorItemResponse._() : super();
  factory EditorItemResponse() => create();
  factory EditorItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditorItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditorItemResponse clone() => EditorItemResponse()..mergeFromMessage(this);
  EditorItemResponse copyWith(void Function(EditorItemResponse) updates) => super.copyWith((message) => updates(message as EditorItemResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditorItemResponse create() => EditorItemResponse._();
  EditorItemResponse createEmptyInstance() => create();
  static $pb.PbList<EditorItemResponse> createRepeated() => $pb.PbList<EditorItemResponse>();
  @$core.pragma('dart2js:noInline')
  static EditorItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditorItemResponse>(create);
  static EditorItemResponse _defaultInstance;

  @$pb.TagNumber(1)
  Item get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Item v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  Item ensureItem() => $_ensure(0);
}

class SellerItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerItemsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SellerItemsResponse._() : super();
  factory SellerItemsResponse() => create();
  factory SellerItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerItemsResponse clone() => SellerItemsResponse()..mergeFromMessage(this);
  SellerItemsResponse copyWith(void Function(SellerItemsResponse) updates) => super.copyWith((message) => updates(message as SellerItemsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerItemsResponse create() => SellerItemsResponse._();
  SellerItemsResponse createEmptyInstance() => create();
  static $pb.PbList<SellerItemsResponse> createRepeated() => $pb.PbList<SellerItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static SellerItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerItemsResponse>(create);
  static SellerItemsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class SellerItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SellerItemResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Item>(1, 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  SellerItemResponse._() : super();
  factory SellerItemResponse() => create();
  factory SellerItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellerItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SellerItemResponse clone() => SellerItemResponse()..mergeFromMessage(this);
  SellerItemResponse copyWith(void Function(SellerItemResponse) updates) => super.copyWith((message) => updates(message as SellerItemResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SellerItemResponse create() => SellerItemResponse._();
  SellerItemResponse createEmptyInstance() => create();
  static $pb.PbList<SellerItemResponse> createRepeated() => $pb.PbList<SellerItemResponse>();
  @$core.pragma('dart2js:noInline')
  static SellerItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellerItemResponse>(create);
  static SellerItemResponse _defaultInstance;

  @$pb.TagNumber(1)
  Item get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Item v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  Item ensureItem() => $_ensure(0);
}

class ItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemsResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..a<$core.int>(2, 'total', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ItemsResponse._() : super();
  factory ItemsResponse() => create();
  factory ItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemsResponse clone() => ItemsResponse()..mergeFromMessage(this);
  ItemsResponse copyWith(void Function(ItemsResponse) updates) => super.copyWith((message) => updates(message as ItemsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemsResponse create() => ItemsResponse._();
  ItemsResponse createEmptyInstance() => create();
  static $pb.PbList<ItemsResponse> createRepeated() => $pb.PbList<ItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static ItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemsResponse>(create);
  static ItemsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class ItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..aOM<Item>(1, 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  ItemResponse._() : super();
  factory ItemResponse() => create();
  factory ItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemResponse clone() => ItemResponse()..mergeFromMessage(this);
  ItemResponse copyWith(void Function(ItemResponse) updates) => super.copyWith((message) => updates(message as ItemResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemResponse create() => ItemResponse._();
  ItemResponse createEmptyInstance() => create();
  static $pb.PbList<ItemResponse> createRepeated() => $pb.PbList<ItemResponse>();
  @$core.pragma('dart2js:noInline')
  static ItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemResponse>(create);
  static ItemResponse _defaultInstance;

  @$pb.TagNumber(1)
  Item get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Item v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  Item ensureItem() => $_ensure(0);
}

class ImagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ImagesResponse', package: const $pb.PackageName('v1'), createEmptyInstance: create)
    ..pc<ItemImage>(1, 'images', $pb.PbFieldType.PM, subBuilder: ItemImage.create)
    ..hasRequiredFields = false
  ;

  ImagesResponse._() : super();
  factory ImagesResponse() => create();
  factory ImagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ImagesResponse clone() => ImagesResponse()..mergeFromMessage(this);
  ImagesResponse copyWith(void Function(ImagesResponse) updates) => super.copyWith((message) => updates(message as ImagesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImagesResponse create() => ImagesResponse._();
  ImagesResponse createEmptyInstance() => create();
  static $pb.PbList<ImagesResponse> createRepeated() => $pb.PbList<ImagesResponse>();
  @$core.pragma('dart2js:noInline')
  static ImagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImagesResponse>(create);
  static ImagesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ItemImage> get images => $_getList(0);
}

