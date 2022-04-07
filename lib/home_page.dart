import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_curso/app_controller.dart';

import 'categorias.dart';
import 'material_page.dart';
import 'servicos.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  int counter = 0;
  bool isDarkTheme = false;
  int _selectedIndex = 0;

  get onTabTapped => null;
  // final List<Widget> _telas = [
  //   CategoriasPage(),
  //   MateriaisPage(),
  //   ServicosPage(),
  // ];

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                        'https://media-exp1.licdn.com/dms/image/C4E03AQGFAhdSYPe7kQ/profile-displayphoto-shrink_200_200/0/1646495459765?e=1653523200&v=beta&t=HMrbLeGN3f8VkRoLJ_TdOQ1QMXfhKe_4LrVbbE2Lkes'),
                  ),
                  accountName: Text('Walter Lima'),
                  accountEmail: Text('walter.lima.viana@gmail.com')),
              Container(
                height: 40,
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('Tela de Ínicio'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
                subtitle: Text('Finalizar Sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          //Alterar o titulo dentro da AppBar
          title: Text('Doguito PetShop'),
          // O actions serve para colocar um icone dentro da AppBar
          actions: [CustomSwitch()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: onTabTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Categorias',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.pets), label: 'Produtos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.medical_services_sharp), label: 'Serviços'),
            ]),
        body: SafeArea(
            child: Column(children: [
          Container(
            height: 10,
          ),
          Container(
            child: Text('Produtos Recomendados',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Text('Serviços',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
          Container(
              child: Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/banho-e-tosa.jpg'),
                        ),
                        Text('Banho e Tosa'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/farmacia.jpg'),
                        ),
                        Text('Fármacia'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/veterinario.jpg'),
                        ),
                        Text('Veterinário'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/pet-sitter.jpg'),
                        ),
                        Text('Pet Sitter'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/hospedagem.jpg'),
                        ),
                        Text('Hospedagem'),
                      ],
                    ),
                  ),
                ]),
          )),
        ])));
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        //O value vai acionar a instancia AppController
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          //O AppController aciona a função para mudar o tema
          AppController.instance.changeTheme();
        });
  }
}
