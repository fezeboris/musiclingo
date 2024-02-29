import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });
  // final void Function(String identifier) onSelectScreen;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(children: [
              Icon(
                Icons.music_note_outlined,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                'Musiclingo ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ]),
          ),
          ListTile(
            onTap: () {
              // onSelectScreen('meals');
            },
            leading: Icon(
              Icons.account_circle,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Profile',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
          ),
          ListTile(
            onTap: () {
              // onSelectScreen('filters');
            },
            leading: Icon(
              Icons.favorite,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Favorites',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
