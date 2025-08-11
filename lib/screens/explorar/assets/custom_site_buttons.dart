import 'package:flutter/material.dart';
import 'package:medtour/providers/site_provider.dart';
import 'package:medtour/screens/explorar/assets/custom_buttom.dart';

class CustomSiteButtons extends StatelessWidget {
  const CustomSiteButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Lugar>>(
            future: loadLugares(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                final List<Lugar> lugares = snapshot.data!;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lugares.length,
                  itemBuilder: (context, index) {
                    final Lugar lugar = lugares[index];
                    return CustomButtom(imagen: lugar.prev, lugar: lugar.nombre,obj: lugar,);
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
          );
  }
}