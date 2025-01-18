
import 'package:flutter/material.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text =
            "${picked.day} / ${picked.month} / ${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Image.asset(
              'assets/logo.png',
              height: 150,
            ),
            const SizedBox(
              height: 21,
            ),
            const Text(
              "E-Catalog",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 7),
            const Text(
              "PT ARITA PRIMA INDONESIA Tbk",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //Input FIld
            TextField(
              decoration: InputDecoration(
                labelText: 'Kode Absen',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Menambahkan radius
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Radius saat fokus
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Radius saat tidak fokus
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
            ),

            const SizedBox(height: 16),
            TextField(
              controller: _dateController,
              readOnly: true,
              onTap: () => _selectDate(context),
              decoration: InputDecoration(
                  labelText: 'Tanggal',
                  hintText: '_ / __ / ____',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  )),
            ),
            const SizedBox(height: 2),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  print('Move To WA Chat');
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xF0066FFD),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            //Login Button
            ElevatedButton(
              onPressed: () {
                print('Login Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                backgroundColor: const Color(0xFF006FFD),
                foregroundColor: Colors.white,
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 2),
            //Register link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member? '),
                TextButton(
                    onPressed: () {
                      print("Navigate to WA Chat");
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        color: Color(0xFF006FFD),
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 20),
            //social media
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.g_translate),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.install_desktop),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
