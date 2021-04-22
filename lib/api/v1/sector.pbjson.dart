///
//  Generated code. Do not modify.
//  source: sector.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Sector$json = const {
  '1': 'Sector',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'edited_by', '3': 2, '4': 1, '5': 13, '10': 'editedBy'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cemetery', '3': 4, '4': 1, '5': 11, '6': '.v1.Cemetery', '10': 'cemetery'},
    const {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
    const {'1': 'subsectors_num', '3': 6, '4': 1, '5': 13, '10': 'subsectorsNum'},
    const {'1': 'burials_num', '3': 7, '4': 1, '5': 13, '10': 'burialsNum'},
    const {'1': 'coordinates', '3': 8, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminSectorsRequest$json = const {
  '1': 'AdminSectorsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const AdminSectorRequest$json = const {
  '1': 'AdminSectorRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditSectorRequest$json = const {
  '1': 'AdminEditSectorRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cemetery_id', '3': 3, '4': 1, '5': 13, '10': 'cemeteryId'},
    const {'1': 'coordinates', '3': 4, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminDeleteSectorRequest$json = const {
  '1': 'AdminDeleteSectorRequest',
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

const AdminCemeterySectorsRequest$json = const {
  '1': 'AdminCemeterySectorsRequest',
  '2': const [
    const {'1': 'cemetery_id', '3': 1, '4': 1, '5': 13, '10': 'cemeteryId'},
  ],
};

const AdminSectorsResponse$json = const {
  '1': 'AdminSectorsResponse',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Sector', '10': 'sectors'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminSectorResponse$json = const {
  '1': 'AdminSectorResponse',
  '2': const [
    const {'1': 'sector', '3': 1, '4': 1, '5': 11, '6': '.v1.Sector', '10': 'sector'},
  ],
};

const AdminCemeterySectorsResponse$json = const {
  '1': 'AdminCemeterySectorsResponse',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Sector', '10': 'sectors'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

