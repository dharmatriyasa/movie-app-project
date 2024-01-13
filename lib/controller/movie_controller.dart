import 'package:flutter/cupertino.dart';
import 'package:movie_app/model/movie.dart';

// ChangeNotifier -> notify consumer/subscribers if the data changed
class MovieController extends ChangeNotifier {
  List<Movie> movies = [
    Movie(
      id: 1,
      imagePath: "assets/1917.jpg",
      title: "1917",
      category: "Action, Drama, & War",
      year: "2020",
      rating: 8.2,
      description: "April 6, 1917. On a battlefield in Northern France, Lance Corporal Tom Blake with the British Army is asked to choose one of his battalion colleagues to join him on an assignment, he choosing his best friend, Lance Corporal Will Schofield. It isn't until Blake chooses Schofield that they learn of the dangerous nature of the mission: to hand deliver a message to Colonel MacKenzie leading another nearby battalion, they having to cross no man's land to what they have been told are now the abandoned German trenches to get to MacKenzie just past the nearby town of Écoust. The message, which must reach its destination by dawn tomorrow, is for MacKenzie to abort his troop's attack then on the supposedly retreating Germans who are in reality lying in wait, the Germans having planned this deception for months. The lives of MacKenzie and his 1,600 men are at risk if the message does not make it through in time, one of those men being Blake's brother, Lt. Joseph Blake. Blake and Schofield's stories as it pertains to them as soldiers in the bigger picture of the war, as soldiers trying to stay alive, as friends, and as human beings who have their own motivations are told for as long as they are able to survive on this mission.",
    ),
    Movie(
      id: 2,
      imagePath: "assets/aquaman.jpg",
      title: "Aquaman",
      category: "Sci-fi & War",
      year: "2023",
      rating: 8.9,
      description: "Aquaman is a 2018 American superhero film based on the DC character of the same name. Co-produced and distributed by Warner Bros. Pictures, it is the sixth film in the DC Extended Universe (DCEU). The film was directed by James Wan from a screenplay by David Leslie Johnson-McGoldrick and Will Beall. It stars Jason Momoa as Arthur Curry / Aquaman, who sets out to lead the underwater kingdom of Atlantis and stop his half-brother, King Orm (Patrick Wilson) from uniting the seven underwater kingdoms to destroy the surface world. Amber Heard, Willem Dafoe, Patrick Wilson, Dolph Lundgren, Yahya Abdul-Mateen II, and Nicole Kidman appear in supporting roles.",
    ),
    Movie(
      id: 3,
      imagePath: "assets/barbie.jpg",
      title: "Barbie",
      category: "Adventure & Comedy",
      year: "2023",
      rating: 6.8,
      description: "Barbie the Doll lives in bliss in the matriarchal society of Barbieland feeling good about her role in the world in the various iterations of Barbies over the years showing girls that play with her that they can be whatever and whoever they want. On the flip side, Ken, who also lives in Barbieland, is unnoticed except in relation to Barbie, which is however one step above any other doll in Barbieland, such as Allan. One day, Stereotypical Barbie begins to have feelings which she's never experienced which leads to her world seemingly falling apart. Weird Barbie determines that there is something happening in the real world with someone playing with her being unhappy leading to Stereotypical Barbie reluctantly heading to the real world to rectify what is happening with that person, she first needing to find this person. Much to Barbie's chagrin, the original Ken, Beach Ken, tags along with her to the real world in he needing to survive in her presence. Beyond their mission to find this person, Barbie and Ken will find the real world unlike anything they know in Barbieland, especially in it being a male dominated society. While Barbie still has to find out what's going on that made her come to the real world, Ken is finding a newfound control which he wants to bring back to Barbieland. If he is able to do so, the role of Barbie in the real world may be forever changed. On top of everything, executives at Mattel, primarily white men, discover that a real life Barbie and Ken doll have infiltrated the real world, their mission to capture the pair, but especially Barbie, to put them/her back in their/her place, namely in a manufacturer's sealed box.",
    ),
    Movie(
      id: 4,
      imagePath: "assets/creator.jpg",
      title: "The Creator",
      category: "Adventure & Thriller",
      year: "2023",
      rating: 6.8,
      description: "Amid a future war between the human race and the forces of artificial intelligence, Joshua, a hardened ex-special forces agent grieving the disappearance of his wife, is recruited to hunt down and kill the Creator, the elusive architect of advanced AI who has developed a mysterious weapon with the power to end the war-and mankind itself.",
    ),
    Movie(
      id: 5,
      imagePath: "assets/marvel.jpg",
      title: "Captain Marvel",
      category: "Action & Sci-fi",
      year: "2023",
      rating: 9.1,
      description: "After crashing an experimental aircraft, Air Force pilot Carol Danvers is discovered by the Kree and trained as a member of the elite Starforce Military under the command of her mentor Yon-Rogg. Six years later, after escaping to Earth while under attack by the Skrulls, Danvers begins to discover there's more to her past. With help from S.H.I.E.L.D. agent Nick Fury, they set out to unravel the truth",
    ),
    Movie(
      id: 6,
      imagePath: "assets/oppenheimer.jpg",
      title: "Oppenheimer",
      category: "Biography & History",
      year: "2023",
      rating: 9.8,
      description: "Oppenheimer was a remarkable physicist who studied, researched and developed the atomic bomb. After teaching in some of the top universities in the world, Oppenheimer was recruited by one of his previous teachers to assist with the “Manhattan Project. The goal of this project was to develop an atomic bomb, as approved by President Franklin Roosevelt. Shortly after being recruited to crunch numbers on the Manhattan Project, Oppenheimer was promoted to take the lead on a secret weapons laboratory.",
    ),
    Movie(
      id: 7,
      imagePath: "assets/dunkirk.jpg",
      title: "Dunkirk ",
      category: "Action & History",
      year: "2017",
      rating: 7.8,
      description: "May/June 1940. Four hundred thousand British and French soldiers are holed up in the French port town of Dunkirk. The only way out is via sea, and the Germans have air superiority, bombing the British soldiers and ships without much opposition. The situation looks dire and, in desperation, Britain sends civilian boats in addition to its hard-pressed Navy to try to evacuate the beleaguered forces. This is that story, seen through the eyes of a soldier amongst those trapped forces, two Royal Air Force fighter pilots, and a group of civilians on their boat, part of the evacuation fleet.",
    ),
  ];

  void removeMovie(int id) {
    movies.removeWhere((movie) => movie.id == id);
    notifyListeners();
  }
}