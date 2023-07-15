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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateTimeFreezed _$DateTimeFreezedFromJson(Map<String, dynamic> json) {
  return _DateTimeFreezed.fromJson(json);
}

/// @nodoc
mixin _$DateTimeFreezed {
  @JsonDateTimeUTCConverter()
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_DateTimeFreezedCopyWith<$Res>
    implements $DateTimeFreezedCopyWith<$Res> {
  factory _$$_DateTimeFreezedCopyWith(
          _$_DateTimeFreezed value, $Res Function(_$_DateTimeFreezed) then) =
      __$$_DateTimeFreezedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonDateTimeUTCConverter() DateTime? date});
}

/// @nodoc
class __$$_DateTimeFreezedCopyWithImpl<$Res>
    extends _$DateTimeFreezedCopyWithImpl<$Res, _$_DateTimeFreezed>
    implements _$$_DateTimeFreezedCopyWith<$Res> {
  __$$_DateTimeFreezedCopyWithImpl(
      _$_DateTimeFreezed _value, $Res Function(_$_DateTimeFreezed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$_DateTimeFreezed(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateTimeFreezed implements _DateTimeFreezed {
  _$_DateTimeFreezed({@JsonDateTimeUTCConverter() required this.date});

  factory _$_DateTimeFreezed.fromJson(Map<String, dynamic> json) =>
      _$$_DateTimeFreezedFromJson(json);

  @override
  @JsonDateTimeUTCConverter()
  final DateTime? date;

  @override
  String toString() {
    return 'DateTimeFreezed(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateTimeFreezed &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateTimeFreezedCopyWith<_$_DateTimeFreezed> get copyWith =>
      __$$_DateTimeFreezedCopyWithImpl<_$_DateTimeFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateTimeFreezedToJson(
      this,
    );
  }
}

abstract class _DateTimeFreezed implements DateTimeFreezed {
  factory _DateTimeFreezed(
          {@JsonDateTimeUTCConverter() required final DateTime? date}) =
      _$_DateTimeFreezed;

  factory _DateTimeFreezed.fromJson(Map<String, dynamic> json) =
      _$_DateTimeFreezed.fromJson;

  @override
  @JsonDateTimeUTCConverter()
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_DateTimeFreezedCopyWith<_$_DateTimeFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}
