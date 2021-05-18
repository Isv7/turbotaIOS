///
//  Generated code. Do not modify.
//  source: editor.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const EditorEditProfileRequest$json = const {
  '1': 'EditorEditProfileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 3, '4': 1, '5': 9, '10': 'surname'},
    const {'1': 'patronymic', '3': 4, '4': 1, '5': 9, '10': 'patronymic'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 7, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'role', '3': 8, '4': 1, '5': 13, '10': 'role'},
    const {'1': 'active', '3': 9, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'subject', '3': 10, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'fop_name', '3': 11, '4': 1, '5': 9, '10': 'fopName'},
    const {'1': 'fio', '3': 12, '4': 1, '5': 9, '10': 'fio'},
    const {'1': 'inn', '3': 13, '4': 1, '5': 9, '10': 'inn'},
    const {'1': 'legal_address', '3': 14, '4': 1, '5': 9, '10': 'legalAddress'},
    const {'1': 'account', '3': 15, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'mfo', '3': 16, '4': 1, '5': 9, '10': 'mfo'},
    const {'1': 'bank', '3': 17, '4': 1, '5': 9, '10': 'bank'},
    const {'1': 'legal_phone', '3': 18, '4': 1, '5': 9, '10': 'legalPhone'},
    const {'1': 'viber_id', '3': 19, '4': 1, '5': 9, '10': 'viberId'},
  ],
};

const EditorBurialsRequest$json = const {
  '1': 'EditorBurialsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const EditorNewBurialsRequest$json = const {
  '1': 'EditorNewBurialsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 13, '10': 'page'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'sort', '3': 3, '4': 1, '5': 9, '10': 'sort'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'search', '3': 5, '4': 1, '5': 9, '10': 'search'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const EditorNewBurialRequest$json = const {
  '1': 'EditorNewBurialRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const EditorEditNewBurialRequest$json = const {
  '1': 'EditorEditNewBurialRequest',
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

const EditorDeleteNewBurialRequest$json = const {
  '1': 'EditorDeleteNewBurialRequest',
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

const EditorBurialsAutocompleteRequest$json = const {
  '1': 'EditorBurialsAutocompleteRequest',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 1, '5': 9, '10': 'sectors'},
  ],
};

const EditorSubsectorsAutocompleteRequest$json = const {
  '1': 'EditorSubsectorsAutocompleteRequest',
  '2': const [
    const {'1': 'cemeteries', '3': 1, '4': 1, '5': 9, '10': 'cemeteries'},
  ],
};

const EditorDeleteFileRequest$json = const {
  '1': 'EditorDeleteFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const EditorCemeterySectorsRequest$json = const {
  '1': 'EditorCemeterySectorsRequest',
  '2': const [
    const {'1': 'cemetery_id', '3': 1, '4': 1, '5': 13, '10': 'cemeteryId'},
  ],
};

const EditorSectorSubsectorsRequest$json = const {
  '1': 'EditorSectorSubsectorsRequest',
  '2': const [
    const {'1': 'sector_id', '3': 1, '4': 1, '5': 13, '10': 'sectorId'},
  ],
};

const EditorProfileResponse$json = const {
  '1': 'EditorProfileResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.v1.User', '10': 'user'},
  ],
};

const EditorBurialsResponse$json = const {
  '1': 'EditorBurialsResponse',
  '2': const [
    const {'1': 'burials', '3': 1, '4': 3, '5': 11, '6': '.v1.Burial', '10': 'burials'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const EditorNewBurialsResponse$json = const {
  '1': 'EditorNewBurialsResponse',
  '2': const [
    const {'1': 'burials', '3': 1, '4': 3, '5': 11, '6': '.v1.Burial', '10': 'burials'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const EditorNewBurialResponse$json = const {
  '1': 'EditorNewBurialResponse',
  '2': const [
    const {'1': 'burial', '3': 1, '4': 1, '5': 11, '6': '.v1.Burial', '10': 'burial'},
  ],
};

const EditorBurialsAutocompleteResponse$json = const {
  '1': 'EditorBurialsAutocompleteResponse',
  '2': const [
    const {'1': 'subsectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Subsector', '10': 'subsectors'},
  ],
};

const EditorSubsectorsAutocompleteResponse$json = const {
  '1': 'EditorSubsectorsAutocompleteResponse',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Sector', '10': 'sectors'},
  ],
};

const EditorObjectsResponse$json = const {
  '1': 'EditorObjectsResponse',
  '2': const [
    const {'1': 'cemeteries', '3': 1, '4': 3, '5': 11, '6': '.v1.Cemetery', '10': 'cemeteries'},
  ],
};

const EditorCemeterySectorsResponse$json = const {
  '1': 'EditorCemeterySectorsResponse',
  '2': const [
    const {'1': 'sectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Sector', '10': 'sectors'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

const EditorSectorSubsectorsResponse$json = const {
  '1': 'EditorSectorSubsectorsResponse',
  '2': const [
    const {'1': 'subsectors', '3': 1, '4': 3, '5': 11, '6': '.v1.Subsector', '10': 'subsectors'},
    const {'1': 'total', '3': 2, '4': 1, '5': 13, '10': 'total'},
  ],
};

