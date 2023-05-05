import 'package:flutter/material.dart';
import 'package:flutter_premier_projet/tp_note/choice_item.dart';

class HeaderComponent extends StatefulWidget {
  final List<SelectableThing> things;
  Function onBottomClick;

  HeaderComponent({
    Key? key,
    required this.things,
    required this.onBottomClick,
  }) : super(key: key);

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        children: [
          const Text('Vos choix :'),
          _elementsAffiches(widget.things),
        ],
      ),
    );
  }

  Widget _elementsAffiches(List<SelectableThing> things) {
    if (selectedThing().isEmpty) {
      return const Text('Vous n\'avez rien sélectionne');
    }
    return Wrap(
        children: List.of(selectedThing())
            .map((e) => Pastille(
                  text: e.content,
                  isSelected: e.isSelected,
                  idleBackgroundColor: Colors.white54,
                  onClick: () {},
                  thing: e,
                ))
            .toList());
  }

  List<SelectableThing> selectedThing() {
    return widget.things
        .where((element) => element.isSelected == true)
        .toList();
  }

  void redraw() {
    setState(() {

    });
  }
}
