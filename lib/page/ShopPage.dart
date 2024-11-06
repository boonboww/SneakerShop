import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/model/cart.dart';
import 'package:sneakershop/model/shoe.dart';

import '../components/shoetile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemsToCart(shoe);

    //alter the user, shoe successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('successfully added'),
          content: Text('Check your cart'),
        ),);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //massage
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone files.. some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //hot pick
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Hot Pick 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'see all',
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        // list of shoes foe sale
        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            //get a shoe from shop list
            Shoe shoe = value.getShoeList()[index];

            // return the shoe
            return ShoeTile(
              shoe: shoe,
              onTap: () => addShoeToCart(shoe),
            );
          },
        )
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25),
          child: Divider(
            color:  Colors.white,
          ),)

      ],
    ),
    );
  }
}
