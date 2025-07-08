part of 'profile_cubit.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final String name;
  final String about;
  final String linkedIn;
  final String github;

  const ProfileLoaded({
    required this.name,
    required this.about,
    required this.linkedIn,
    required this.github,
  });

  @override
  List<Object> get props => [name, about, linkedIn, github];
}