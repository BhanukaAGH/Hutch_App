import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  Widget _buildFormContainer(String title, String value) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 1.5),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFormContainer('My Number', '0781231232'),
          _buildFormContainer('Name', '94781231232'),
          _buildFormContainer('NIC', '992312222'),
          _buildFormContainer('Package', 'PS_4G_PROMO'),
        ],
      ),
    );
  }
}
