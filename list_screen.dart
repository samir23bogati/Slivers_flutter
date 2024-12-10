import 'package:calculator/components/custom_image.dart';
import 'package:faker/faker.dart' hide Image;
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:gap/gap.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CustomImageWidget(
                url: Faker().image.loremPicsum(random: Random().nextInt(100)),
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          SliverGap(20),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(20, (index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CustomImageWidget(
                        url: Faker()
                            .image
                            .loremPicsum(random: Random().nextInt(100)),
                        height: 150,
                        width: 150,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SliverGap(20),
          SliverToBoxAdapter(
            child: Text(
              "Food Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 16,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CustomImageWidget(
                      url: Faker().image.image(random: true),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: Text(Faker().food.dish()),
                ),
              );
            },
          ),
          SliverGap(20),
          SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return CustomImageWidget(
                  url: Faker().image.image(random: true),
                );
              })
        ],
      ),
    );
  }
}
