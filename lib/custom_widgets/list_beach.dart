import 'package:flutter/material.dart';
import 'package:simplem_task/constants/colors.dart';

import '../screens/baga_beach.dart';
import '../screens/kuta_beach.dart';

Widget kuttaBeach(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const KutaBeach()));
    },
    child: Container(
      width: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: AssetImage('images/beach1.jpg'),
            ),
          ),
          Positioned(
            top: 16,
            right: 22,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.backGroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.favorite, size: 16, color: Colors.pink),
            ),
          ),
          const Positioned(
            bottom: 64,
            left: 16,
            child: Text(
              'Kutta Beach',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 16,
            child: Row(
              children: const [
                Icon(Icons.location_on, size: 16, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  'Bali, Indonesia',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 16,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.white, size: 16),
                Text('4.2', style: TextStyle(color: Colors.white))
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget bagaBeach(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => const BagaBeach())),
    child: Container(
      width: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: AssetImage('images/beach2.jpg'),
            ),
          ),
          Positioned(
            top: 16,
            right: 22,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.backGroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.favorite, size: 16, color: Colors.pink),
            ),
          ),
          const Positioned(
            bottom: 64,
            left: 16,
            child: Text(
              'Baga Beach',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 16,
            child: Row(
              children: const [
                Icon(Icons.location_on, size: 16, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  'Goa, India',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 16,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Icon(Icons.star, color: Colors.white, size: 16),
                Text('4.2', style: TextStyle(color: Colors.white))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
