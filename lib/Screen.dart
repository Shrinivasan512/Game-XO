import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:game/ViewModel.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  final ViewModel _homeScrenVm = ViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Game XO"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 400,
              child: GridView.builder(
                itemCount: _homeScrenVm.collectionElements.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Observer(
                    builder: (context) {
                      // print(_homeScrenVm.collectionElements[index]);
                      return MaterialButton(
                        onPressed: () {
                          _homeScrenVm.tapp(index);
                        },
                        child: _homeScrenVm.collectionElements[index] == ""
                            ? const Icon(Icons.edit)
                            : _homeScrenVm.collectionElements[index] == "close"
                                ? const Icon(Icons.close)
                                : const Icon(Icons.circle),
                      );
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _homeScrenVm.update();
              },
              child: const Text("Reset"),
            ),
            SizedBox(
              height: 50,
            ),
            Observer(builder: (context) {
              return Text(
                _homeScrenVm.showWinner,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
          ]),
    );
  }
}
