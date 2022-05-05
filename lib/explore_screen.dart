
import 'package:luxurynft/item_list.dart';
import 'package:flutter/material.dart';

import 'models/nft.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          title: const Text(
            "More",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth >= 700) {
              return const ExploreScreenGrid(gridCount: 4);
            } else if (constraints.maxWidth >= 375) {
              return const ExploreScreenGrid(gridCount: 2);
            } else {
              return const ExploreScreenGrid(gridCount: 1);
            }
          },
        ));
  }
}

class ExploreScreenGrid extends StatelessWidget {
  final int gridCount;

  const ExploreScreenGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Expanded(
            child: GridView.count(
      childAspectRatio: 1 / 1.5,
      crossAxisCount: gridCount,
      crossAxisSpacing: 13,
      mainAxisSpacing: 13,
      children: nfts.map((nft) {
        return ItemList(
          nft: nft,
          key: key,
        );
      }).toList(),
    )));
  }
}

