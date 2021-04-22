///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 3, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'patronymic', '3': 4, '4': 1, '5': 9, '10': 'patronymic'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'firebase_id', '3': 6, '4': 1, '5': 9, '10': 'firebaseId'},
    const {'1': 'liqpay_key', '3': 7, '4': 1, '5': 9, '10': 'liqpayKey'},
    const {'1': 'email', '3': 8, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'role', '3': 9, '4': 1, '5': 13, '10': 'role'},
    const {'1': 'can_sell', '3': 10, '4': 1, '5': 8, '10': 'canSell'},
    const {'1': 'active', '3': 11, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'subject', '3': 12, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'fop_name', '3': 13, '4': 1, '5': 9, '10': 'fopName'},
    const {'1': 'fio', '3': 14, '4': 1, '5': 9, '10': 'fio'},
    const {'1': 'inn', '3': 15, '4': 1, '5': 9, '10': 'inn'},
    const {'1': 'legal_address', '3': 16, '4': 1, '5': 9, '10': 'legalAddress'},
    const {'1': 'account', '3': 17, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'mfo', '3': 18, '4': 1, '5': 9, '10': 'mfo'},
    const {'1': 'bank', '3': 19, '4': 1, '5': 9, '10': 'bank'},
    const {'1': 'legal_phone', '3': 20, '4': 1, '5': 9, '10': 'legalPhone'},
    const {'1': 'files', '3': 21, '4': 3, '5': 11, '6': '.v1.UserFile', '10': 'files'},
    const {'1': 'upload_images', '3': 22, '4': 3, '5': 11, '6': '.v1.ItemImage', '10': 'uploadImages'},
  ],
};

const UserFile$json = const {
  '1': 'UserFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
  ],
};

const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 2, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'patronymic', '3': 3, '4': 1, '5': 9, '10': 'patronymic'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'password', '3': 6, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'firebase_id', '3': 7, '4': 1, '5': 9, '10': 'firebaseId'},
    const {'1': 'firebase_token', '3': 8, '4': 1, '5': 9, '10': 'firebaseToken'},
  ],
};

const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const GoogleSignInRequest$json = const {
  '1': 'GoogleSignInRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'firebase_id', '3': 3, '4': 1, '5': 9, '10': 'firebaseId'},
    const {'1': 'firebase_token', '3': 4, '4': 1, '5': 9, '10': 'firebaseToken'},
  ],
};

const FacebookSignInRequest$json = const {
  '1': 'FacebookSignInRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'firebase_id', '3': 3, '4': 1, '5': 9, '10': 'firebaseId'},
    const {'1': 'firebase_token', '3': 4, '4': 1, '5': 9, '10': 'firebaseToken'},
  ],
};

const ForgotPasswordRequest$json = const {
  '1': 'ForgotPasswordRequest',
  '2': const [
    const {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    const {'1': 'firebase_token', '3': 2, '4': 1, '5': 9, '10': 'firebaseToken'},
  ],
};

const ChangePasswordRequest$json = const {
  '1': 'ChangePasswordRequest',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

const AdminUsersRequest$json = const {
  '1': 'AdminUsersRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
  ],
};

const AdminUserRequest$json = const {
  '1': 'AdminUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditUserRequest$json = const {
  '1': 'AdminEditUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 3, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'patronymic', '3': 4, '4': 1, '5': 9, '10': 'patronymic'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 7, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'role', '3': 8, '4': 1, '5': 13, '10': 'role'},
    const {'1': 'can_sell', '3': 9, '4': 1, '5': 8, '10': 'canSell'},
    const {'1': 'active', '3': 10, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'liqpay_key', '3': 11, '4': 1, '5': 9, '10': 'liqpayKey'},
  ],
};

const AdminDeleteUserRequest$json = const {
  '1': 'AdminDeleteUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'page', '3': 2, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 4, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 5, '4': 1, '5': 9, '10': 'direction'},
  ],
};

const UserResponse$json = const {
  '1': 'UserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'newUser', '3': 3, '4': 1, '5': 8, '10': 'newUser'},
  ],
};

const AdminUsersResponse$json = const {
  '1': 'AdminUsersResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.v1.User', '10': 'users'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminUserResponse$json = const {
  '1': 'AdminUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
  ],
};

const AdminEditorsResponse$json = const {
  '1': 'AdminEditorsResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.v1.User', '10': 'users'},
  ],
};

