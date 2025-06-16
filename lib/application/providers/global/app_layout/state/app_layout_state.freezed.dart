// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_layout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLayoutState {
// TODO: Define state properties for app layout (e.g., selected tab index)
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLayoutStateCopyWith<AppLayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLayoutStateCopyWith<$Res> {
  factory $AppLayoutStateCopyWith(
          AppLayoutState value, $Res Function(AppLayoutState) then) =
      _$AppLayoutStateCopyWithImpl<$Res, AppLayoutState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$AppLayoutStateCopyWithImpl<$Res, $Val extends AppLayoutState>
    implements $AppLayoutStateCopyWith<$Res> {
  _$AppLayoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLayoutStateImplCopyWith<$Res>
    implements $AppLayoutStateCopyWith<$Res> {
  factory _$$AppLayoutStateImplCopyWith(_$AppLayoutStateImpl value,
          $Res Function(_$AppLayoutStateImpl) then) =
      __$$AppLayoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$AppLayoutStateImplCopyWithImpl<$Res>
    extends _$AppLayoutStateCopyWithImpl<$Res, _$AppLayoutStateImpl>
    implements _$$AppLayoutStateImplCopyWith<$Res> {
  __$$AppLayoutStateImplCopyWithImpl(
      _$AppLayoutStateImpl _value, $Res Function(_$AppLayoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$AppLayoutStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppLayoutStateImpl implements _AppLayoutState {
  const _$AppLayoutStateImpl({this.selectedIndex = 0});

// TODO: Define state properties for app layout (e.g., selected tab index)
  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'AppLayoutState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLayoutStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLayoutStateImplCopyWith<_$AppLayoutStateImpl> get copyWith =>
      __$$AppLayoutStateImplCopyWithImpl<_$AppLayoutStateImpl>(
          this, _$identity);
}

abstract class _AppLayoutState implements AppLayoutState {
  const factory _AppLayoutState({final int selectedIndex}) =
      _$AppLayoutStateImpl;

  @override // TODO: Define state properties for app layout (e.g., selected tab index)
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$AppLayoutStateImplCopyWith<_$AppLayoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
