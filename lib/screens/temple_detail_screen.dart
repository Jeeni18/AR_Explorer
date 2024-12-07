//audio milxa but stop hunna
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class TempleDetailScreen extends StatelessWidget {
//   final String templeName;
//   final String imageUrl;
//   final double rating;
//   final String description;
//
//   const TempleDetailScreen({
//     super.key,
//     required this.templeName,
//     required this.imageUrl,
//     required this.rating,
//     required this.description,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final AudioPlayer audioPlayer = AudioPlayer();
//
//     Future<void> playAudioGuide() async {
//       try {
//         await audioPlayer.play(AssetSource('Nyatapola.wav'));
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to play audio: $e')),
//         );
//       }
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Details'),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.vertical(
//                     bottom: Radius.circular(24),
//                   ),
//                   child: Image.asset(
//                     imageUrl,
//                     width: double.infinity,
//                     height: 250,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 16,
//                   right: 16,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: IconButton(
//                       icon: const Icon(Icons.favorite_border),
//                       color: Colors.red,
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('$templeName added to favorites!')),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 children: [
//                   const Icon(Icons.account_balance, color: Color(0xFF8B4513)),
//                   const SizedBox(width: 8),
//                   Expanded(
//                     child: Text(
//                       templeName,
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const Icon(Icons.star, color: Colors.orange),
//                   const SizedBox(width: 4),
//                   Text(
//                     rating.toString(),
//                     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 8),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 description,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF8B4513),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 16),
//                         foregroundColor: Colors.white,
//                       ),
//                       icon: const Icon(Icons.view_in_ar),
//                       label: const Text('Start AR Experience'),
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text('Launching AR Experience...'),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF8B4513),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 16),
//                         foregroundColor: Colors.white,
//                       ),
//                       icon: const Icon(Icons.headset),
//                       label: const Text('Play Audio Guide'),
//                       onPressed: () => playAudioGuide(),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//Audio play/stop hune but no ar button
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class TempleDetailScreen extends StatefulWidget {
//   final String templeName;
//   final String imageUrl;
//   final double rating;
//   final String description;
//
//   const TempleDetailScreen({
//     super.key,
//     required this.templeName,
//     required this.imageUrl,
//     required this.rating,
//     required this.description,
//   });
//
//   @override
//   State<TempleDetailScreen> createState() => _TempleDetailScreenState();
// }
//
// class _TempleDetailScreenState extends State<TempleDetailScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   bool _isPlaying = false;
//
//   Future<void> _playAudio() async {
//     try {
//       await _audioPlayer.play(AssetSource('Nyatapola.wav'));
//       setState(() {
//         _isPlaying = true;
//       });
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: ${e.toString()}')),
//       );
//     }
//   }
//
//   Future<void> _stopAudio() async {
//     try {
//       await _audioPlayer.stop();
//       setState(() {
//         _isPlaying = false;
//       });
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: ${e.toString()}')),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     _audioPlayer.dispose(); // Dispose the audio player when the widget is destroyed
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Details'),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Temple Image
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.vertical(
//                     bottom: Radius.circular(24),
//                   ),
//                   child: Image.asset(
//                     widget.imageUrl,
//                     width: double.infinity,
//                     height: 250,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 16,
//                   right: 16,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: IconButton(
//                       icon: const Icon(Icons.favorite_border),
//                       color: Colors.red,
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                               content: Text('${widget.templeName} added to favorites!')),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//
//             // Temple Name and Rating
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 children: [
//                   const Icon(Icons.account_balance, color: Color(0xFF8B4513)),
//                   const SizedBox(width: 8),
//                   Expanded(
//                     child: Text(
//                       widget.templeName,
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const Icon(Icons.star, color: Colors.orange),
//                   const SizedBox(width: 4),
//                   Text(
//                     widget.rating.toString(),
//                     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 8),
//
//             // Temple Description
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 widget.description,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 24),
//
//             // Buttons for AR Experience and Audio Guide
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF8B4513),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 16),
//                         foregroundColor: Colors.white,
//                       ),
//                       icon: const Icon(Icons.headset),
//                       label: Text(_isPlaying ? 'Stop Audio Guide' : 'Play Audio Guide'),
//                       onPressed: _isPlaying ? _stopAudio : _playAudio,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//sabai milxa but button up down
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class TempleDetailScreen extends StatefulWidget {
//   final String templeName;
//   final String imageUrl;
//   final double rating;
//   final String description;
//
//   const TempleDetailScreen({
//     super.key,
//     required this.templeName,
//     required this.imageUrl,
//     required this.rating,
//     required this.description,
//   });
//
//   @override
//   State<TempleDetailScreen> createState() => _TempleDetailScreenState();
// }
//
// class _TempleDetailScreenState extends State<TempleDetailScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   bool _isPlaying = false;
//
//   Future<void> _playAudio() async {
//     try {
//       await _audioPlayer.play(AssetSource('Nyatapola.wav'));
//       setState(() {
//         _isPlaying = true;
//       });
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: ${e.toString()}')),
//       );
//     }
//   }
//
//   Future<void> _stopAudio() async {
//     try {
//       await _audioPlayer.stop();
//       setState(() {
//         _isPlaying = false;
//       });
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: ${e.toString()}')),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     _audioPlayer.dispose(); // Dispose the audio player when the widget is destroyed
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Details'),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Temple Image
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.vertical(
//                     bottom: Radius.circular(24),
//                   ),
//                   child: Image.asset(
//                     widget.imageUrl,
//                     width: double.infinity,
//                     height: 250,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 16,
//                   right: 16,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: IconButton(
//                       icon: const Icon(Icons.favorite_border),
//                       color: Colors.red,
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                               content: Text('${widget.templeName} added to favorites!')),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//
//             // Temple Name and Rating
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 children: [
//                   const Icon(Icons.account_balance, color: Color(0xFF8B4513)),
//                   const SizedBox(width: 8),
//                   Expanded(
//                     child: Text(
//                       widget.templeName,
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const Icon(Icons.star, color: Colors.orange),
//                   const SizedBox(width: 4),
//                   Text(
//                     widget.rating.toString(),
//                     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 8),
//
//             // Temple Description
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 widget.description,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 24),
//
//             // Buttons for AR Experience and Audio Guide
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: [
//                   // Start AR Experience Button
//                   ElevatedButton.icon(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF8B4513),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       foregroundColor: Colors.white,
//                     ),
//                     icon: const Icon(Icons.view_in_ar),
//                     label: const Text('Start AR Experience'),
//                     onPressed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('Launching AR Experience...'),
//                         ),
//                       );
//                     },
//                   ),
//                   const SizedBox(height: 16),
//                   // Play/Stop Audio Guide Button
//                   ElevatedButton.icon(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF8B4513),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       foregroundColor: Colors.white,
//                     ),
//                     icon: const Icon(Icons.headset),
//                     label: Text(_isPlaying ? 'Stop Audio Guide' : 'Play Audio Guide'),
//                     onPressed: _isPlaying ? _stopAudio : _playAudio,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TempleDetailScreen extends StatefulWidget {
  final String templeName;
  final String imageUrl;
  final double rating;
  final String description;

  const TempleDetailScreen({
    super.key,
    required this.templeName,
    required this.imageUrl,
    required this.rating,
    required this.description,
  });

  @override
  State<TempleDetailScreen> createState() => _TempleDetailScreenState();
}

class _TempleDetailScreenState extends State<TempleDetailScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  Future<void> _playAudio() async {
    try {
      await _audioPlayer.play(AssetSource('Nyatapola.wav'));
      setState(() {
        _isPlaying = true;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  Future<void> _stopAudio() async {
    try {
      await _audioPlayer.stop();
      setState(() {
        _isPlaying = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Temple Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(24),
                  ),
                  child: Image.asset(
                    widget.imageUrl,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      color: Colors.red,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('${widget.templeName} added to favorites!')),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Temple Name and Rating
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Icon(Icons.account_balance, color: Color(0xFF8B4513)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.templeName,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(Icons.star, color: Colors.orange),
                  const SizedBox(width: 4),
                  Text(
                    widget.rating.toString(),
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Temple Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Buttons for AR Experience and Audio Guide side by side
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Start AR Experience Button
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8B4513),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.view_in_ar),
                      label: const Text('Start AR Experience'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Launching AR Experience...'),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Play/Stop Audio Guide Button
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8B4513),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.headset),
                      label: Text(_isPlaying ? 'Stop Audio Guide' : 'Play Audio Guide'),
                      onPressed: _isPlaying ? _stopAudio : _playAudio,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
