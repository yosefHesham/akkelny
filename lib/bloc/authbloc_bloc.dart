import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authbloc_event.dart';
part 'authbloc_state.dart';

class AuthblocBloc extends Bloc<AuthblocEvent, AuthblocState> {
  AuthblocBloc() : super(AuthblocInitial());

  @override
  Stream<AuthblocState> mapEventToState(
    AuthblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
