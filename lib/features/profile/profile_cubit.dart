import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  void loadProfile() {
    emit(ProfileLoaded(
      name: 'Axel Olsson',
      about:
          'Driven systemvetare med passion för cybersäkerhet, utveckling och problemlösning. Erfarenhet av Flutter, Cubit och webbutveckling.',
      linkedIn: 'https://www.linkedin.com/in/dittnamn/',
      github: 'https://github.com/dittgithub',
    ));
  }
}
