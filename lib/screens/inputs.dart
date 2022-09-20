
import 'package:flutter/material.dart';
import 'package:ciat/screens/screens.dart';

class InputsScreen extends StatefulWidget {
  InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  final Hivedata hiveData = Hivedata();
  final TextEditingController controller = TextEditingController();
  final TextEditingController apellido = TextEditingController();
  final TextEditingController cedula = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    apellido.dispose();
    cedula.dispose();
    super.dispose();
  }

  Future<void> getData() async {
   //contacts = await hiveData.contacts;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'cedula': '',
    };
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('REGISTRO')),
          backgroundColor: Color.fromARGB(255, 0, 148, 94),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller,
                  ),
                  TextFormField(
                    controller: apellido,
                  ),
                  TextFormField(
                    controller: cedula,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 0, 148, 94)),
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('REGISTRAR'))),
                      onPressed: () async {
                        hiveData
                            .saveContact(User(
                                nombre: controller.text,
                                apellido: apellido.text,
                                cedula: cedula.text))
                            .then((value) => print('$apellido'));
                      }),
                  // Expanded(
                  //   child: FutureBuilder<List<User>>(
                  //       future: hiveData.contacts,
                  //       builder: (context, snapshot) {
                  //         return ListView.builder(
                  //             itemCount: snapshot.data?.length ?? 0,
                  //             itemBuilder: ((context, index) {
                  //               return SizedBox(
                  //                 width: 100,
                  //                 height: 100,
                  //                 child: ListTile(
                  //                   title: Text(snapshot.data![index].nombre),
                  //                   subtitle:
                  //                       Text(snapshot.data![index].apellido),
                  //                 ),
                  //               );
                  //             }));
                  //       }),
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}
