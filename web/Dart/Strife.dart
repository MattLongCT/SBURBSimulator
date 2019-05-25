/*

   JR: Stubbing how i want to strife refactor to go.
   JR: strifes being all stupidly part of GameEntity was a decision I regretted early on
   JR: but i'm glad i waited till now to refactor it proper style.

   JR: My expectation is for a strife to have at least 2 sides.  I don't expect to support MORE than 2
   JR: any time soon, but you are supposed to do "0, 1 or infinite" in your designs.
 */

class Strife {
  List<Team> teams; // JR: at least 2
}

class Team {
  // JR: i wanted this to be a list of Game Entities, but apparently that's not a thing??? can't use custom classes as generics? That doesn't sound right...
  // JR: yeah see, you can have a list<team> of teams up there. maybe the fact that game entity lives in a different file?
  List<Object> members;
  String name; // JR: 'the players' 'the midnight crew'.  so sick of guessing if i should call something "the PLAYERS or not"
}
