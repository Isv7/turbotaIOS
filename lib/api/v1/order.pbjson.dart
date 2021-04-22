///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'burial_id', '3': 3, '4': 1, '5': 13, '10': 'burialId'},
    const {'1': 'edited_by', '3': 4, '4': 1, '5': 13, '10': 'editedBy'},
    const {'1': 'date', '3': 5, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 7, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'phone', '3': 8, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 9, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'amount', '3': 11, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'order_id', '3': 12, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'payment_id', '3': 13, '4': 1, '5': 9, '10': 'paymentId'},
    const {'1': 'notes', '3': 14, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'status', '3': 15, '4': 1, '5': 13, '10': 'status'},
    const {'1': 'burial', '3': 16, '4': 1, '5': 11, '6': '.v1.Burial', '10': 'burial'},
    const {'1': 'services', '3': 17, '4': 3, '5': 11, '6': '.v1.Service', '10': 'services'},
    const {'1': 'items', '3': 18, '4': 3, '5': 11, '6': '.v1.Item', '10': 'items'},
    const {'1': 'images', '3': 19, '4': 3, '5': 11, '6': '.v1.OrderImage', '10': 'images'},
  ],
};

const HistoryOrder$json = const {
  '1': 'HistoryOrder',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'burial', '3': 3, '4': 1, '5': 11, '6': '.v1.Burial', '10': 'burial'},
    const {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 6, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'phone', '3': 7, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 8, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'comment', '3': 9, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'amount', '3': 10, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'order_id', '3': 11, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'payment_id', '3': 12, '4': 1, '5': 9, '10': 'paymentId'},
    const {'1': 'status', '3': 13, '4': 1, '5': 13, '10': 'status'},
    const {'1': 'services', '3': 14, '4': 3, '5': 11, '6': '.v1.Service', '10': 'services'},
    const {'1': 'items', '3': 15, '4': 3, '5': 11, '6': '.v1.Item', '10': 'items'},
    const {'1': 'images', '3': 16, '4': 3, '5': 11, '6': '.v1.OrderImage', '10': 'images'},
  ],
};

const OrderImage$json = const {
  '1': 'OrderImage',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

const HistoryOrdersResponse$json = const {
  '1': 'HistoryOrdersResponse',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.v1.HistoryOrder', '10': 'orders'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminOrdersRequest$json = const {
  '1': 'AdminOrdersRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const AdminOrderRequest$json = const {
  '1': 'AdminOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditOrderRequest$json = const {
  '1': 'AdminEditOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'notes', '3': 2, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'order_images', '3': 3, '4': 1, '5': 9, '10': 'orderImages'},
    const {'1': 'upload_images', '3': 4, '4': 1, '5': 9, '10': 'uploadImages'},
  ],
};

const AdminChangeOrderStatusRequest$json = const {
  '1': 'AdminChangeOrderStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 13, '10': 'status'},
  ],
};

const EditorOrdersRequest$json = const {
  '1': 'EditorOrdersRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const EditorOrderRequest$json = const {
  '1': 'EditorOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const EditorEditOrderRequest$json = const {
  '1': 'EditorEditOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'notes', '3': 2, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'order_images', '3': 3, '4': 1, '5': 9, '10': 'orderImages'},
    const {'1': 'upload_images', '3': 4, '4': 1, '5': 9, '10': 'uploadImages'},
  ],
};

const EditorChangeOrderStatusRequest$json = const {
  '1': 'EditorChangeOrderStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 13, '10': 'status'},
  ],
};

const SellerOrdersRequest$json = const {
  '1': 'SellerOrdersRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const SellerOrderRequest$json = const {
  '1': 'SellerOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const SellerEditOrderRequest$json = const {
  '1': 'SellerEditOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'notes', '3': 2, '4': 1, '5': 9, '10': 'notes'},
  ],
};

const SellerChangeOrderStatusRequest$json = const {
  '1': 'SellerChangeOrderStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 13, '10': 'status'},
  ],
};

const CreateNewOrderRequest$json = const {
  '1': 'CreateNewOrderRequest',
  '2': const [
    const {'1': 'burial_id', '3': 1, '4': 1, '5': 13, '10': 'burialId'},
    const {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 4, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'services', '3': 5, '4': 3, '5': 13, '10': 'services'},
    const {'1': 'items', '3': 6, '4': 3, '5': 13, '10': 'items'},
    const {'1': 'phone', '3': 7, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 8, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'comment', '3': 9, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'amount', '3': 10, '4': 1, '5': 2, '10': 'amount'},
    const {'1': 'order_id', '3': 11, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'payment_id', '3': 12, '4': 1, '5': 9, '10': 'paymentId'},
    const {'1': 'status', '3': 13, '4': 1, '5': 13, '10': 'status'},
  ],
};

const GetNewOrderRequest$json = const {
  '1': 'GetNewOrderRequest',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
  ],
};

const HistoryOrdersRequest$json = const {
  '1': 'HistoryOrdersRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'page', '3': 2, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
  ],
};

const AdminOrdersResponse$json = const {
  '1': 'AdminOrdersResponse',
  '2': const [
    const {'1': 'Orders', '3': 1, '4': 3, '5': 11, '6': '.v1.Order', '10': 'Orders'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminOrderResponse$json = const {
  '1': 'AdminOrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.v1.Order', '10': 'order'},
  ],
};

const EditorOrdersResponse$json = const {
  '1': 'EditorOrdersResponse',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.v1.Order', '10': 'orders'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const EditorOrderResponse$json = const {
  '1': 'EditorOrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.v1.Order', '10': 'order'},
  ],
};

const SellerOrdersResponse$json = const {
  '1': 'SellerOrdersResponse',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.v1.Order', '10': 'orders'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const SellerOrderResponse$json = const {
  '1': 'SellerOrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.v1.Order', '10': 'order'},
  ],
};

const NewOrderResponse$json = const {
  '1': 'NewOrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.v1.Order', '10': 'order'},
  ],
};

