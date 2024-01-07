import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mon Profil',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          child: Column(
            children: [
              Container(
                child: Container(
                  //color: Colors.amber,
                  height: 350,
                  child: Stack(
                    children: [
                      Image.network(
                        'https://images.pexels.com/photos/19453179/pexels-photo-19453179/free-photo-of-ville-route-circulation-soleil-couchant.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                        width: double.infinity,
                      ),
                      Positioned(
                          top: 50,
                          left: 50,
                          right: 50,
                          bottom: -5,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 140,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/19628394/pexels-photo-19628394/free-photo-of-neige-mode-gens-femme.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Maeva OLYMPIO',
                      style: GoogleFonts.lato(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, right: 15, left: 15),
                      child: Text(
                        'Jeune passionnée de code ,je m\'interesse au hacking et aux jeux vidéos en d\'autres termes je suis streameuse',
                        style: GoogleFonts.lato(
                          color: Colors.black45,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Modifier le Profil',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.border_color_outlined,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, bottom: 10, top: 10),
                width: double.infinity,
                //height: 100,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  /*  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.white, Color.fromARGB(199, 169, 214, 247)],
                    ) */
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "A Propos de Moi",
                        style: GoogleFonts.raleway(
                          //backgroundColor: Colors.black,
                          color: Colors.black54,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    mesApropos("Habite à Nantes en France", Icons.home),
                    SizedBox(height: 5),
                    mesApropos("Influence", Icons.work),
                    SizedBox(height: 5),
                    mesApropos("En couple", Icons.heart_broken),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(
                      left: 5,
                    ),
                    width: double.infinity,
                    //color: Colors.amber,
                    child: Text(
                      "Mes Amis",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.raleway(
                        //backgroundColor: Colors.black,
                        color: Colors.black54,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  //SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 8.0, // Espacement horizontal entre les cartes
                        runSpacing: 8.0,
                        children: [
                          mesAmis(
                              "https://images.pexels.com/photos/19524656/pexels-photo-19524656/free-photo-of-noir-et-blanc-homme-tete-visage.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              "Alima FATOU"),
                          mesAmis(
                              "https://images.pexels.com/photos/19171269/pexels-photo-19171269/free-photo-of-femme-pont-pantalon-ponts.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              "Rostova KATHARINA"),
                          mesAmis(
                              "https://images.pexels.com/photos/18896754/pexels-photo-18896754/free-photo-of-singe-mammifere-photographie-animaliere-chimpanze.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              "Nevil TOWSEND"),
                          mesAmis(
                              "https://images.pexels.com/photos/19501715/pexels-photo-19501715/free-photo-of-ville-femme-portrait-crepuscule.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              "Jennifer KURT"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                //color: Colors.white,

                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, top: 10, right: 10),
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Publications",
                            style: GoogleFonts.lato(fontSize: 20),
                          ),
                          Text(
                            "Filtres",
                            style: GoogleFonts.lato(
                                color: Colors.blue[400], fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black26,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 33,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text("Quoi de Neuf?"),
                              ],
                            )),
                            Icon(
                              Icons.photo_album_outlined,
                              color: Colors.green[300],
                            )
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      //color: Colors.white,
                      width: 100,
                      height: 40,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            15.0), // Ajustez le rayon selon vos besoins
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera,
                                color: Colors.red,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Réels")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      //color: Colors.white,
                      width: 125,
                      height: 40,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            18.0), // Ajustez le rayon selon vos besoins
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call,
                                color: Colors.red,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text("En direct")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(30),
                color: Colors.white,
                width: double.infinity,
                //height: 70,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Ajustez le rayon des bordures
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(150.0,
                          50.0), // Définissez la largeur et la hauteur souhaitées
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.message_sharp), // Ajoutez l'icône ici
                      SizedBox(width: 8.0),
                      Text('Gérer les publications'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black26,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 33,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Ric Roc",
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "25 oct 2023",
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Card mesAmis(String url, String nom) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 20,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            //color: Colors.amberAccent,
            child: Image.network(
              url,
              fit: BoxFit.cover,
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(height: 10),
          Text(
            nom,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.dancingScript(
              fontSize: 12.0,
              color: Colors.black54,
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.normal,
            ), // Définissez la couleur du texte
          ),
        ],
      ),
    );
  }

  Container mesApropos(String texte, IconData icone) {
    return Container(
      child: Row(children: [
        Stack(children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(icone),
          ),
        ]),
        SizedBox(
          width: 5,
        ),
        Text("$texte")
      ]),
    );
  }
}
