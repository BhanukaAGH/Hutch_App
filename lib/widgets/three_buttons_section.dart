import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  Widget _buildButton(BuildContext ctx, String buttonName) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Theme.of(ctx).primaryColor,
      ),
      child: const Text(
        'Buy Data Add-On',
        style: TextStyle(fontSize: 11),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton(context, 'Buy Data Add-On'),
          _buildButton(context, 'Buy Voice Add-On'),
          _buildButton(context, 'Buy SMS Add-On'),
        ],
      ),
    );
  }
}
