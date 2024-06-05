import 'package:flutter/material.dart';

class PayRentPage extends StatefulWidget {
  @override
  _PayRentPageState createState() => _PayRentPageState();
}

class _PayRentPageState extends State<PayRentPage> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _priceController = TextEditingController();
  String? _selectedPaymentMethod;
  String? _selectedPropertyType;
  String? _selectedPricePeriod;
  String? _selectedBedrooms;
  String? _selectedBathrooms;
  String? _selectedAmenities;
  String? _selectedFurnishing;

  final List<String> _paymentMethods = ['M-Pesa', 'Bank Transfer', 'Credit Card'];
  final List<String> _propertyTypes = ['Apartment', 'House', 'Condo'];
  final List<String> _pricePeriods = ['Monthly', 'Yearly'];
  final List<String> _bedroomOptions = ['1', '2', '3', '4+'];
  final List<String> _bathroomOptions = ['1', '2', '3', '4+'];
  final List<String> _amenitiesOptions = ['Pool', 'Gym', 'Parking', 'WiFi'];
  final List<String> _furnishingOptions = ['Furnished', 'Unfurnished'];

  @override
  void dispose() {
    _amountController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _handlePayRent() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Rent payment processed successfully!')),
      );
      // Add payment processing logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay Rent'),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green[100], // Match the background color of TenantPage
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/logo.png', // Replace with your logo asset
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Properties',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      ),
                    ],
                  ),
                ),
                // Property Details Card
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Property type dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Property Type',
                            prefixIcon: Icon(Icons.home),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedPropertyType,
                          items: _propertyTypes.map((String type) {
                            return DropdownMenuItem<String>(
                              value: type,
                              child: Text(type),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedPropertyType = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select a property type' : null,
                        ),
                        SizedBox(height: 16),
                        // Price period dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Price Period',
                            prefixIcon: Icon(Icons.calendar_today),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedPricePeriod,
                          items: _pricePeriods.map((String period) {
                            return DropdownMenuItem<String>(
                              value: period,
                              child: Text(period),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedPricePeriod = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select a price period' : null,
                        ),
                        SizedBox(height: 16),
                        // Price input field
                        TextFormField(
                          controller: _priceController,
                          decoration: InputDecoration(
                            labelText: 'Price',
                            prefixIcon: Icon(Icons.monetization_on),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the price';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16),
                        // Bedrooms dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Number of Bedrooms',
                            prefixIcon: Icon(Icons.king_bed),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedBedrooms,
                          items: _bedroomOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedBedrooms = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select the number of bedrooms' : null,
                        ),
                        SizedBox(height: 16),
                        // Bathrooms dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Number of Bathrooms',
                            prefixIcon: Icon(Icons.bathtub),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedBathrooms,
                          items: _bathroomOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedBathrooms = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select the number of bathrooms' : null,
                        ),
                        SizedBox(height: 16),
                        // Amenities dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Amenities',
                            prefixIcon: Icon(Icons.pool),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedAmenities,
                          items: _amenitiesOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedAmenities = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select amenities' : null,
                        ),
                        SizedBox(height: 16),
                        // Furnishing dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Furnishing',
                            prefixIcon: Icon(Icons.chair),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedFurnishing,
                          items: _furnishingOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedFurnishing = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select furnishing status' : null,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Payment Details Card
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Payment method dropdown
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Payment Method',
                            prefixIcon: Icon(Icons.payment),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          value: _selectedPaymentMethod,
                          items: _paymentMethods.map((String method) {
                            return DropdownMenuItem<String>(
                              value: method,
                              child: Text(method),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedPaymentMethod = newValue;
                            });
                          },
                          validator: (value) =>
                              value == null ? 'Please select a payment method' : null,
                        ),
                        SizedBox(height: 16),
                        // Conditional fields based on selected payment method
                        if (_selectedPaymentMethod == 'M-Pesa')
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'M-Pesa Number',
                              prefixIcon: Icon(Icons.phone_android),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your M-Pesa number';
                              }
                              return null;
                            },
                          )
                        else if (_selectedPaymentMethod == 'Bank Transfer')
                          Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Account Number',
                                  prefixIcon: Icon(Icons.account_balance),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your account number';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Bank Name',
                                  prefixIcon: Icon(Icons.account_balance_wallet),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your bank name';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          )
                        else if (_selectedPaymentMethod == 'Credit Card')
                          Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Card Number',
                                  prefixIcon: Icon(Icons.credit_card),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your card number';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Expiry Date (MM/YY)',
                                  prefixIcon: Icon(Icons.calendar_today),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                keyboardType: TextInputType.datetime,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the expiry date';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'CVV',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the CVV';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Pay Now button
                Center(
                  child: ElevatedButton(
                    onPressed: _handlePayRent,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 18, color: Colors.amber[700]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
