import 'package:flutter/material.dart';

class ServicosPage extends StatefulWidget {
  const ServicosPage({Key? key}) : super(key: key);

  @override
  State<ServicosPage> createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
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
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Categorias'),
              subtitle: Text('lista'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/categorias');
              },
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
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Serviços'),
      ),
    );
  }
}
