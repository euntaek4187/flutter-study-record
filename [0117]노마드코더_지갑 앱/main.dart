import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                    const Text("Hello, euntaek",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                    Text("Welcome Back", 
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                    ),
                  ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text('Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('\$5 193 300',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                        child: Text('transfer', style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                      ),
                    ),
                    const MyButton()
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text('view all',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro', 
                code: 'EUR', 
                amount: '6 789', 
                icon: Icons.euro_rounded,
                isInverted: false,
                ),
                Transform.translate(
                  offset: Offset(0, -30),
                  child: const CurrencyCard(
                    name: 'Bircoin', 
                    code: 'BIC', 
                    amount: '9 876', 
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    ),
                ),
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: const CurrencyCard(
                    name: 'Dollor', 
                    code: 'USD', 
                    amount: '12 930', 
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    ),
                  ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  
  const MyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 52, 52, 52),
        borderRadius: BorderRadius.circular(45),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text('transfer', style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        ),
      ),
    );
  }
}

class CurrencyCard extends StatelessWidget{

  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount, 
    required this.icon,
    required this.isInverted,
    });

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: isInverted ? Colors.white : Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(
                          color: isInverted ? Color(0xFF1F2123) : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(amount, style: TextStyle(
                              color: isInverted ? Color(0xFF1F2123) : Colors.white,
                              fontSize: 20,
                            ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(code, style: TextStyle(
                              color: isInverted ? Color(0xFF1F2123) : Colors.white.withOpacity(0.8),
                            ),
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                    Transform.scale(
                      scale: 2.2,
                      child: Transform.translate(
                        offset: Offset(8, 15),
                        child: Icon(icon, 
                              color: isInverted ? Color(0xFF1F2123) : Colors.white,
                              size: 88,
                              ),
                      ),
                    )
                  ],
                  ),
                ),
              );
  }
}