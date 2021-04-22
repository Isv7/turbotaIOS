///
//  Generated code. Do not modify.
//  source: subsector.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Subsector$json = const {
  '1': 'Subsector',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'edited_by', '3': 2, '4': 1, '5': 13, '10': 'editedBy'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'sector', '3': 4, '4': 1, '5': 11, '6': '.v1.Sector', '10': 'sector'},
    const {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
    const {'1': 'burials_num', '3': 6, '4': 1, '5': 13, '10': 'burialsNum'},
    const {'1': 'rows_num', '3': 7, '4': 1, '5': 13, '10': 'rowsNum'},
    const {'1': 'coordinates', '3': 8, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
    const {'1': 'burials_computed', '3': 9, '4': 1, '5': 8, '10': 'burialsComputed'},
    const {'1': 'other_subsectors', '3': 10, '4': 3, '5': 11, '6': '.v1.OtherSubsector', '10': 'otherSubsectors'},
    const {'1': 'sectors', '3': 11, '4': 3, '5': 11, '6': '.v1.Sector', '10': 'sectors'},
    const {'1': 'rows', '3': 12, '4': 3, '5': 11, '6': '.v1.Row', '10': 'rows'},
  ],
};

const OtherSubsector$json = const {
  '1': 'OtherSubsector',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'coordinates', '3': 2, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const Row$json = const {
  '1': 'Row',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'burials', '3': 2, '4': 3, '5': 11, '6': '.v1.RowBurial', '10': 'burials'},
  ],
};

const RowBurial$json = const {
  '1': 'RowBurial',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'birthdate', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthdate'},
    const {'1': 'buried_name', '3': 4, '4': 1, '5': 9, '10': 'buriedName'},
    const {'1': 'buried_surname', '3': 5, '4': 1, '5': 9, '10': 'buriedSurname'},
    const {'1': 'buried_patronymic', '3': 6, '4': 1, '5': 9, '10': 'buriedPatronymic'},
    const {'1': 'place', '3': 7, '4': 1, '5': 9, '10': 'place'},
    const {'1': 'coordinates', '3': 8, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminSubsectorsRequest$json = const {
  '1': 'AdminSubsectorsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const AdminSubsectorRequest$json = const {
  '1': 'AdminSubsectorRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const AdminEditSubsectorRequest$json = const {
  '1': 'AdminEditSubsectorRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'sector_id', '3': 3, '4': 1, '5': 13, '10': 'sectorId'},
    const {'1': 'coordinates', '3': 4, '4': 3, '5': 11, '6': '.v1.Coordinate', '10': 'coordinates'},
  ],
};

const AdminSaveSubsectorBurialsCoordinatesRequest$json = const {
  '1': 'AdminSaveSubsectorBurialsCoordinatesRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

const AdminDeleteSubsectorRequest$json = const {
  '1': 'AdminDeleteSubsectorRequest',
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

const AdminSectorSubsectorsRequest$json = const {
  '1': 'AdminSectorSubsectorsRequest',
  '2': const [
    const {'1': 'sector_id', '3': 1, '4': 1, '5': 13, '10': 'sectorId'},
  ],
};

const AdminSubsectorsAutocompleteRequest$json = const {
  '1': 'AdminSubsectorsAutocompleteRequest',
  '2': const [
    const {'1': 'cemeteries', '3': 1, '4': 1, '5': 9, '10': 'cemeteries'},
  ],
};

const AdminSubsectorsResponse$json = const {
  '1': 'AdminSubsectorsResponse',
  '2': const [
    const {'1': 'subsectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Subsector', '10': 'subsectors'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminSubsectorResponse$json = const {
  '1': 'AdminSubsectorResponse',
  '2': const [
    const {'1': 'subsector', '3': 1, '4': 1, '5': 11, '6': '.v1.Subsector', '10': 'subsector'},
  ],
};

const AdminSectorSubsectorsResponse$json = const {
  '1': 'AdminSectorSubsectorsResponse',
  '2': const [
    const {'1': 'subsectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Subsector', '10': 'subsectors'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const AdminSubsectorsAutocompleteResponse$json = const {
  '1': 'AdminSubsectorsAutocompleteResponse',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Sector', '10': 'sectors'},
  ],
};

