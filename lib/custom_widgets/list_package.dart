import 'package:flutter/material.dart';

Widget kutaResort() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(24),
    ),
    padding: const EdgeInsets.all(24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('images/beach1.jpg', fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              const Text(
                'Kuta Resort',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Icon(Icons.currency_rupee, color: Colors.red, size: 16),
                  Text("5000",
                      style: TextStyle(
                        color: Colors.red,
                      )),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.grey, size: 16),
                  Text('4.2', style: TextStyle(color: Colors.black))
                ],
              ),
              const SizedBox(height: 24),
              const FittedBox(
                child: Text(
                    'A resort is a place used for\n\nvacation, relaxation or as a day...'),
              )
            ],
          ),
        ),
        const Icon(Icons.favorite),
      ],
    ),
  );
}

Widget bagaBeachResort() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(24),
    ),
    padding: const EdgeInsets.all(24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('images/beach2.jpg', fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              const Text(
                'Baga Beach Resort',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Icon(Icons.currency_rupee, color: Colors.red, size: 16),
                  Text("15000",
                      style: TextStyle(
                        color: Colors.red,
                      )),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  Icon(Icons.star, color: Colors.grey, size: 16),
                  Text('4.2', style: TextStyle(color: Colors.black))
                ],
              ),
              const SizedBox(height: 24),
              const FittedBox(
                child: Text(
                    'A resort is a place used for\n\nvacation, relaxation or as a day...'),
              )
            ],
          ),
        ),
        const Icon(Icons.favorite),
      ],
    ),
  );
}
