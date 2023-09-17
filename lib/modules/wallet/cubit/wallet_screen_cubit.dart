import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_screen_state.dart';
part 'wallet_screen_cubit.freezed.dart';

class WalletScreenCubit extends Cubit<WalletScreenState> {
  WalletScreenCubit() : super(const WalletScreenState.initial());
}
