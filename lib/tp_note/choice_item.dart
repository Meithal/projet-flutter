import 'package:flutter/material.dart';

class SelectableThing {
  final String content;
  bool isSelected;

  SelectableThing(
      {required this.content, required this.isSelected});
}


class ChoiceItemComponent extends StatefulWidget {
  final String text;
  bool isSelected;
  final Color idleBackgroundColor;
  Function onClick;
  SelectableThing thing;

  ChoiceItemComponent({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.idleBackgroundColor,
    required this.onClick,
    required this.thing,
  }) : super(key: key);

  @override
  State<ChoiceItemComponent> createState() => _ChoiceItemComponentState();
}

class _ChoiceItemComponentState extends State<ChoiceItemComponent> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: _backgroundColor(),
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.all(10),
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)))),
      onPressed: () {
        setState(() {
          widget.thing.isSelected = !widget.thing.isSelected;
          widget.isSelected = !widget.isSelected;
          widget.onClick(widget.thing);
        });
      },
      child: Text(widget.text),
    );
  }

  MaterialStateProperty<Color> _backgroundColor() {
    if (!widget.isSelected) {
      return MaterialStateProperty.all<Color>(Color(widget.idleBackgroundColor.value));
    }

    return MaterialStateProperty.all<Color>(Colors.orange);
  }
}

class Pastille extends StatelessWidget {
  final String text;
  bool isSelected;
  final Color idleBackgroundColor;
  Function onClick;
  SelectableThing thing;

  Pastille({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.idleBackgroundColor,
    required this.onClick,
    required this.thing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: ChoiceItemComponent(
        text: text,
        isSelected: isSelected,
        idleBackgroundColor: idleBackgroundColor,
        onClick: onClick,
        thing: thing,
      ),
    );
  }
}
