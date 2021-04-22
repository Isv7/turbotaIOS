///
//  Generated code. Do not modify.
//  source: item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'article', '3': 4, '4': 1, '5': 9, '10': 'article'},
    const {'1': 'images', '3': 5, '4': 3, '5': 11, '6': '.v1.ItemImage', '10': 'images'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'price', '3': 7, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'available', '3': 8, '4': 1, '5': 8, '10': 'available'},
    const {'1': 'commission', '3': 9, '4': 1, '5': 2, '10': 'commission'},
    const {'1': 'sort', '3': 10, '4': 1, '5': 13, '10': 'sort'},
  ],
};

const ItemImage$json = const {
  '1': 'ItemImage',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

const AdminItemsRequest$json = const {
  '1': 'AdminItemsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const AdminItemRequest$json = const {
  '1': 'AdminItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditItemRequest$json = const {
  '1': 'AdminEditItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'article', '3': 3, '4': 1, '5': 9, '10': 'article'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'price', '3': 5, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'available', '3': 6, '4': 1, '5': 8, '10': 'available'},
    const {'1': 'item_images', '3': 7, '4': 1, '5': 9, '10': 'itemImages'},
    const {'1': 'upload_images', '3': 8, '4': 1, '5': 9, '10': 'uploadImages'},
    const {'1': 'sort', '3': 9, '4': 1, '5': 13, '10': 'sort'},
  ],
};

const AdminDeleteItemRequest$json = const {
  '1': 'AdminDeleteItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'page', '3': 2, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 4, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 5, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 6, '4': 1, '5': 9, '10': 'search'},
  ],
};

const EditorItemsRequest$json = const {
  '1': 'EditorItemsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const EditorItemRequest$json = const {
  '1': 'EditorItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const EditorEditItemRequest$json = const {
  '1': 'EditorEditItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'article', '3': 3, '4': 1, '5': 9, '10': 'article'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'price', '3': 5, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'available', '3': 6, '4': 1, '5': 8, '10': 'available'},
    const {'1': 'item_images', '3': 7, '4': 1, '5': 9, '10': 'itemImages'},
    const {'1': 'upload_images', '3': 8, '4': 1, '5': 9, '10': 'uploadImages'},
    const {'1': 'sort', '3': 9, '4': 1, '5': 13, '10': 'sort'},
  ],
};

const EditorDeleteItemRequest$json = const {
  '1': 'EditorDeleteItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'page', '3': 2, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 4, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 5, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 6, '4': 1, '5': 9, '10': 'search'},
  ],
};

const SellerItemsRequest$json = const {
  '1': 'SellerItemsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const SellerItemRequest$json = const {
  '1': 'SellerItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const SellerEditItemRequest$json = const {
  '1': 'SellerEditItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'article', '3': 3, '4': 1, '5': 9, '10': 'article'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'price', '3': 5, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'available', '3': 6, '4': 1, '5': 8, '10': 'available'},
    const {'1': 'item_images', '3': 7, '4': 1, '5': 9, '10': 'itemImages'},
    const {'1': 'upload_images', '3': 8, '4': 1, '5': 9, '10': 'uploadImages'},
    const {'1': 'sort', '3': 9, '4': 1, '5': 13, '10': 'sort'},
  ],
};

const SellerDeleteItemRequest$json = const {
  '1': 'SellerDeleteItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'page', '3': 2, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 4, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 5, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 6, '4': 1, '5': 9, '10': 'search'},
  ],
};

const ItemsRequest$json = const {
  '1': 'ItemsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'city_id', '3': 3, '4': 1, '5': 13, '10': 'cityId'},
  ],
};

const ItemRequest$json = const {
  '1': 'ItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminItemsResponse$json = const {
  '1': 'AdminItemsResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.v1.Item', '10': 'items'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminItemResponse$json = const {
  '1': 'AdminItemResponse',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.v1.Item', '10': 'item'},
  ],
};

const EditorItemsResponse$json = const {
  '1': 'EditorItemsResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.v1.Item', '10': 'items'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const EditorItemResponse$json = const {
  '1': 'EditorItemResponse',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.v1.Item', '10': 'item'},
  ],
};

const SellerItemsResponse$json = const {
  '1': 'SellerItemsResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.v1.Item', '10': 'items'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const SellerItemResponse$json = const {
  '1': 'SellerItemResponse',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.v1.Item', '10': 'item'},
  ],
};

const ItemsResponse$json = const {
  '1': 'ItemsResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.v1.Item', '10': 'items'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const ItemResponse$json = const {
  '1': 'ItemResponse',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.v1.Item', '10': 'item'},
  ],
};

const ImagesResponse$json = const {
  '1': 'ImagesResponse',
  '2': const [
    const {'1': 'images', '3': 1, '4': 3, '5': 11, '6': '.v1.ItemImage', '10': 'images'},
  ],
};

