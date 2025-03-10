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

TvShowsListModel _$TvShowsListModelFromJson(Map<String, dynamic> json) {
  return _TvShowsListModel.fromJson(json);
}

/// @nodoc
mixin _$TvShowsListModel {
  int get total =>
      throw _privateConstructorUsedError; // Total number of TV shows
  int get page => throw _privateConstructorUsedError; // Current page number
  int get pages => throw _privateConstructorUsedError; // Total number of pages
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow => throw _privateConstructorUsedError;

  /// Serializes this TvShowsListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShowsListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowsListModelCopyWith<TvShowsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsListModelCopyWith<$Res> {
  factory $TvShowsListModelCopyWith(
    TvShowsListModel value,
    $Res Function(TvShowsListModel) then,
  ) = _$TvShowsListModelCopyWithImpl<$Res, TvShowsListModel>;
  @useResult
  $Res call({
    int total,
    int page,
    int pages,
    @JsonKey(name: 'tv_shows') List<TvShows> tvShow,
  });
}

/// @nodoc
class _$TvShowsListModelCopyWithImpl<$Res, $Val extends TvShowsListModel>
    implements $TvShowsListModelCopyWith<$Res> {
  _$TvShowsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShowsListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShow = null,
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
            tvShow:
                null == tvShow
                    ? _value.tvShow
                    : tvShow // ignore: cast_nullable_to_non_nullable
                        as List<TvShows>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TvShowsListModelImplCopyWith<$Res>
    implements $TvShowsListModelCopyWith<$Res> {
  factory _$$TvShowsListModelImplCopyWith(
    _$TvShowsListModelImpl value,
    $Res Function(_$TvShowsListModelImpl) then,
  ) = __$$TvShowsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int page,
    int pages,
    @JsonKey(name: 'tv_shows') List<TvShows> tvShow,
  });
}

/// @nodoc
class __$$TvShowsListModelImplCopyWithImpl<$Res>
    extends _$TvShowsListModelCopyWithImpl<$Res, _$TvShowsListModelImpl>
    implements _$$TvShowsListModelImplCopyWith<$Res> {
  __$$TvShowsListModelImplCopyWithImpl(
    _$TvShowsListModelImpl _value,
    $Res Function(_$TvShowsListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TvShowsListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShow = null,
  }) {
    return _then(
      _$TvShowsListModelImpl(
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
        tvShow:
            null == tvShow
                ? _value._tvShow
                : tvShow // ignore: cast_nullable_to_non_nullable
                    as List<TvShows>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowsListModelImpl implements _TvShowsListModel {
  _$TvShowsListModelImpl({
    this.total = 0,
    this.page = 0,
    this.pages = 0,
    @JsonKey(name: 'tv_shows') final List<TvShows> tvShow = const [],
  }) : _tvShow = tvShow;

  factory _$TvShowsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsListModelImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  // Total number of TV shows
  @override
  @JsonKey()
  final int page;
  // Current page number
  @override
  @JsonKey()
  final int pages;
  // Total number of pages
  final List<TvShows> _tvShow;
  // Total number of pages
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow {
    if (_tvShow is EqualUnmodifiableListView) return _tvShow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShow);
  }

  @override
  String toString() {
    return 'TvShowsListModel(total: $total, page: $page, pages: $pages, tvShow: $tvShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsListModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShow, _tvShow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    page,
    pages,
    const DeepCollectionEquality().hash(_tvShow),
  );

  /// Create a copy of TvShowsListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsListModelImplCopyWith<_$TvShowsListModelImpl> get copyWith =>
      __$$TvShowsListModelImplCopyWithImpl<_$TvShowsListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsListModelImplToJson(this);
  }
}

abstract class _TvShowsListModel implements TvShowsListModel {
  factory _TvShowsListModel({
    final int total,
    final int page,
    final int pages,
    @JsonKey(name: 'tv_shows') final List<TvShows> tvShow,
  }) = _$TvShowsListModelImpl;

  factory _TvShowsListModel.fromJson(Map<String, dynamic> json) =
      _$TvShowsListModelImpl.fromJson;

  @override
  int get total; // Total number of TV shows
  @override
  int get page; // Current page number
  @override
  int get pages; // Total number of pages
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow;

  /// Create a copy of TvShowsListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowsListModelImplCopyWith<_$TvShowsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return _TvShows.fromJson(json);
}

/// @nodoc
mixin _$TvShows {
  int get id => throw _privateConstructorUsedError; // Unique ID of the TV show
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError; // Name of the TV show
  String get permalink =>
      throw _privateConstructorUsedError; // Permalink of the TV show
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError; // Start date of the TV show
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError; // End date of the TV show (nullable)
  String get country =>
      throw _privateConstructorUsedError; // Country of the TV show
  String get network =>
      throw _privateConstructorUsedError; // Network of the TV show
  String get status =>
      throw _privateConstructorUsedError; // Status of the TV show (Running/Ended)
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath => throw _privateConstructorUsedError;

  /// Serializes this TvShows to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowsCopyWith<TvShows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) then) =
      _$TvShowsCopyWithImpl<$Res, TvShows>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name') String name,
    String permalink,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    String country,
    String network,
    String status,
    @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
  });
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res, $Val extends TvShows>
    implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
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
            startDate:
                null == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as String,
            endDate:
                null == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as String,
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
            imageThumbnailPath:
                null == imageThumbnailPath
                    ? _value.imageThumbnailPath
                    : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TvShowsImplCopyWith<$Res> implements $TvShowsCopyWith<$Res> {
  factory _$$TvShowsImplCopyWith(
    _$TvShowsImpl value,
    $Res Function(_$TvShowsImpl) then,
  ) = __$$TvShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name') String name,
    String permalink,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    String country,
    String network,
    String status,
    @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
  });
}

/// @nodoc
class __$$TvShowsImplCopyWithImpl<$Res>
    extends _$TvShowsCopyWithImpl<$Res, _$TvShowsImpl>
    implements _$$TvShowsImplCopyWith<$Res> {
  __$$TvShowsImplCopyWithImpl(
    _$TvShowsImpl _value,
    $Res Function(_$TvShowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(
      _$TvShowsImpl(
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
        startDate:
            null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as String,
        endDate:
            null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as String,
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
        imageThumbnailPath:
            null == imageThumbnailPath
                ? _value.imageThumbnailPath
                : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowsImpl implements _TvShows {
  _$TvShowsImpl({
    this.id = 0,
    @JsonKey(name: 'name') this.name = '',
    this.permalink = '',
    @JsonKey(name: 'start_date') this.startDate = '',
    @JsonKey(name: 'end_date') this.endDate = '',
    this.country = '',
    this.network = '',
    this.status = '',
    @JsonKey(name: 'image_thumbnail_path') this.imageThumbnailPath = '',
  });

  factory _$TvShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  // Unique ID of the TV show
  @override
  @JsonKey(name: 'name')
  final String name;
  // Name of the TV show
  @override
  @JsonKey()
  final String permalink;
  // Permalink of the TV show
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  // Start date of the TV show
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  // End date of the TV show (nullable)
  @override
  @JsonKey()
  final String country;
  // Country of the TV show
  @override
  @JsonKey()
  final String network;
  // Network of the TV show
  @override
  @JsonKey()
  final String status;
  // Status of the TV show (Running/Ended)
  @override
  @JsonKey(name: 'image_thumbnail_path')
  final String imageThumbnailPath;

  @override
  String toString() {
    return 'TvShows(id: $id, name: $name, permalink: $permalink, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    permalink,
    startDate,
    endDate,
    country,
    network,
    status,
    imageThumbnailPath,
  );

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      __$$TvShowsImplCopyWithImpl<_$TvShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsImplToJson(this);
  }
}

abstract class _TvShows implements TvShows {
  factory _TvShows({
    final int id,
    @JsonKey(name: 'name') final String name,
    final String permalink,
    @JsonKey(name: 'start_date') final String startDate,
    @JsonKey(name: 'end_date') final String endDate,
    final String country,
    final String network,
    final String status,
    @JsonKey(name: 'image_thumbnail_path') final String imageThumbnailPath,
  }) = _$TvShowsImpl;

  factory _TvShows.fromJson(Map<String, dynamic> json) = _$TvShowsImpl.fromJson;

  @override
  int get id; // Unique ID of the TV show
  @override
  @JsonKey(name: 'name')
  String get name; // Name of the TV show
  @override
  String get permalink; // Permalink of the TV show
  @override
  @JsonKey(name: 'start_date')
  String get startDate; // Start date of the TV show
  @override
  @JsonKey(name: 'end_date')
  String get endDate; // End date of the TV show (nullable)
  @override
  String get country; // Country of the TV show
  @override
  String get network; // Network of the TV show
  @override
  String get status; // Status of the TV show (Running/Ended)
  @override
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
