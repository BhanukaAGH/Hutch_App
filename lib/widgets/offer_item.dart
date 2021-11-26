import 'package:flutter/material.dart';

class OfferItem extends StatefulWidget {
  @override
  State<OfferItem> createState() => _OfferItemState();
}

class _OfferItemState extends State<OfferItem> {
  var _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: const EdgeInsets.only(
            top: 12,
            left: 12,
            right: 12,
          ),
          color: Colors.grey[100],
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.blueGrey.shade300,
              width: 1.2,
            ),
            borderRadius: _expanded
                ? const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  )
                : BorderRadius.circular(6),
          ),
          child: ListTile(
            title: const Text(
              'VIP Offer (50 MB FREE)',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
              icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: _expanded
                ? Border.all(
                    color: Colors.blueGrey.shade200,
                    width: 1.2,
                  )
                : null,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          height: _expanded ? 130 : 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Special 50 MB FREE Data Offer exclusively for Hutch App users! Offer Validity - 7 Days. Daily One time Claim offer.  Visit daily to find out many more exciting offers!',
                style: TextStyle(
                  color: Colors.blueGrey.shade600,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ElevatedButton(
                child: const Text(
                  'ACTIVATE',
                  style: TextStyle(fontSize: 14),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
