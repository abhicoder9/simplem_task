import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplem_task/constants/colors.dart';

import '../custom_widgets/list_beach.dart';
import '../custom_widgets/list_package.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColors.backGroundColor,
        leading: const Icon(
          Icons.circle,
          color: AppColors.greyColor,
          size: 32,
        ),
        title: const Text(
          'Hello, Vineetha',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: AppColors.greyColor,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Where do you\nwant to explore today?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 16),
                    hintText: 'Search',
                    hintStyle:
                        TextStyle(color: AppColors.greyColor, fontSize: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Choose Category',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  Text('See all',
                      style: TextStyle(color: Colors.grey.shade400)),
                ],
              ),
              const SizedBox(height: 24),

              // Our Category :  Beach.
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          fit: BoxFit.cover,
                          width: 20,
                          'images/beach.svg',
                        ),
                        const SizedBox(width: 8),
                        const Text('Beach',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),

                  // Our Category :  Mountain.

                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          fit: BoxFit.cover,
                          width: 20,
                          'images/mountain.svg',
                        ),
                        const SizedBox(width: 8),
                        const Text('Mountain',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),

              SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    kuttaBeach(context),
                    bagaBeach(context),
                  ],
                ),
              ),

              const SizedBox(
                height: 32,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Popular Package',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                  Text('See all',
                      style: TextStyle(color: Colors.grey.shade400)),
                ],
              ),

              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 460,
                child: Column(
                  children: [
                    kutaResort(),
                    kutaResort(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
