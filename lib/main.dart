import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';

int gamble(int amount) {
  final multiplier = Random().nextDouble() * 1.5 + 0.25; // 0.25 to 1.75
  return (amount * multiplier).round(); // or .floor(), .ceil(), etc.
}

void main() {
  runApp(const MaterialApp(home: Homepage()));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class NumericalInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const NumericalInputField({
    super.key,
    required this.controller,
    this.label = "Enter Amount to Gamble!",
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}

class _HomepageState extends State<Homepage> {
  int money = 0;
  int moneyPerSec = 1;
  int accountants = 0;
  int offices = 0;
  int buildings = 0;
  int towns = 0;
  int cities = 0;
  int countries = 0;
  int continents = 0;
  int planets = 0;
  int solarSystems = 0;
  int galaxies = 0;
  int blackHoles = 0;
  int universes = 0;
  int multiverses = 0;
  int hamburgers = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    loadMoney();
  }

  Future<void> loadMoney() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      money = prefs.getInt('money') ?? 0;
      moneyPerSec = prefs.getInt('moneyPerSec') ?? 1;
      accountants = prefs.getInt('accountants') ?? 0;
      offices = prefs.getInt('offices') ?? 0;
      buildings = prefs.getInt('buildings') ?? 0;
      towns = prefs.getInt('towns') ?? 0;
      cities = prefs.getInt('cities') ?? 0;
      countries = prefs.getInt('countries') ?? 0;
      continents = prefs.getInt('continents') ?? 0;
      planets = prefs.getInt('planets') ?? 0;
      solarSystems = prefs.getInt('solarSystems') ?? 0;
      galaxies = prefs.getInt('galaxies') ?? 0;
      blackHoles = prefs.getInt('blackHoles') ?? 0;
      universes = prefs.getInt('universes') ?? 0;
      multiverses = prefs.getInt('multiverses') ?? 0;
      hamburgers = prefs.getInt('hamburgers') ?? 0;
    });

    timer = Timer.periodic(const Duration(seconds: 1), (_) async {
      setState(() {
        money += moneyPerSec;
      });
      await prefs.setInt('money', money);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Money: $money',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Money/sec: $moneyPerSec',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Divider(
                color: const Color.fromARGB(255, 198, 198, 198),
                thickness: 1,
                height: 40,
              ),

              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('accountants', accountants);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 10) {
                      money -= 10;
                      moneyPerSec += 1;
                      accountants++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('1/s | Buy Accountant (10 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('offices', offices);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 40) {
                      money -= 40;
                      moneyPerSec += 5;
                      offices++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('5/s | Buy Office (40 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('buildings', buildings);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 200) {
                      money -= 200;
                      moneyPerSec += 30;
                      buildings++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('20/s | Buy Building (200 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('towns', towns);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 500) {
                      money -= 500;
                      moneyPerSec += 40;
                      towns++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('40/s | Buy Town (500 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('cities', cities);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 20000) {
                      money -= 20000;
                      moneyPerSec += 300;
                      cities++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('300/s | Buy City (20,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('countries', countries);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 70000) {
                      money -= 70000;
                      moneyPerSec += 1000;
                      countries++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('1000/s | Buy Country (70,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('planets', planets);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 190000) {
                      money -= 190000;
                      moneyPerSec += 3500;
                      planets++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('3500/s | Buy Planet (190,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('solarSystems', solarSystems);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 350000) {
                      money -= 350000;
                      moneyPerSec += 10000;
                      solarSystems++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('10,000/s | Buy Solar System (350,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('galaxies', galaxies);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 800000) {
                      money -= 800000;
                      moneyPerSec += 20000;
                      galaxies++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('20,000/s | Buy Galaxy (800,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('universes', universes);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 1500000) {
                      money -= 1500000;
                      moneyPerSec += 40000;
                      universes++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('40,000/s | Buy Universe (1,500,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('multiverses', multiverses);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 3500000) {
                      money -= 3500000;
                      moneyPerSec += 80000;
                      multiverses++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('80,000/s | Buy Multiverse (3,500,000 money)'),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('hamburgers', hamburgers);
                  await prefs.setInt('moneyPerSec', moneyPerSec);
                  setState(() {
                    if (money >= 20000000000000) {
                      money -= 20000000000000;
                      moneyPerSec += 2;
                      hamburgers++;
                    }
                  });
                  await prefs.setInt('money', money);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    120,
                    202,
                    152,
                  ), // Background color
                  foregroundColor: Colors.white, // Text (and icon) color

                  elevation: 5, // Shadow depth
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('2/s | Buy Hamburger (20,000,000,000,000 money)'),
              ),

              //Easter Egg. :D
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => piecePage(
                      accountants: accountants,
                      offices: offices,
                      buildings: buildings,
                      towns: towns,
                      cities: cities,
                      countries: countries,
                      continents: continents,
                      planets: planets,
                      solarSystems: solarSystems,
                      galaxies: galaxies,
                      universes: universes,
                      multiverses: multiverses,
                      hamburgers: hamburgers,
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.casino),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gamblePage(money: money),
                  ),
                );

                if (result != null && result is int) {
                  setState(() {
                    money = result;
                  });

                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('money', money);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class piecePage extends StatelessWidget {
  const piecePage({
    super.key,
    required this.accountants,
    required this.offices,
    required this.buildings,
    required this.towns,
    required this.cities,
    required this.countries,
    required this.continents,
    required this.planets,
    required this.solarSystems,
    required this.galaxies,
    required this.universes,
    required this.multiverses,
    required this.hamburgers,
  });
  final int accountants;
  final int offices;
  final int buildings;
  final int towns;
  final int cities;
  final int countries;
  final int continents;
  final int planets;
  final int solarSystems;
  final int galaxies;
  final int universes;
  final int multiverses;
  final int hamburgers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stats')),

      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('lib/Assets/Stats.json'),

                Text(
                  'Accountants: $accountants',
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                Text('Offices: $offices', style: const TextStyle(fontSize: 40)),

                Text(
                  'Buildings: $buildings',
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                Text('Towns: $towns', style: const TextStyle(fontSize: 40)),

                Text('Cities: $cities', style: const TextStyle(fontSize: 40)),
                const SizedBox(height: 10),
                Text(
                  'Countries: $countries',
                  style: const TextStyle(fontSize: 40),
                ),

                Text('Planets: $planets', style: const TextStyle(fontSize: 40)),
                const SizedBox(height: 10),
                Text(
                  'Solar Systems: $solarSystems',
                  style: const TextStyle(fontSize: 40),
                ),

                Text(
                  'Galaxies: $galaxies',
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                Text(
                  'Universes: $universes',
                  style: const TextStyle(fontSize: 40),
                ),

                Text(
                  'Multiverses: $multiverses',
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                Text(
                  'Hamburgers: $hamburgers',
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class gamblePage extends StatefulWidget {
  final int money;

  const gamblePage({super.key, required this.money});

  @override
  State<gamblePage> createState() => _GamblePageState();
}

class _GamblePageState extends State<gamblePage> {
  late int money;
  final numberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    money = widget.money;
  }

  @override
  Widget build(BuildContext context) {
    final numberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Gamble')),

      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('lib/Assets/Dice roll.json'),
                Text("You currently have: $money money"),
                const SizedBox(height: 20),
                NumericalInputField(controller: numberController),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (numberController.text.isEmpty) return;

                    final gambleAmount =
                        int.tryParse(numberController.text) ?? 0;

                    if (gambleAmount > 0 && gambleAmount <= money) {
                      final originalMoney = money;

                      // Deduct gamble amount
                      setState(() {
                        money -= gambleAmount;
                      });

                      // Calculate result
                      final result = gamble(
                        gambleAmount,
                      ); // this is the new money gained
                      final newTotal = money + result;

                      // Optional: Show outcome via dialog
                      final profit = newTotal - originalMoney;
                      String message;

                      if (profit > 0) {
                        message = "You WIN! You got $profit money!";
                      } else if (profit < 0) {
                        message = "You lost $profit money. :(";
                      } else {
                        message =
                            "Same result! (Yep, I code for edge cases. :D)";
                      }

                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text("Result! :O"),
                          content: Text(message),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close dialog
                                Navigator.of(
                                  context,
                                ).pop(newTotal); // Return to home page
                              },
                              child: const Text("Close"),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 120, 202, 152),
                    foregroundColor: Colors.white,
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  child: const Text('Gamble!'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//This is the bottom. ;D
