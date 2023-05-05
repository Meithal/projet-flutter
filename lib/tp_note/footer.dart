import 'package:flutter/material.dart';
import 'choice_item.dart';


class FooterComponent extends StatelessWidget {
  final List<SelectableThing> things;
  Function (SelectableThing) onClick;

  FooterComponent({
    Key? key,
    required this.things,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: List.of(things)
            .map(
              (thing) => Pastille(
                text: thing.content,
                isSelected: thing.isSelected,
                idleBackgroundColor: Colors.white12,
                onClick: onClick,
                thing: thing,
              ),
            )
            .toList(),
      ),
    );
  }
}
