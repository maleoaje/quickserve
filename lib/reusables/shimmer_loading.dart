/*
This function is used to add beautiful shimmer loading to the pages
(https://pub.dev/packages/shimmer)
 */

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

double _containerHeight = 20;
double _spaceHeight = 10;
Color _shimmerColor = Colors.grey[200]!;
Color _shimmerColorDark = Colors.grey[500]!;

class ShimmerLoading {
  Widget buildShimmerContent() {
    return SafeArea(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 19.9, 0),
                child: Shimmer.fromColors(
                  highlightColor: Colors.white,
                  baseColor: _shimmerColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: 110,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)),
                            color: Colors.white,
                          ),
                          child: Container(
                            width: 80,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: _shimmerColor,
                              ),
                              height: _containerHeight,
                              child: Container(
                                  decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                color: Colors.white,
                              )),
                            ),
                            SizedBox(
                              height: _spaceHeight,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: _shimmerColor,
                              ),
                              height: _containerHeight,
                              child: Container(
                                  decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                color: Colors.white,
                              )),
                            ),
                            SizedBox(
                              height: _spaceHeight,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: _shimmerColor,
                              ),
                              height: _containerHeight,
                              width: 100,
                              child: Container(
                                  decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  period: const Duration(milliseconds: 1000),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  color: _shimmerColor,
                  height: 1),
            ],
          );
        },
      ),
    );
  }

  Widget buildShimmerImageHorizontal(boxImageSize) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 8,
        padding: const EdgeInsets.only(right: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: index == 0 ? 0 : 12),
            child: Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: _shimmerColor,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Container(
                  width: boxImageSize,
                  height: boxImageSize,
                  color: _shimmerColor,
                ),
              ),
              period: const Duration(milliseconds: 1000),
            ),
          );
        },
      ),
    );
  }

  Widget buildShimmerRelatedProduct(boxImageSize) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 8,
        padding: const EdgeInsets.only(left: 12, right: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            color: Colors.white,
            child: Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: _shimmerColor,
              period: const Duration(milliseconds: 1000),
              child: SizedBox(
                width: boxImageSize,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        width: boxImageSize,
                        height: boxImageSize,
                        color: _shimmerColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: 12,
                          ),
                          SizedBox(
                            height: _spaceHeight,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: 12,
                          ),
                          SizedBox(
                            height: _spaceHeight,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: 12,
                            width: 50,
                          ),
                          SizedBox(
                            height: _spaceHeight,
                          ),
                          Row(
                            children: [
                              for (int i = 1; i <= 5; i++)
                                Icon(Icons.star,
                                    color: _shimmerColor, size: 12),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildShimmerHomeFlashsale(boxImageSize) {
    return ListView.builder(
      itemCount: 8,
      padding: const EdgeInsets.only(left: 12, right: 12),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          color: Colors.white,
          child: SizedBox(
            width: boxImageSize,
            height: boxImageSize,
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Shimmer.fromColors(
                      highlightColor: Colors.white,
                      baseColor: _shimmerColor,
                      period: const Duration(milliseconds: 1000),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Container(
                          width: boxImageSize,
                          height: boxImageSize,
                          color: _shimmerColor,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 10,
                      child: Shimmer.fromColors(
                        highlightColor: Colors.white,
                        baseColor: _shimmerColorDark,
                        period: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: BoxDecoration(
                              color: _shimmerColorDark,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  bottomLeft: Radius.circular(6))),
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: const SizedBox(
                            width: 20,
                            height: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Shimmer.fromColors(
                  highlightColor: Colors.white,
                  baseColor: _shimmerColor,
                  period: const Duration(milliseconds: 1000),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                        ),
                        SizedBox(
                          height: _spaceHeight,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                        ),
                        SizedBox(
                          height: _spaceHeight,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                          width: 50,
                        ),
                        SizedBox(
                          height: _spaceHeight,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildShimmerHorizontalProduct(boxImageSize) {
    return ListView.builder(
      itemCount: 8,
      padding: const EdgeInsets.only(left: 12, right: 12),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          color: Colors.white,
          child: Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: _shimmerColor,
            period: const Duration(milliseconds: 1000),
            child: SizedBox(
              width: boxImageSize,
              height: boxImageSize,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Container(
                      width: boxImageSize,
                      height: boxImageSize,
                      color: _shimmerColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                        ),
                        SizedBox(
                          height: _spaceHeight,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                        ),
                        SizedBox(
                          height: _spaceHeight,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: _shimmerColor,
                          ),
                          height: 12,
                          width: 50,
                        ),
                        SizedBox(
                          height: _spaceHeight,
                        ),
                        Row(
                          children: [
                            for (int i = 1; i <= 5; i++)
                              Icon(Icons.star, color: _shimmerColor, size: 12),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildShimmerHomeBanner(homeBannerWidth, homeBannerHeight) {
    return Column(
      children: [
        Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: _shimmerColor,
          child: Container(
            width: homeBannerWidth,
            height: homeBannerHeight,
            color: _shimmerColor,
          ),
          period: const Duration(milliseconds: 1000),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _shimmerColor,
                ),
              );
            })),
      ],
    );
  }

  Widget buildShimmerCategoryBanner(homeBannerWidth, homeBannerHeight) {
    return Shimmer.fromColors(
      highlightColor: Colors.white,
      baseColor: _shimmerColor,
      child: Container(
        width: homeBannerWidth,
        height: homeBannerHeight,
        color: _shimmerColor,
      ),
      period: const Duration(milliseconds: 1000),
    );
  }

  Widget buildShimmerAccounts(boxImageSize) {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      primary: false,
      childAspectRatio: 0.1,
      shrinkWrap: true,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 1,
      children: List.generate(4, (index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: _shimmerColor,
                    period: const Duration(milliseconds: 1000),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Container(
                        width: boxImageSize,
                        height: 100,
                        color: _shimmerColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget buildShimmerResidents(boxImageSize) {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      primary: false,
      childAspectRatio: 0.1,
      shrinkWrap: true,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 1,
      children: List.generate(1, (index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: _shimmerColor,
                    period: const Duration(milliseconds: 1000),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Container(
                        width: boxImageSize,
                        height: 80,
                        color: _shimmerColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: _shimmerColor,
                    period: const Duration(milliseconds: 1000),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Container(
                        width: boxImageSize,
                        height: 80,
                        color: _shimmerColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: _shimmerColor,
                    period: const Duration(milliseconds: 1000),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Container(
                        width: boxImageSize,
                        height: 80,
                        color: _shimmerColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: _shimmerColor,
                    period: const Duration(milliseconds: 1000),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Container(
                        width: boxImageSize,
                        height: 80,
                        color: _shimmerColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget buildShimmerProduct(boxImageSize) {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      primary: false,
      childAspectRatio: 5 / 8,
      shrinkWrap: true,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      children: List.generate(8, (index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          color: Colors.white,
          child: Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: _shimmerColor,
            period: const Duration(milliseconds: 1000),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Container(
                    width: boxImageSize,
                    height: boxImageSize,
                    color: _shimmerColor,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: 12,
                      ),
                      SizedBox(
                        height: _spaceHeight,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: 12,
                      ),
                      SizedBox(
                        height: _spaceHeight,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: 12,
                        width: 50,
                      ),
                      SizedBox(
                        height: _spaceHeight,
                      ),
                      Row(
                        children: [
                          for (int i = 1; i <= 5; i++)
                            Icon(Icons.star, color: _shimmerColor, size: 12),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget buildShimmerTrending(boxImageSize) {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      primary: false,
      childAspectRatio: 4 / 1.6,
      shrinkWrap: true,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 2,
      children: List.generate(4, (index) {
        return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            color: Colors.white,
            child: Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: _shimmerColor,
              period: const Duration(milliseconds: 1000),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Container(
                        width: (boxImageSize) * (1.6 / 4) - 12 - 1,
                        height: (boxImageSize) * (1.6 / 4) - 12 - 1,
                        color: _shimmerColor,
                      )),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: 12,
                          ),
                          SizedBox(
                            height: _spaceHeight,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
      }),
    );
  }

  Widget buildShimmerCategory() {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      primary: false,
      childAspectRatio: 1.1,
      shrinkWrap: true,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      crossAxisCount: 4,
      children: List.generate(8, (index) {
        return Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: _shimmerColor,
          period: const Duration(milliseconds: 1000),
          child: Column(children: [
            Container(
              width: 40,
              height: 40,
              color: _shimmerColor,
            ),
            SizedBox(
              height: _spaceHeight,
            ),
            Container(
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: _shimmerColor,
              ),
              height: 12,
            ),
          ]),
        );
      }),
    );
  }

  Widget buildShimmerReviewProduct() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: _shimmerColor,
          period: const Duration(milliseconds: 1000),
          child: Column(
            children: [
              Divider(
                height: 32,
                color: Colors.grey[400],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: _shimmerColor,
                    ),
                    height: _containerHeight,
                  ),
                  SizedBox(
                    height: _spaceHeight,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: _shimmerColor,
                    ),
                    height: _containerHeight,
                  ),
                  SizedBox(
                    height: _spaceHeight,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: _shimmerColor,
                    ),
                    height: _containerHeight,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget buildShimmerReview() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.only(top: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          color: Colors.white,
          child: Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: _shimmerColor,
            period: const Duration(milliseconds: 1000),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: _containerHeight,
                      ),
                      SizedBox(
                        height: _spaceHeight,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: _containerHeight,
                      ),
                      SizedBox(
                        height: _spaceHeight,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _shimmerColor,
                        ),
                        height: _containerHeight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildShimmerCategoryForYou(homeBannerWidth, homeBannerHeight) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: _shimmerColor,
        child: Container(
          width: homeBannerWidth,
          height: homeBannerHeight,
          color: _shimmerColor,
        ),
        period: const Duration(milliseconds: 1000),
      ),
    );
  }

  Widget buildShimmerSearch() {
    return Shimmer.fromColors(
      highlightColor: Colors.white,
      baseColor: _shimmerColor,
      period: const Duration(milliseconds: 1000),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: _shimmerColor,
                  ),
                  height: _containerHeight,
                ),
                SizedBox(
                  height: _spaceHeight,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: _shimmerColor,
                  ),
                  height: _containerHeight,
                ),
                SizedBox(
                  height: _spaceHeight,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: _shimmerColor,
                  ),
                  height: _containerHeight,
                ),
                SizedBox(
                  height: _spaceHeight,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: _shimmerColor,
                  ),
                  height: _containerHeight,
                ),
                SizedBox(
                  height: _spaceHeight,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: _shimmerColor,
                  ),
                  height: _containerHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
