import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:test1/product_users_model.dart';

class Userapi extends StatefulWidget {
  const Userapi({super.key});

  @override
  State<Userapi> createState() => _UserapiState();
}

class _UserapiState extends State<Userapi> {
  ProductsUsersModel?usersModel;

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

            if (usersModel?.users != null)
              Expanded(
                child: ListView.builder(
                  itemCount: usersModel!.users!.length,
                  itemBuilder: (context, index) {
                    final product = usersModel!.users![index];
                    return Card(
                      child: ListTile(
                        title: Column(
                          children: [
                            Text('${product.id}'),
                            Text('${product.weight}'),

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
    usersproducts();
  }

  void usersproducts() async {
    print('here');
    final dio = Dio();
    final response = await dio.get('https://dummyjson.com/users');
    usersModel = ProductsUsersModel.fromJson(response.data);
    setState(() {});
    print(usersModel);
  }
}




