import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 108, 127, 254),
              toolbarHeight: 170,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(80),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Builder(
                  builder: (BuildContext context) {
                    return Row(
                      children: [
                        Container(
                          child: Icon(Icons.exit_to_app),
                        ),
                        Container(
                          child: Text('Cerrar sesión'),
                        )
                      ],
                    );
                  },
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.edit),
                      ),
                      Container(
                        child: Text('Editar'),
                      )
                    ],
                  ),
                )
              ],
            ),
            body: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              iconSize: 90,
                              icon: Image.asset('assets/avatar.png'))
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Nombre completo',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Nicolas Rojas Niño'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Correo Electrónico',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('nicolas@imagineapps.co'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Celular',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('3114797257'),
                        ),
                        SizedBox(height: 8),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('Términos y condiciones'))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                              child: ElevatedButton(
                            child: Row(
                              children: [
                                const Text(
                                  'Lista de pedidos',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 125, 144, 251)),
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    iconSize: 60,
                                    icon: Image.asset('assets/img2.png'))
                              ],
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(290, 90),
                              primary: Color.fromARGB(255, 202, 207, 236),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          )),
                          SizedBox(height: 15),
                          Container(
                              child: ElevatedButton(
                            child: Row(
                              children: [
                                const Text(
                                  'Mis métodos de pago',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 125, 144, 251)),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    iconSize: 60,
                                    icon: Image.asset('assets/img1.png'))
                              ],
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(290, 90),
                              primary: Color.fromARGB(255, 202, 207, 236),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25)
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Explorar',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.map),
                    label: 'Cerca a mi',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: 'Carrito',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    label: 'Perfil',
                  )
                ])));
  }
}
