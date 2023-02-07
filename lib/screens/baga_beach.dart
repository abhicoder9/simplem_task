import 'package:flutter/material.dart';

class BagaBeach extends StatefulWidget {
  const BagaBeach({super.key});

  @override
  State<BagaBeach> createState() => _BagaBeachState();
}

class _BagaBeachState extends State<BagaBeach> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/beach2.jpg',
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Positioned(
              top: 40,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back, color: Colors.white)),
            ),
            const Icon(
              Icons.currency_rupee,
              color: Colors.white,
              size: 24,
            ),
            const Positioned(
              left: 26,
              child:
                  Text('15,000/person', style: TextStyle(color: Colors.white)),
            ),
            Positioned(
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(16)),
                child: const Text('Book Now',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 16,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.grey, size: 16),
                  Text('4.2', style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            const Positioned(
              bottom: 180,
              child: Text('Baga Beach',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            const Positioned(
              bottom: 80,
              child: FittedBox(
                child: Text(
                  'One of the most happening beaches in Goa Baga Beach is where\nyou will find water sportsfine doing restaurants,bars and \nnclubs. Situated in North Goa Bga Beach is bordered by\n colongulue and Anjuna Beach',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  softWrap: true,
                ),
              ),
            ),
            const Positioned(
                bottom: 180,
                right: 64,
                child: Icon(Icons.location_on, color: Colors.white)),
            const Positioned(
                bottom: 180,
                right: 0,
                child:
                    Text('Goa, India', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
