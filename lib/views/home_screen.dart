import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../models/ambo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Ambo> ambos = [];
  List<String> listaCategorias = [];

  @override
  void initState() {
    super.initState();
    ambos = Ambo.getAmbos();
    listaCategorias = ambos.map((e) => e.categoria).toSet().toList();
    listaCategorias.add('Chaquetas');
    listaCategorias.add('Pantalones');
    listaCategorias.add('Mamelucos');
    listaCategorias.add('Cofias');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: false,
            pinned: false,
            snap: false,
            stretch: true,
            backgroundColor: Colors.grey[50],
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [StretchMode.zoomBackground],
              background: Image.asset(
                'assets/img/malvinas.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 50.0,
              maxHeight: 40.0,
              child: SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((_, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                          onPressed: () {},
                          child: Text(
                            listaCategorias[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color:
                                  index == 0 ? Colors.black : Colors.grey[400],
                            ),
                          )),
                    );
                  }),
                  itemCount: listaCategorias.length,
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Transform.translate(
                  offset: Offset(0.0, index.isOdd ? 100 : 00),
                  child: GestureDetector(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            const SizedBox(height: 20),
                            Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    ambos[index].imagen,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    ambos[index].nombre,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: InkWell(
                                    child: Icon(Icons.favorite_border_outlined),
                                    onTap: () {
                                      setState(() {
                                        print('onTap');
                                      });
                                    })),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }, childCount: ambos.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20, crossAxisSpacing: 20, crossAxisCount: 2))
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) => false;
}
