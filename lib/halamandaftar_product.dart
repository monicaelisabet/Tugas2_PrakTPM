import 'package:flutter/material.dart';
import 'package:navigation_app_tugas2prak/halamandetailproduct.dart';
import 'package:navigation_app_tugas2prak/groceries.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groceries Marketplace',),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Groceries grocery = groceryList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HalamanDetailProduct(grocery:grocery)
              )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Card(
                      child: Image.network(grocery.productImageUrls[0],
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          
                          children: [
                            Text(grocery.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            Text('  '),
                            Text(grocery.storeName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],

                        ),

                        Row(
                          children: [
                            Text(grocery.price, style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ]
                    ),

                  ],
                ),
              ),
            ),
          );
        },
        itemCount: groceryList.length,

      ),
    );
  }
}
