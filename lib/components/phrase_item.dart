import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.number, required this.color});
  final itemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                // Make the callback async
                final player = AudioPlayer(); // Create a player instance
                try {
                  // Ensure number.sound is a valid asset path like 'sounds/numbers/one.mp3'
                  // and this path is listed in your pubspec.yaml under assets
                  await player.play(AssetSource(number.sound));
                  print('Playback started for: ${number.sound}');
                } catch (e) {
                  print("Error playing sound ${number.sound}: $e");
                  // Optionally, show a SnackBar to the user if context is available
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Error playing sound: ${e.toString().substring(0, 50)}...',
                        ), // Show a snippet of the error
                      ),
                    );
                  }
                }
                
              },
              icon: const Icon(
                // Added const
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}