import 'package:flutter/material.dart';
import 'package:flutter_premier_projet/tp_note/choice_item.dart';
import 'package:flutter_premier_projet/tp_note/footer.dart';
import 'package:flutter_premier_projet/tp_note/header.dart';

void main() {
  runApp(const TpApp());
}

class TpApp extends StatelessWidget {
  const TpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpComponent();
  }
}

class TpComponent extends StatefulWidget {

  TpComponent({Key? key}) : super(key: key);

  @override
  State<TpComponent> createState() => _TpComponentState();
}

class _TpComponentState extends State<TpComponent> {

  final _choices = [
    SelectableThing(content: 'Cinéma', isSelected: false),
    SelectableThing(content: 'Pétanque', isSelected: false),
    SelectableThing(content: 'Fitness', isSelected: false),
    SelectableThing(content: 'League of Legends', isSelected: false),
    SelectableThing(content: 'Basket', isSelected: false),
    SelectableThing(content: 'Shopping', isSelected: false),
    SelectableThing(content: 'Programmation', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    HeaderComponent _headerComponent = HeaderComponent(
      things: _choices,
      onBottomClick: _onBottomClick,
    );


    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: _headerComponent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white54,
                  child: FooterComponent(
                      things: _choices,
                      onClick: (SelectableThing thing) {
                        debugPrint('toto');
                        debugPrint('${thing.isSelected}');
                        debugPrint('${_choices[0].isSelected}');
                        _onBottomClick();
                        _headerComponent.onBottomClick();
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onBottomClick() {
      debugPrint('Bottom clicked');
      setState(() {

      });
  }
}
