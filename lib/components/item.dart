import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final itemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
            color: color,
            height: 100,
            child: Row(
              children: [
                Container(
                  color: Color(0xffFFF6DC),
                  child: Image.asset(number.image)),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(number.jpName, style: TextStyle(color: Colors.white, fontSize: 18),),
                      Text(number.enName, style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                ),
                Spacer(flex: 1,),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
              onPressed: () async { // Make the callback async
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
                        content: Text('Error playing sound: ${e.toString().substring(0,50)}...'), // Show a snippet of the error
                      ),
                    );
                  }
                }
                // For short, one-shot sounds, you might not need to explicitly call player.dispose() here,
                // as the player instance is local to this async block and will be garbage collected.
                // The audioplayers plugin should manage releasing native resources when playback completes
                // or the player instance is no longer referenced.
                // If you were reusing 'player' or keeping it as a member variable,
                // you'd manage its lifecycle more carefully (e.g., dispose in a StatefulWidget).
              },
              icon: const Icon( // Added const
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
                )
              ],
            ),
          
      
    );
  }
}