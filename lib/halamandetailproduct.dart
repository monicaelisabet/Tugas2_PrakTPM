import 'package:flutter/material.dart';
import 'package:navigation_app_tugas2prak/groceries.dart';

class HalamanDetailProduct extends StatefulWidget {
  final Groceries grocery;
  const HalamanDetailProduct({Key? key, required this.grocery}) : super(key: key);


  @override
  State<HalamanDetailProduct> createState() => _HalamanDetailProductState();
}

class _HalamanDetailProductState extends State<HalamanDetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.grocery.name),
             // Text(' '),
              Text(widget.grocery.storeName)
            ],
          ),
        ),
        body: Column(
            children: <Widget>[
              Container(
                child: Image.network(widget.grocery.productImageUrls[0],
                  width: 300,
                  height: 300,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.grocery.name),
                  Text(' '),
                  Text(widget.grocery.storeName),
                ],
              ),

              SizedBox(height: 15,),

              Column(
                children: [
                  Row(
                    children: [
                      Text('Nama Product : '),
                      Text(widget.grocery.name, style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Nama Toko : '),
                      Text(widget.grocery.storeName),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Harga : '),
                      Text(widget.grocery.price)
                    ],
                  ),
                  Row(
                    children: [
                      Text('Discount : '),
                      Text(widget.grocery.discount),

                    ],
                  ),
                  Row(
                    children: [
                      Text('Stock : '),
                       Text(widget.grocery.stock),
                    ],
                  ),

                  Column(
                    children: [
                      Text('Deskripsi : ' ),
                      Text(widget.grocery.description),
                    ],
                  ),
                ],
              ),

              Container()
            ]
            ),
        );
    }
}