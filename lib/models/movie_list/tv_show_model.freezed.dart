// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TVShowModel _$TVShowModelFromJson(Map<String, dynamic> json) {
  return _TVShowModel.fromJson(json);
}

/// @nodoc
mixin _$TVShowModel {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  List<TVShow> get tv_shows => throw _privateConstructorUsedError;

  /// Serializes this TVShowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TVShowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TVShowModelCopyWith<TVShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVShowModelCopyWith<$Res> {
  factory $TVShowModelCopyWith(
    TVShowModel value,
    $Res Function(TVShowModel) then,
  ) = _$TVShowModelCopyWithImpl<$Res, TVShowModel>;
  @useResult
  $Res call({int total, int page, int pages, List<TVShow> tv_shows});
}

/// @nodoc
class _$TVShowModelCopyWithImpl<$Res, $Val extends TVShowModel>
    implements $TVShowModelCopyWith<$Res> {
  _$TVShowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TVShowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tv_shows = null,
  }) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            pages:
                null == pages
                    ? _value.pages
                    : pages // ignore: cast_nullable_to_non_nullable
                        as int,
            tv_shows:
                null == tv_shows
                    ? _value.tv_shows
                    : tv_shows // ignore: cast_nullable_to_non_nullable
                        as List<TVShow>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TVShowModelImplCopyWith<$Res>
    implements $TVShowModelCopyWith<$Res> {
  factory _$$TVShowModelImplCopyWith(
    _$TVShowModelImpl value,
    $Res Function(_$TVShowModelImpl) then,
  ) = __$$TVShowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, List<TVShow> tv_shows});
}

/// @nodoc
class __$$TVShowModelImplCopyWithImpl<$Res>
    extends _$TVShowModelCopyWithImpl<$Res, _$TVShowModelImpl>
    implements _$$TVShowModelImplCopyWith<$Res> {
  __$$TVShowModelImplCopyWithImpl(
    _$TVShowModelImpl _value,
    $Res Function(_$TVShowModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TVShowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tv_shows = null,
  }) {
    return _then(
      _$TVShowModelImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        pages:
            null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                    as int,
        tv_shows:
            null == tv_shows
                ? _value._tv_shows
                : tv_shows // ignore: cast_nullable_to_non_nullable
                    as List<TVShow>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TVShowModelImpl implements _TVShowModel {
  const _$TVShowModelImpl({
    required this.total,
    required this.page,
    required this.pages,
    required final List<TVShow> tv_shows,
  }) : _tv_shows = tv_shows;

  factory _$TVShowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TVShowModelImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  final List<TVShow> _tv_shows;
  @override
  List<TVShow> get tv_shows {
    if (_tv_shows is EqualUnmodifiableListView) return _tv_shows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tv_shows);
  }

  @override
  String toString() {
    return 'TVShowModel(total: $total, page: $page, pages: $pages, tv_shows: $tv_shows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TVShowModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tv_shows, _tv_shows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    page,
    pages,
    const DeepCollectionEquality().hash(_tv_shows),
  );

  /// Create a copy of TVShowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TVShowModelImplCopyWith<_$TVShowModelImpl> get copyWith =>
      __$$TVShowModelImplCopyWithImpl<_$TVShowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TVShowModelImplToJson(this);
  }
}

abstract class _TVShowModel implements TVShowModel {
  const factory _TVShowModel({
    required final int total,
    required final int page,
    required final int pages,
    required final List<TVShow> tv_shows,
  }) = _$TVShowModelImpl;

  factory _TVShowModel.fromJson(Map<String, dynamic> json) =
      _$TVShowModelImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  List<TVShow> get tv_shows;

  /// Create a copy of TVShowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TVShowModelImplCopyWith<_$TVShowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TVShow _$TVShowFromJson(Map<String, dynamic> json) {
  return _TVShow.fromJson(json);
}

/// @nodoc
mixin _$TVShow {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get permalink => throw _privateConstructorUsedError;
  String get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get image_thumbnail_path => throw _privateConstructorUsedError;

  /// Serializes this TVShow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TVShow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TVShowCopyWith<TVShow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVShowCopyWith<$Res> {
  factory $TVShowCopyWith(TVShow value, $Res Function(TVShow) then) =
      _$TVShowCopyWithImpl<$Res, TVShow>;
  @useResult
  $Res call({
    int id,
    String name,
    String permalink,
    String start_date,
    String? end_date,
    String country,
    String network,
    String status,
    String image_thumbnail_path,
  });
}

/// @nodoc
class _$TVShowCopyWithImpl<$Res, $Val extends TVShow>
    implements $TVShowCopyWith<$Res> {
  _$TVShowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TVShow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? start_date = null,
    Object? end_date = freezed,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? image_thumbnail_path = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            permalink:
                null == permalink
                    ? _value.permalink
                    : permalink // ignore: cast_nullable_to_non_nullable
                        as String,
            start_date:
                null == start_date
                    ? _value.start_date
                    : start_date // ignore: cast_nullable_to_non_nullable
                        as String,
            end_date:
                freezed == end_date
                    ? _value.end_date
                    : end_date // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String,
            network:
                null == network
                    ? _value.network
                    : network // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            image_thumbnail_path:
                null == image_thumbnail_path
                    ? _value.image_thumbnail_path
                    : image_thumbnail_path // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TVShowImplCopyWith<$Res> implements $TVShowCopyWith<$Res> {
  factory _$$TVShowImplCopyWith(
    _$TVShowImpl value,
    $Res Function(_$TVShowImpl) then,
  ) = __$$TVShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String permalink,
    String start_date,
    String? end_date,
    String country,
    String network,
    String status,
    String image_thumbnail_path,
  });
}

/// @nodoc
class __$$TVShowImplCopyWithImpl<$Res>
    extends _$TVShowCopyWithImpl<$Res, _$TVShowImpl>
    implements _$$TVShowImplCopyWith<$Res> {
  __$$TVShowImplCopyWithImpl(
    _$TVShowImpl _value,
    $Res Function(_$TVShowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TVShow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? start_date = null,
    Object? end_date = freezed,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? image_thumbnail_path = null,
  }) {
    return _then(
      _$TVShowImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        permalink:
            null == permalink
                ? _value.permalink
                : permalink // ignore: cast_nullable_to_non_nullable
                    as String,
        start_date:
            null == start_date
                ? _value.start_date
                : start_date // ignore: cast_nullable_to_non_nullable
                    as String,
        end_date:
            freezed == end_date
                ? _value.end_date
                : end_date // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String,
        network:
            null == network
                ? _value.network
                : network // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        image_thumbnail_path:
            null == image_thumbnail_path
                ? _value.image_thumbnail_path
                : image_thumbnail_path // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TVShowImpl implements _TVShow {
  const _$TVShowImpl({
    required this.id,
    required this.name,
    required this.permalink,
    required this.start_date,
    this.end_date,
    required this.country,
    required this.network,
    required this.status,
    required this.image_thumbnail_path,
  });

  factory _$TVShowImpl.fromJson(Map<String, dynamic> json) =>
      _$$TVShowImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String permalink;
  @override
  final String start_date;
  @override
  final String? end_date;
  @override
  final String country;
  @override
  final String network;
  @override
  final String status;
  @override
  final String image_thumbnail_path;

  @override
  String toString() {
    return 'TVShow(id: $id, name: $name, permalink: $permalink, start_date: $start_date, end_date: $end_date, country: $country, network: $network, status: $status, image_thumbnail_path: $image_thumbnail_path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TVShowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image_thumbnail_path, image_thumbnail_path) ||
                other.image_thumbnail_path == image_thumbnail_path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    permalink,
    start_date,
    end_date,
    country,
    network,
    status,
    image_thumbnail_path,
  );

  /// Create a copy of TVShow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TVShowImplCopyWith<_$TVShowImpl> get copyWith =>
      __$$TVShowImplCopyWithImpl<_$TVShowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TVShowImplToJson(this);
  }
}

abstract class _TVShow implements TVShow {
  const factory _TVShow({
    required final int id,
    required final String name,
    required final String permalink,
    required final String start_date,
    final String? end_date,
    required final String country,
    required final String network,
    required final String status,
    required final String image_thumbnail_path,
  }) = _$TVShowImpl;

  factory _TVShow.fromJson(Map<String, dynamic> json) = _$TVShowImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get permalink;
  @override
  String get start_date;
  @override
  String? get end_date;
  @override
  String get country;
  @override
  String get network;
  @override
  String get status;
  @override
  String get image_thumbnail_path;

  /// Create a copy of TVShow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TVShowImplCopyWith<_$TVShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
