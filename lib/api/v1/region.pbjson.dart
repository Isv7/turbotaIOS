///
//  Generated code. Do not modify.
//  source: region.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Region$json = const {
  '1': 'Region',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cities', '3': 3, '4': 3, '5': 11, '6': '.v1.City', '10': 'cities'},
  ],
};

const City$json = const {
  '1': 'City',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'region_id', '3': 2, '4': 1, '5': 13, '10': 'regionId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'objects', '3': 4, '4': 3, '5': 11, '6': '.v1.Object', '10': 'objects'},
    const {'1': 'region', '3': 5, '4': 1, '5': 11, '6': '.v1.Region', '10': 'region'},
  ],
};

const Object$json = const {
  '1': 'Object',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const RegionsResponse$json = const {
  '1': 'RegionsResponse',
  '2': const [
    const {'1': 'regions', '3': 1, '4': 3, '5': 11, '6': '.v1.Region', '10': 'regions'},
  ],
};

const AdminEditRegionRequest$json = const {
  '1': 'AdminEditRegionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cities', '3': 3, '4': 3, '5': 11, '6': '.v1.City', '10': 'cities'},
  ],
};

const AdminDeleteRegionRequest$json = const {
  '1': 'AdminDeleteRegionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

