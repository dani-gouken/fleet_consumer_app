// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceStateImpl _$$ServiceStateImplFromJson(Map<String, dynamic> json) =>
    _$ServiceStateImpl(
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: $enumDecodeNullable(_$ServiceStatusEnumMap, json['status']) ??
          ServiceStatus.loading,
    );

Map<String, dynamic> _$$ServiceStateImplToJson(_$ServiceStateImpl instance) =>
    <String, dynamic>{
      'services': instance.services,
      'status': _$ServiceStatusEnumMap[instance.status]!,
    };

const _$ServiceStatusEnumMap = {
  ServiceStatus.loading: 'loading',
  ServiceStatus.loaded: 'loaded',
  ServiceStatus.error: 'error',
};
