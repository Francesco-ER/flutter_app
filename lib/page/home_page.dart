import 'package:conected_windows_server/Models/actividad.dart';
import 'package:flutter/material.dart';
import '../services/user_services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ActividadModel? _actividad;
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONEXION HTTP'),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Form(
                  key: _keyForm,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'ID de Vendedor',
                        border: OutlineInputBorder(),
                        isDense: false,
                        contentPadding: EdgeInsets.all(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    color: Colors.blue,
                    child: Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () async {
                    this._actividad = await UserServices().getIdeas();
                    setState(() {});
                  }),
              if (this._actividad != null) Text(this._actividad!.activity!),
            ],
          )),
    );
  }
}
