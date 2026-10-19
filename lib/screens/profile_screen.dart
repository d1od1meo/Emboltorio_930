import 'package:emboltorio_930/component/globalappbar_component.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // cover photo + profile picture
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1494783367193-149034c05e8f?w=1200',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // white rounded area
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                  ),
                ),
                // top icons
                const Positioned(
                  top: 40,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, color: Colors.white, size: 32),
                      Row(
                        children: [
                          Icon(Icons.edit_outlined,
                              color: Colors.white, size: 30),
                          SizedBox(width: 16),
                          Icon(Icons.search, color: Colors.white, size: 32),
                          SizedBox(width: 16),
                          Icon(Icons.more_horiz, color: Colors.white, size: 32),
                        ],
                      ),
                    ],
                  ),
                ),
                // camera icon on cover
                const Positioned(
                  right: 16,
                  bottom: 60,
                  child: Icon(Icons.camera_alt, color: Colors.white, size: 30),
                ),
                // profile picture
                Positioned(
                  bottom: -50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 72,
                            backgroundColor: Color(0xFFD8DCe3),
                            child: Icon(Icons.person_2,
                                size: 75, color: Colors.white),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(Icons.camera_alt,
                                color: Colors.black, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // name, posts, location
            const Text('John Doe',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text('3 posts', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 20),
                SizedBox(width: 4),
                Text('Iloilo City'),
              ],
            ),
            const SizedBox(height: 16),

            // buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline),
                      label: const Text('Add to story'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit profile'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // privacy notice
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(Icons.shield, color: Colors.black),
                  ),
                  const SizedBox(width: 14),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You locked your profile',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      Text('Learn more',
                          style: TextStyle(color: Colors.blue, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),

            // tabs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:
                        const Text('All', style: TextStyle(color: Colors.blue)),
                  ),
                  const SizedBox(width: 24),
                  const Text('Photos'),
                  const SizedBox(width: 24),
                  const Text('Reels'),
                ],
              ),
            ),

            // personal details
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Personal details',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Icon(Icons.edit_outlined),
                    ],
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined, size: 30),
                    title: Text('Iloilo City, Philippines'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined, size: 30),
                    title: Text('Pavia, Iloilo'),
                  ),
                  ListTile(
                    leading: Icon(Icons.cake_outlined, size: 30),
                    title: Text('January 15, 2000'),
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
