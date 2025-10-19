import 'package:bank/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomCurrencyField extends StatefulWidget {
  final String title;
  final String balanceText;
  final Map<String, String> countryCurrencyMap;
  final double height;
  final Function(String amount, String country, String symbol)? onChanged;

  const CustomCurrencyField({
    super.key,
    required this.title,
    required this.balanceText,
    required this.countryCurrencyMap,
    this.height = 352,
    this.onChanged,
  });

  @override
  State<CustomCurrencyField> createState() => _CustomCurrencyFieldState();
}

class _CustomCurrencyFieldState extends State<CustomCurrencyField> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  late String selectedCountry;
  late String currencySymbol;

  @override
  void initState() {
    super.initState();
    selectedCountry = widget.countryCurrencyMap.keys.first;
    currencySymbol = widget.countryCurrencyMap[selectedCountry]!;
    countryController.text = selectedCountry;
  }

  @override
  void dispose() {
    amountController.dispose();
    countryController.dispose();
    super.dispose();
  }

  void _onValueChanged() {
    if (widget.onChanged != null) {
      widget.onChanged!(amountController.text, selectedCountry, currencySymbol);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        width: double.infinity,
        height: widget.height,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title),
            const SizedBox(height: 8),

            TextField(
              controller: amountController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              onChanged: (_) => _onValueChanged(),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Balance:'),
                const SizedBox(width: 4),
                Text(widget.balanceText),
              ],
            ),

            const SizedBox(height: 12),

            const Text('Country'),
            const SizedBox(height: 8),

            DropdownMenu<String>(
              trailingIcon: const Icon(Icons.arrow_drop_down),
              controller: countryController,
              initialSelection: selectedCountry,
              width: MediaQuery.of(context).size.width - 48,
              textStyle: const TextStyle(fontSize: 14, color: Colors.black),
              menuStyle: MenuStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                elevation: WidgetStateProperty.all(2),
                shape: WidgetStateProperty.all(
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
              dropdownMenuEntries: widget.countryCurrencyMap.keys.map((
                country,
              ) {
                return DropdownMenuEntry<String>(
                  value: country,
                  label: country,
                );
              }).toList(),
              onSelected: (value) {
                if (value != null) {
                  setState(() {
                    selectedCountry = value;
                    currencySymbol = widget.countryCurrencyMap[value]!;
                  });
                  _onValueChanged();
                }
              },
            ),

            const SizedBox(height: 32),

            Center(
              child: CustomActionButton(label: 'Request', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
