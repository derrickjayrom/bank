import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({super.key});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

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
  void initState() {
    super.initState();
    countryController.text = selectedCountry;
  }

  @override
  void dispose() {
    amountController.dispose();
    countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        width: double.infinity,
        height: 352,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === Amount Field ===
            const Text('Amount to withdraw'),
            const SizedBox(height: 8),
            TextField(
              controller: amountController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: InputDecoration(
                prefixText: ' $currencySymbol ',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12.5,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // === Balance ===
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Balance:'),
                SizedBox(width: 4),
                Text('\$9,476.00'),
              ],
            ),

            const SizedBox(height: 12),

            // === Country Selector ===
            const Text('Country'),
            const SizedBox(height: 8),

            // Material 3 DropdownMenu styled like your old dropdown
            DropdownMenu<String>(
              controller: countryController,
              initialSelection: selectedCountry,
              width: MediaQuery.of(context).size.width - 48,
              textStyle: const TextStyle(fontSize: 14, color: Colors.black),
              menuStyle: MenuStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(2),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12.5,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              dropdownMenuEntries: countryCurrencyMap.keys.map((country) {
                return DropdownMenuEntry<String>(
                  value: country,
                  label: country,
                );
              }).toList(),
              onSelected: (value) {
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
