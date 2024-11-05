// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_json_converter_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateTimeFreezed _$DateTimeFreezedFromJson(Map<String, dynamic> json) {
  return _DateTimeFreezed.fromJson(json);
}

/// @nodoc
mixin _$DateTimeFreezed {
  @JsonDateTimeUTCConverter()
  DateTime? get date => throw _privateConstructorUsedError;

  /// Serializes this DateTimeFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateTimeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateTimeFreezedCopyWith<DateTimeFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeFreezedCopyWith<$Res> {
  factory $DateTimeFreezedCopyWith(
          DateTimeFreezed value, $Res Function(DateTimeFreezed) then) =
      _$DateTimeFreezedCopyWithImpl<$Res, DateTimeFreezed>;
  @useResult
  $Res call({@JsonDateTimeUTCConverter() DateTime? date});
}

/// @nodoc
class _$DateTimeFreezedCopyWithImpl<$Res, $Val extends DateTimeFreezed>
    implements $DateTimeFreezedCopyWith<$Res> {
  _$DateTimeFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateTimeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateTimeFreezedImplCopyWith<$Res>
    implements $DateTimeFreezedCopyWith<$Res> {
  factory _$$DateTimeFreezedImplCopyWith(_$DateTimeFreezedImpl value,
          $Res Function(_$DateTimeFreezedImpl) then) =
      __$$DateTimeFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonDateTimeUTCConverter() DateTime? date});
}

/// @nodoc
class __$$DateTimeFreezedImplCopyWithImpl<$Res>
    extends _$DateTimeFreezedCopyWithImpl<$Res, _$DateTimeFreezedImpl>
    implements _$$DateTimeFreezedImplCopyWith<$Res> {
  __$$DateTimeFreezedImplCopyWithImpl(
      _$DateTimeFreezedImpl _value, $Res Function(_$DateTimeFreezedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateTimeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$DateTimeFreezedImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateTimeFreezedImpl implements _DateTimeFreezed {
  _$DateTimeFreezedImpl({@JsonDateTimeUTCConverter() required this.date});

  factory _$DateTimeFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateTimeFreezedImplFromJson(json);

  @override
  @JsonDateTimeUTCConverter()
  final DateTime? date;

  @override
  String toString() {
    return 'DateTimeFreezed(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeFreezedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of DateTimeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeFreezedImplCopyWith<_$DateTimeFreezedImpl> get copyWith =>
      __$$DateTimeFreezedImplCopyWithImpl<_$DateTimeFreezedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateTimeFreezedImplToJson(
      this,
    );
  }
}

abstract class _DateTimeFreezed implements DateTimeFreezed {
  factory _DateTimeFreezed(
          {@JsonDateTimeUTCConverter() required final DateTime? date}) =
      _$DateTimeFreezedImpl;

  factory _DateTimeFreezed.fromJson(Map<String, dynamic> json) =
      _$DateTimeFreezedImpl.fromJson;

  @override
  @JsonDateTimeUTCConverter()
  DateTime? get date;

  /// Create a copy of DateTimeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateTimeFreezedImplCopyWith<_$DateTimeFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
