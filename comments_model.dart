import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:test1/product_comments_model.dart';

class Commentsapi extends StatefulWidget {
  const Commentsapi({super.key});

  @override
  State<Commentsapi> createState() => _CommentsapiState();
}

class _CommentsapiState extends State<Commentsapi> {
ProductsCommentsModel?commentsModel;
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
            if (commentsModel?.comments != null)
              Expanded(
                child: ListView.builder(
                  itemCount: commentsModel!.comments!.length,
                  itemBuilder: (context, index) {
                    final product = commentsModel!.comments![index];
                    return Card(
                      child: ListTile(
                        title: Column(
                          children: [
                            Text('${product.id}'),
                            Text('${product.user}'),

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
    commentsproducts();
  }

  void commentsproducts() async {
    print('here');
    final dio = Dio();
    final response = await dio.get('https://dummyjson.com/comments');
    commentsModel = ProductsCommentsModel.fromJson(response.data);
    setState(() {});
    print(commentsModel);
  }
}




