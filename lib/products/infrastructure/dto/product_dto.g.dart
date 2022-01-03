// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map json) => _$_ProductDTO(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      justDropped: json['justDropped'] as bool,
      isDeleted: json['isDeleted'] as bool,
      status: $enumDecode(_$_StatusEnumMap, json['status']),
      rank: json['rank'] as int,
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'imageUrls': instance.imageUrls,
      'justDropped': instance.justDropped,
      'isDeleted': instance.isDeleted,
      'status': _$_StatusEnumMap[instance.status],
      'rank': instance.rank,
    };

const _$_StatusEnumMap = {
  _Status.active: 'active',
  _Status.inactive: 'inactive',
};
