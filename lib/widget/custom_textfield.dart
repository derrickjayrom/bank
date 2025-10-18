import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({super.key});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  final TextEditingController amountController = TextEditingController();
  String selectedCountry = 'USA';
  String currencySymbol = '\$';

  final Map<String, String> countryCurrencyMap = {
    'USA': '\$',
    'UK': '£',
    'Europe': '€',
    'Ghana': '₵',
    'Nigeria': '₦',
    'Japan': '¥',
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 24, left: 24, right: 24),
        width: double.infinity,
        height: 352,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Amount to withdraw'),
            SizedBox(height: 8),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: ' $currencySymbol ',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12.5,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('Balance:'), Text('\$9,476.00')],
            ),
            SizedBox(height: 12),
            Text('Country'),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedCountry,
              decoration: InputDecoration(
                labelText: 'Select Country',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              items: countryCurrencyMap.keys.map((country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedCountry = value;
                    currencySymbol = countryCurrencyMap[value]!;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
