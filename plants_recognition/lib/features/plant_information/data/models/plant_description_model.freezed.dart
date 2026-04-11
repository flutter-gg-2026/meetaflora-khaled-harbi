// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_description_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantDescriptionModel {

 String get description;
/// Create a copy of PlantDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantDescriptionModelCopyWith<PlantDescriptionModel> get copyWith => _$PlantDescriptionModelCopyWithImpl<PlantDescriptionModel>(this as PlantDescriptionModel, _$identity);

  /// Serializes this PlantDescriptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantDescriptionModel&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'PlantDescriptionModel(description: $description)';
}


}

/// @nodoc
abstract mixin class $PlantDescriptionModelCopyWith<$Res>  {
  factory $PlantDescriptionModelCopyWith(PlantDescriptionModel value, $Res Function(PlantDescriptionModel) _then) = _$PlantDescriptionModelCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$PlantDescriptionModelCopyWithImpl<$Res>
    implements $PlantDescriptionModelCopyWith<$Res> {
  _$PlantDescriptionModelCopyWithImpl(this._self, this._then);

  final PlantDescriptionModel _self;
  final $Res Function(PlantDescriptionModel) _then;

/// Create a copy of PlantDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantDescriptionModel].
extension PlantDescriptionModelPatterns on PlantDescriptionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantDescriptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantDescriptionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantDescriptionModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantDescriptionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantDescriptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantDescriptionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantDescriptionModel() when $default != null:
return $default(_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description)  $default,) {final _that = this;
switch (_that) {
case _PlantDescriptionModel():
return $default(_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description)?  $default,) {final _that = this;
switch (_that) {
case _PlantDescriptionModel() when $default != null:
return $default(_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantDescriptionModel implements PlantDescriptionModel {
  const _PlantDescriptionModel({required this.description});
  factory _PlantDescriptionModel.fromJson(Map<String, dynamic> json) => _$PlantDescriptionModelFromJson(json);

@override final  String description;

/// Create a copy of PlantDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantDescriptionModelCopyWith<_PlantDescriptionModel> get copyWith => __$PlantDescriptionModelCopyWithImpl<_PlantDescriptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantDescriptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantDescriptionModel&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'PlantDescriptionModel(description: $description)';
}


}

/// @nodoc
abstract mixin class _$PlantDescriptionModelCopyWith<$Res> implements $PlantDescriptionModelCopyWith<$Res> {
  factory _$PlantDescriptionModelCopyWith(_PlantDescriptionModel value, $Res Function(_PlantDescriptionModel) _then) = __$PlantDescriptionModelCopyWithImpl;
@override @useResult
$Res call({
 String description
});




}
/// @nodoc
class __$PlantDescriptionModelCopyWithImpl<$Res>
    implements _$PlantDescriptionModelCopyWith<$Res> {
  __$PlantDescriptionModelCopyWithImpl(this._self, this._then);

  final _PlantDescriptionModel _self;
  final $Res Function(_PlantDescriptionModel) _then;

/// Create a copy of PlantDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_PlantDescriptionModel(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
