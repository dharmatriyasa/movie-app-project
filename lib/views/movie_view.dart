import 'package:flutter/material.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF17141F),
        leading: GestureDetector(
          onTap: () {
            // add it at 4-route-screen
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Movie",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              color: Colors.white
          ),
        ),
      ),
      backgroundColor: const Color(0XFF17141F),
      body: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/1917.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 8.0,),
                    Text(
                      "1917",
                      style: const TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2.0,),
                    Text(
                      "Action, Drama, & War",
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 4.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2020",
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4.0,),
                        const Text(
                          '|',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4.0,),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFFFFD700),
                              size: 16.0,
                            ),
                            SizedBox(width: 4.0,),
                            Text(
                              "8.2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 4.0,),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                        left: 16.0,
                        right: 16.0,
                        bottom: 72.0,
                      ),
                      child: Text(
                        "April 6, 1917. On a battlefield in Northern France, Lance Corporal Tom Blake with the British Army is asked to choose one of his battalion colleagues to join him on an assignment, he choosing his best friend, Lance Corporal Will Schofield. It isn't until Blake chooses Schofield that they learn of the dangerous nature of the mission: to hand deliver a message to Colonel MacKenzie leading another nearby battalion, they having to cross no man's land to what they have been told are now the abandoned German trenches to get to MacKenzie just past the nearby town of Écoust. The message, which must reach its destination by dawn tomorrow, is for MacKenzie to abort his troop's attack then on the supposedly retreating Germans who are in reality lying in wait, the Germans having planned this deception for months. The lives of MacKenzie and his 1,600 men are at risk if the message does not make it through in time, one of those men being Blake's brother, Lt. Joseph Blake. Blake and Schofield's stories as it pertains to them as soldiers in the bigger picture of the war, as soldiers trying to stay alive, as friends, and as human beings who have their own motivations are told for as long as they are able to survive on this mission.",
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: const Color(0XFF17141F),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                        ),
                        onPressed: () {

                        },
                        child: const Text(
                          'Remove',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                    Expanded(
                      child: TextButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}
