import 'package:cached_network_image/cached_network_image.dart';
import 'package:extraedge_assignment/providers/product_provider.dart';
import 'package:extraedge_assignment/theme/colors.dart';
import 'package:extraedge_assignment/theme/text_theme.dart';
import 'package:extraedge_assignment/ui/home/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(productProvider).fetchProduct(context);
  }

  @override
  Widget build(BuildContext context) {
    // use ref to listen to a provider
    final product = ref.watch(productProvider);
    return Scaffold(
        backgroundColor: ColorTheme.primaryWhite,
        appBar: AppBar(
          backgroundColor: ColorTheme.lightGrey,
          elevation: 0,
          title: Text(
            "Product List",
            style: TextStyleTheme.HeadingH1(),
          ),
        ),
        body: product.isLoading
            ? const Center(
                child:
                    CircularProgressIndicator(color: ColorTheme.primaryGreen))
            : ListView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: product.productList.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetails(
                                        product: product.productList[index]),
                                  ));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 116,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorTheme.lightGrey1),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 12, top: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          child: CachedNetworkImage(
                                              imageUrl: product
                                                  .productList[index]
                                                  .flickrImages[0],
                                              fit: BoxFit.cover,
                                              height: 100,
                                              width: 100,
                                              progressIndicatorBuilder:
                                                  (context, url,
                                                          downloadProgress) =>
                                                      Center(
                                                        child: CircularProgressIndicator.adaptive(
                                                            valueColor:
                                                                const AlwaysStoppedAnimation<
                                                                        Color>(
                                                                    ColorTheme
                                                                        .primaryGreen),
                                                            value:
                                                                downloadProgress
                                                                    .progress),
                                                      ),
                                              errorWidget: (context, url,
                                                      error) =>
                                                  ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      child: const Icon(
                                                        Icons.error,
                                                        color: ColorTheme
                                                            .primaryRed,
                                                      ))),
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Name : ",
                                                      style: TextStyleTheme
                                                          .BodyText1(),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Text(
                                                      product.productList[index]
                                                          .name,
                                                      style: TextStyleTheme
                                                          .BodyText2(
                                                              color: ColorTheme
                                                                  .primaryGreen),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 12),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Country : ",
                                                      style: TextStyleTheme
                                                          .BodyText1(),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        product
                                                            .productList[index]
                                                            .country,
                                                        style: TextStyleTheme
                                                            .BodyText2(
                                                                color: ColorTheme
                                                                    .primaryGreen),
                                                        maxLines: 1,
                                                        // overflow: TextOverflow
                                                        //     .ellipsis,
                                                        softWrap: true,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 12),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Engines Count : ",
                                                      style: TextStyleTheme
                                                          .BodyText1(),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Text(
                                                      "${product.productList[index].engines.number}",
                                                      style: TextStyleTheme
                                                          .BodyText2(
                                                              color: ColorTheme
                                                                  .primaryGreen),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: const BoxDecoration(
                                        color: ColorTheme.primaryGreen,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        )),
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )));
  }
}
