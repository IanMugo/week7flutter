import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Logic for logging out the user
              Navigator.pushReplacementNamed(context, '/'); // Navigate to login
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, [User's Name]!", // Replace with actual user's name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Recent Transactions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example: Replace with actual transaction count
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("Transaction ${index + 1}"), // Replace with actual transaction details
                      subtitle: Text("Amount: \$${(index + 1) * 10}"), // Example amount
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Navigate to transaction details page
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sendMoney'); // Navigate to send money page
                },
                child: Text('Send Money'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
