import 'package:flutter/material.dart';

class AddAccountForm extends StatefulWidget {
  const AddAccountForm({Key? key}) : super(key: key);

  @override
  _AddAccountFormState createState() => _AddAccountFormState();
}

class _AddAccountFormState extends State<AddAccountForm> {
  String? _selectedSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Account Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  icon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  icon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  icon: const Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                title: const Text('Sex'),
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.wc),
                trailing: DropdownButton<String>(
                  value: _selectedSex,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedSex = newValue;
                    });
                  },
                  items: ['Homme', 'Femme'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  icon: const Icon(Icons.phone),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Ajoutez votre logique pour ajouter un compte ici
                  // Vous pouvez accéder à la valeur sélectionnée avec _selectedSex
                },
                child: const Text('Add Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
