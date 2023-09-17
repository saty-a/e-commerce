part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState({
    @Default(false) bool navigateToHome,
  }) = _SplashState;
}
