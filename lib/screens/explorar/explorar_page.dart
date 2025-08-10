import 'package:flutter/material.dart';
import 'package:medtour/config/theme_config.dart';
import 'package:medtour/providers/site_provider.dart';
import 'package:medtour/screens/explorar/assets/custom_buttom.dart';

class ExplorarPage extends StatelessWidget {
  const ExplorarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explorar',style: Tema().titleStyle(),),centerTitle: true,),
      body: ListView(
        padding: EdgeInsets.all(7),
        children: [
          Text('Lugares por visitar',style: Tema().subTitleStyle(),),
          SizedBox(
            height: 200,
            child: FutureBuilder<List<Lugar>>(
              future: loadLugares(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  final List<Lugar> lugares = snapshot.data!;
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lugares.length,
                    itemBuilder: (context, index) {
                      final Lugar lugar = lugares[index];
                      return CustomButtom(imagen: Image.asset(lugar.prev), lugar: lugar.nombre);
                    },
                  );
                }
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Text('error');
                }
                if(snapshot.hasError){
                  return Text('error');
                }
                return Text('error');
              },
            )
          )
        ],
      ),
    );
  }
}