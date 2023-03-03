import 'package:flutter/material.dart';

class ElementsPage extends StatefulWidget {
  const ElementsPage({Key? key}) : super(key: key);

  @override
  State<ElementsPage> createState() => _ElementsPageState();
}

class _ElementsPageState extends State<ElementsPage> {
  List? items = [];
  GlobalKey<AnimatedListState>? animatedListKey = GlobalKey();

  // this function for add items with animation showing: Item: Current index number
  void addItem() {
    items!.insert(0, "Item: ${items!.length + 1}");
    animatedListKey!.currentState!
        .insertItem(0, duration: const Duration(milliseconds: 900));
  }

  // this function for remove(delete) items with animation showing: Delete
  void deleteItem(int? index) {
    items!.removeAt(index!);
    animatedListKey!.currentState!.removeItem(
        index,
        (_, animatedListKey) => SizeTransition(
              sizeFactor: animatedListKey,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.red,
                child: const ListTile(
                    title: Text(
                  "Deleted",
                  style: TextStyle(fontSize: 30.0),
                )),
              ),
            ),
        duration: const Duration(milliseconds: 600));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: AnimatedList(
              key: animatedListKey,
              initialItemCount: 0,
              padding: const EdgeInsets.all(14.0),
              itemBuilder: (context, index, animation) => SizeTransition(
                    sizeFactor: animation,
                    key: UniqueKey(),
                    child: Container(
                      margin: const EdgeInsets.all(14.0),
                      color: Colors.deepOrange,
                      child: ListTile(
                        title: Text(
                          items![index],
                          style: const TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                        trailing: IconButton(
                            onPressed: () => deleteItem(index),
                            icon: const Icon(Icons.delete, color: Colors.white,)),
                      ),
                    ),
                  )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => addItem(), child: const Icon(Icons.add)),
    );
  }
}
