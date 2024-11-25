import 'package:flutter/material.dart';

class MarketPlacePage extends StatelessWidget {

  const MarketPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(26),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              _buildServiceCard(
                context,
                'Air Conditioning',
                'lib/assets/air-conditioning.png',
                '/airconditions',
              ),
              _buildServiceCard(
                context,
                'Home Cleaning',
                'lib/assets/cleaning.png',
                '/home-cleaning',
              ),
              _buildServiceCard(
                context,
                'Painting',
                'lib/assets/painting.png',
                '/painting',
              ),
              _buildServiceCard(
                context,
                'Plumbing',
                'lib/assets/plumbing.png',
                '/plumbing',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceCard(
      BuildContext context, String title, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color.fromRGBO(232, 232, 232, 1),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(94, 105, 207, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}