import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profile_cubit.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                state.name,
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                state.about,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _launchUrl(state.linkedIn),
                child: const Text('LinkedIn'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => _launchUrl(state.github),
                child: const Text('GitHub'),
              ),
            ],
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}