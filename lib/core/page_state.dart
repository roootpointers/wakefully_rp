import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

@freezed
sealed class PageState with _$PageState {
  const factory PageState.initial() = PageStateInitial;
  const factory PageState.loading() = PageStateLoading;
  const factory PageState.success() = PageStateSuccess;
  const factory PageState.failure({String? message}) = PageStateFailure;
}
