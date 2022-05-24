import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsDetails extends StatelessWidget {



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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index)=>
                    listItem(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Earth Coffe Mug',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    '18 KWD',
                    style: TextStyle(
                        color: Colors.orange
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black12,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add,color: Colors.grey,),
                        SizedBox(width: 10.0,),
                        Text('3'),
                        SizedBox(width: 5.0,),
                        Icon(Icons.add,color: Colors.grey,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'The Earth Coffe Mug',
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here content here\', making it look like readable English',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: MaterialButton(
                      color: Colors.red[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: (){},
                      child: Text(
                          'add to cart'.toUpperCase()
                      ),
                    ),
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
  
  Widget listItem() =>
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
            height: 220,
            width: 300,
            fit: BoxFit.fill,
          ),
        ),
      );
}
