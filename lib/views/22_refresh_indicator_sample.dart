import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/product.dart';

class RefreshIndicatorSample extends StatefulWidget {
  const RefreshIndicatorSample({super.key});

  @override
  State<RefreshIndicatorSample> createState() => _RefreshIndicatorSampleState();
}

// Refresh indicator - 아래로 스와이프하여 새로고침
class _RefreshIndicatorSampleState extends State<RefreshIndicatorSample> {
  late Future<List<Product>> productList;
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    productList = getProductData();
  }

  Future<List<Product>> getProductData() async {
    late List<Product> products;
    try {
      var response = await dio.get('https://dummyjson.com/products');
      products = response.data['products']
          .map<Product>((e) => Product.fromJson(e))
          .toList();
      print('refreshed!');
    } catch (e) {
      print(e);
    }

    return products;
  }

  Future<void> refreshData() async {
    productList = getProductData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshData(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: FutureBuilder<List<Product>>(
              future: productList,
              builder: (BuildContext con, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ));
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext con, int index) {
                        var data = snapshot.data[index];
                        return Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                          ),
                          child: Text('${data.title}(${data.description})'),
                        );
                      });
                }
              }),
        ),
      ),
    );
  }
}
