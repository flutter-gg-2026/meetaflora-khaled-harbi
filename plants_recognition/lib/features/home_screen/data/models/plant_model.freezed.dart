// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantModel {

 String get id; String get title;@JsonKey(name: 'image_url') String get imageURL;
/// Create a copy of PlantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantModelCopyWith<PlantModel> get copyWith => _$PlantModelCopyWithImpl<PlantModel>(this as PlantModel, _$identity);

  /// Serializes this PlantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageURL);

@override
String toString() {
  return 'PlantModel(id: $id, title: $title, imageURL: $imageURL)';
}


}

/// @nodoc
abstract mixin class $PlantModelCopyWith<$Res>  {
  factory $PlantModelCopyWith(PlantModel value, $Res Function(PlantModel) _then) = _$PlantModelCopyWithImpl;
@useResult
$Res call({
 String id, String title,@JsonKey(name: 'image_url') String imageURL
});




}
/// @nodoc
class _$PlantModelCopyWithImpl<$Res>
    implements $PlantModelCopyWith<$Res> {
  _$PlantModelCopyWithImpl(this._self, this._then);

  final PlantModel _self;
  final $Res Function(PlantModel) _then;

/// Create a copy of PlantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? imageURL = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageURL: null == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantModel].
extension PlantModelPatterns on PlantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(name: 'image_url')  String imageURL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantModel() when $default != null:
return $default(_that.id,_that.title,_that.imageURL);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(name: 'image_url')  String imageURL)  $default,) {final _that = this;
switch (_that) {
case _PlantModel():
return $default(_that.id,_that.title,_that.imageURL);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title, @JsonKey(name: 'image_url')  String imageURL)?  $default,) {final _that = this;
switch (_that) {
case _PlantModel() when $default != null:
return $default(_that.id,_that.title,_that.imageURL);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantModel implements PlantModel {
  const _PlantModel({required this.id, required this.title, @JsonKey(name: 'image_url') required this.imageURL});
  factory _PlantModel.fromJson(Map<String, dynamic> json) => _$PlantModelFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey(name: 'image_url') final  String imageURL;

/// Create a copy of PlantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantModelCopyWith<_PlantModel> get copyWith => __$PlantModelCopyWithImpl<_PlantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageURL);

@override
String toString() {
  return 'PlantModel(id: $id, title: $title, imageURL: $imageURL)';
}


}

/// @nodoc
abstract mixin class _$PlantModelCopyWith<$Res> implements $PlantModelCopyWith<$Res> {
  factory _$PlantModelCopyWith(_PlantModel value, $Res Function(_PlantModel) _then) = __$PlantModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title,@JsonKey(name: 'image_url') String imageURL
});




}
/// @nodoc
class __$PlantModelCopyWithImpl<$Res>
    implements _$PlantModelCopyWith<$Res> {
  __$PlantModelCopyWithImpl(this._self, this._then);

  final _PlantModel _self;
  final $Res Function(_PlantModel) _then;

/// Create a copy of PlantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageURL = null,}) {
  return _then(_PlantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageURL: null == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
