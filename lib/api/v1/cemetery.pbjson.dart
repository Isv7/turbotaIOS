///
//  Generated code. Do not modify.
//  source: cemetery.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Cemetery$json = const {
  '1': 'Cemetery',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'edited_by', '3': 2, '4': 1, '5': 13, '10': 'editedBy'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'city', '3': 4, '4': 1, '5': 11, '6': '.v1.City', '10': 'city'},
    const {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
    const {'1': 'sectors_num', '3': 6, '4': 1, '5': 13, '10': 'sectorsNum'},
    const {'1': 'subsectors_num', '3': 7, '4': 1, '5': 13, '10': 'subsectorsNum'},
    const {'1': 'burials_num', '3': 8, '4': 1, '5': 13, '10': 'burialsNum'},
    const {'1': 'editors', '3': 9, '4': 3, '5': 13, '10': 'editors'},
    const {'1': 'coordinates', '3': 10, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
    const {'1': 'scale', '3': 11, '4': 1, '5': 13, '10': 'scale'},
  ],
};

const Coordinate$json = const {
  '1': 'Coordinate',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

const AdminCemeteriesRequest$json = const {
  '1': 'AdminCemeteriesRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const AdminCemeteryRequest$json = const {
  '1': 'AdminCemeteryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditCemeteryRequest$json = const {
  '1': 'AdminEditCemeteryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'city_id', '3': 3, '4': 1, '5': 13, '10': 'cityId'},
    const {'1': 'editors', '3': 4, '4': 3, '5': 13, '10': 'editors'},
    const {'1': 'coordinates', '3': 5, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
    const {'1': 'scale', '3': 6, '4': 1, '5': 13, '10': 'scale'},
  ],
};

const AdminDeleteCemeteryRequest$json = const {
  '1': 'AdminDeleteCemeteryRequest',
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

const AdminCityCemeteriesRequest$json = const {
  '1': 'AdminCityCemeteriesRequest',
  '2': const [
    const {'1': 'city_id', '3': 1, '4': 1, '5': 13, '10': 'cityId'},
  ],
};

const AdminCemeteriesResponse$json = const {
  '1': 'AdminCemeteriesResponse',
  '2': const [
    const {'1': 'cemeteries', '3': 1, '4': 3, '5': 11, '6': '.v1.Cemetery', '10': 'cemeteries'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminCemeteryResponse$json = const {
  '1': 'AdminCemeteryResponse',
  '2': const [
    const {'1': 'cemetery', '3': 1, '4': 1, '5': 11, '6': '.v1.Cemetery', '10': 'cemetery'},
  ],
};

const AdminCityCemeteriesResponse$json = const {
  '1': 'AdminCityCemeteriesResponse',
  '2': const [
    const {'1': 'cemeteries', '3': 1, '4': 3, '5': 11, '6': '.v1.Cemetery', '10': 'cemeteries'},
  ],
};

