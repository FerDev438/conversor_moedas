import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> listitems = ["Real", "Dolar", "Euro", "BitCoin"];
  String selectval = "Real";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'Assets/images/mamacodindin.png',
                width: 150,
                height: 150,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 64,
                        child: DropdownButton(
                          value: selectval,
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectval = value.toString();
                            });
                          },
                          items: listitems.map((itemone) {
                            return DropdownMenuItem(
                              value: itemone,
                              child: Text(itemone),
                            );
                          }).toList(),
                        ),
                      )),
                  const SizedBox(width: 10),
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {},
                    child: const Text('CONVERTER')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
