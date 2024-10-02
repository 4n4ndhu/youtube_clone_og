import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class Cart extends ChangeNotifier {
  final List<Map<String, String>> _items = [];

  List<Map<String, String>> get items => _items;

  bool isInList(String name) {
    return _items.any((item) => item['name'] == name);
  }

  void addItem(String name, String image) {
    _items.add({'name': name, 'image': image});
    notifyListeners();
  }

  void removeItem(String name) {
    _items.removeWhere((item) => item['name'] == name);
    notifyListeners();
  }

  void clearList() {
    _items.clear();
    notifyListeners();
  }
}

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: ColorConstants.primaryblack,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryblack,
        actions: [
          Icon(
            Icons.cast_outlined,
            color: ColorConstants.primarywhite,
            size: 24,
          ),
          SizedBox(width: 25),
          Icon(
            Icons.search,
            color: ColorConstants.primarywhite,
            size: 24,
          ),
          SizedBox(width: 25),
          Icon(
            Icons.more_vert,
            color: ColorConstants.primarywhite,
            size: 24,
          ),
          SizedBox(width: 10),
        ],
        title: Text(
          "All subscriptions",
          style: TextStyle(
              color: ColorConstants.primarywhite, fontWeight: FontWeight.w600),
        ),
      ),
      body: cart.items.isEmpty
          ? Center(
              child: Text('No channel subscribed',
                  style: TextStyle(
                    color: ColorConstants.primarywhite,
                  )))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(cart.items[index]['image']!),
                    ),
                    title: Text(
                      cart.items[index]['name']!,
                      style: TextStyle(color: ColorConstants.primarywhite),
                    ),
                    // No subtitle in the list
                    trailing: ElevatedButton(
                        onPressed: () {
                          cart.removeItem(cart.items[index]['name']!);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                '${cart.items[index]['name']} removed from list!'),
                          ));
                        },
                        child: Text("unscubscribe")));
              },
            ),
    );
  }
}
