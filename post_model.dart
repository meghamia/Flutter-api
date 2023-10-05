import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:test1/product_posts_model.dart';

class Postapi extends StatefulWidget {
  const Postapi({super.key});

  @override
  State<Postapi> createState() => _PostapiState();
}

class _PostapiState extends State<Postapi> {
  ProductsPostsModel?postsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (postsModel?.posts != null)
              Expanded(
                child: ListView.builder(
                  itemCount: postsModel!.posts!.length,
                  itemBuilder: (context, index) {
                    final product = postsModel!.posts![index];
                    return Card(
                      child: ListTile(
                        title: Column(
                          children: [
                            Text('${product.id}'),
                            Text('${product.title}'),
                            Text('${product.tags}'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
  void initState(){
    super.initState();
   postproducts();
  }
  void postproducts() async {
    print('here');
    final dio = Dio();
    final response = await dio.get('https://dummyjson.com/posts');
    postsModel = ProductsPostsModel.fromJson(response.data);
    setState(() {});
    print(postsModel);
  }
}




