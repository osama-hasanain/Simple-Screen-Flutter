import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text(
          'Products',
        ),
        actions: [
          Icon(Icons.add_shopping_cart)
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index)=>
            allCoursesItem(context),
      ),
    );
  }

  Widget allCoursesItem(context) =>
      InkWell(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                      height: 80.0,
                      width: 80.0,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blology&The Sientifie Method',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 5.0,),
                      Text('16 lesons',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.orange
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onTap: () {},
      );
}
