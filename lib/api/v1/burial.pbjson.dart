///
//  Generated code. Do not modify.
//  source: burial.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Burial$json = const {
  '1': 'Burial',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'created_by', '3': 2, '4': 1, '5': 13, '10': 'createdBy'},
    const {'1': 'edited_by', '3': 3, '4': 1, '5': 13, '10': 'editedBy'},
    const {'1': 'date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'birthdate', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthdate'},
    const {'1': 'buried_name', '3': 6, '4': 1, '5': 9, '10': 'buriedName'},
    const {'1': 'buried_surname', '3': 7, '4': 1, '5': 9, '10': 'buriedSurname'},
    const {'1': 'buried_patronymic', '3': 8, '4': 1, '5': 9, '10': 'buriedPatronymic'},
    const {'1': 'nationality', '3': 9, '4': 1, '5': 9, '10': 'nationality'},
    const {'1': 'information', '3': 10, '4': 1, '5': 9, '10': 'information'},
    const {'1': 'relative_name', '3': 11, '4': 1, '5': 9, '10': 'relativeName'},
    const {'1': 'relative_surname', '3': 12, '4': 1, '5': 9, '10': 'relativeSurname'},
    const {'1': 'relative_patronymic', '3': 13, '4': 1, '5': 9, '10': 'relativePatronymic'},
    const {'1': 'relative_phone', '3': 14, '4': 1, '5': 9, '10': 'relativePhone'},
    const {'1': 'subsector', '3': 15, '4': 1, '5': 11, '6': '.v1.Subsector', '10': 'subsector'},
    const {'1': 'row', '3': 16, '4': 1, '5': 9, '10': 'row'},
    const {'1': 'place', '3': 17, '4': 1, '5': 9, '10': 'place'},
    const {'1': 'user', '3': 18, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
    const {'1': 'status', '3': 19, '4': 1, '5': 13, '10': 'status'},
    const {'1': 'coordinates', '3': 20, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminBurialsRequest$json = const {
  '1': 'AdminBurialsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const AdminBurialRequest$json = const {
  '1': 'AdminBurialRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditBurialRequest$json = const {
  '1': 'AdminEditBurialRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'birthdate', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthdate'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'buried_name', '3': 4, '4': 1, '5': 9, '10': 'buriedName'},
    const {'1': 'buried_surname', '3': 5, '4': 1, '5': 9, '10': 'buriedSurname'},
    const {'1': 'buried_patronymic', '3': 6, '4': 1, '5': 9, '10': 'buriedPatronymic'},
    const {'1': 'nationality', '3': 7, '4': 1, '5': 9, '10': 'nationality'},
    const {'1': 'information', '3': 8, '4': 1, '5': 9, '10': 'information'},
    const {'1': 'relative_name', '3': 9, '4': 1, '5': 9, '10': 'relativeName'},
    const {'1': 'relative_surname', '3': 10, '4': 1, '5': 9, '10': 'relativeSurname'},
    const {'1': 'relative_patronymic', '3': 11, '4': 1, '5': 9, '10': 'relativePatronymic'},
    const {'1': 'relative_phone', '3': 12, '4': 1, '5': 9, '10': 'relativePhone'},
    const {'1': 'subsector_id', '3': 13, '4': 1, '5': 13, '10': 'subsectorId'},
    const {'1': 'row', '3': 14, '4': 1, '5': 9, '10': 'row'},
    const {'1': 'place', '3': 15, '4': 1, '5': 9, '10': 'place'},
    const {'1': 'coordinates', '3': 16, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminDeleteBurialRequest$json = const {
  '1': 'AdminDeleteBurialRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'page', '3': 2, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 4, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 5, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 6, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 7, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const BurialSearchRequest$json = const {
  '1': 'BurialSearchRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 2, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'patronymic', '3': 3, '4': 1, '5': 9, '10': 'patronymic'},
    const {'1': 'year', '3': 4, '4': 1, '5': 9, '10': 'year'},
    const {'1': 'cemetery_id', '3': 5, '4': 1, '5': 13, '10': 'cemeteryId'},
  ],
};

const AdminBurialsAutocompleteRequest$json = const {
  '1': 'AdminBurialsAutocompleteRequest',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 1, '5': 9, '10': 'sectors'},
  ],
};

const AdminNewBurialsRequest$json = const {
  '1': 'AdminNewBurialsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const AdminNewBurialRequest$json = const {
  '1': 'AdminNewBurialRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminNewEditBurialRequest$json = const {
  '1': 'AdminNewEditBurialRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'birthdate', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthdate'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'buried_name', '3': 4, '4': 1, '5': 9, '10': 'buriedName'},
    const {'1': 'buried_surname', '3': 5, '4': 1, '5': 9, '10': 'buriedSurname'},
    const {'1': 'buried_patronymic', '3': 6, '4': 1, '5': 9, '10': 'buriedPatronymic'},
    const {'1': 'relative_name', '3': 7, '4': 1, '5': 9, '10': 'relativeName'},
    const {'1': 'relative_surname', '3': 8, '4': 1, '5': 9, '10': 'relativeSurname'},
    const {'1': 'relative_patronymic', '3': 9, '4': 1, '5': 9, '10': 'relativePatronymic'},
    const {'1': 'relative_phone', '3': 10, '4': 1, '5': 9, '10': 'relativePhone'},
    const {'1': 'subsector_id', '3': 11, '4': 1, '5': 13, '10': 'subsectorId'},
    const {'1': 'row', '3': 12, '4': 1, '5': 9, '10': 'row'},
    const {'1': 'place', '3': 13, '4': 1, '5': 9, '10': 'place'},
    const {'1': 'coordinates', '3': 14, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminNewBurialSetStateRequest$json = const {
  '1': 'AdminNewBurialSetStateRequest',
  '2': const [
    const {'1': 'Status', '3': 1, '4': 1, '5': 13, '10': 'Status'},
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
  ],
};

const AdminBurialsResponse$json = const {
  '1': 'AdminBurialsResponse',
  '2': const [
    const {'1': 'burials', '3': 1, '4': 3, '5': 11, '6': '.v1.Burial', '10': 'burials'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const BurialsResponse$json = const {
  '1': 'BurialsResponse',
  '2': const [
    const {'1': 'burials', '3': 1, '4': 3, '5': 11, '6': '.v1.Burial', '10': 'burials'},
  ],
};

const AdminBurialResponse$json = const {
  '1': 'AdminBurialResponse',
  '2': const [
    const {'1': 'burial', '3': 1, '4': 1, '5': 11, '6': '.v1.Burial', '10': 'burial'},
  ],
};

const AdminBurialsAutocompleteResponse$json = const {
  '1': 'AdminBurialsAutocompleteResponse',
  '2': const [
    const {'1': 'subsectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Subsector', '10': 'subsectors'},
  ],
};

const AdminNewBurialsResponse$json = const {
  '1': 'AdminNewBurialsResponse',
  '2': const [
    const {'1': 'burials', '3': 1, '4': 3, '5': 11, '6': '.v1.Burial', '10': 'burials'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminNewBurialResponse$json = const {
  '1': 'AdminNewBurialResponse',
  '2': const [
    const {'1': 'burial', '3': 1, '4': 1, '5': 11, '6': '.v1.Burial', '10': 'burial'},
  ],
};

