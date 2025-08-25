
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.red,
                width: 2
              )
            ),
            child: Column(
              children: [
                Icon(Icons.error,size: 48, color: Colors.red,),
                const SizedBox(height:16),
                Text(
                  'Error al obtener La lista de eventos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                )
    
              ],
            ),
          )
        ],
      )
    );
  }
}