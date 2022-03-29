import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_curso/app_controller.dart';

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
              leading: Icon(Icons.list),
              title: Text('Categorias'),
              subtitle: Text('lista'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text('Produtos'),
              subtitle: Text('rações, acessórios'),
              onTap: () {
                Navigator.of(context).pushNamed('/produtos');
              },
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Serviços'),
              subtitle: Text('banho e tosa, fármacia'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
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
      body: Container(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/img/produto.jpg'),
                    ),
                    Text('Ração 3Kg Mockup'),
                    Text('Salmão com arroz'),
                    Text('RS 50,00'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/img/produto.jpg'),
                    ),
                    Text('Ração 3Kg Mockup'),
                    Text('Salmão com arroz'),
                    Text('RS 50,00'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/img/produto.jpg'),
                    ),
                    Text('Ração 3Kg Mockup'),
                    Text('Salmão com arroz'),
                    Text('RS 50,00'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/img/produto.jpg'),
                    ),
                    Text('Ração 3Kg Mockup'),
                    Text('Salmão com arroz'),
                    Text('RS 50,00'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
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
      ),
    );
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
