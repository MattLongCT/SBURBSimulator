
/*
   JR: HEY FUTURE JR: HAVE QUEST CHAINS HAVE REQUIREMENTS TO DO, LIKE "NEED TO DO IT WITH A QUADRANT MATE" 
   JR: OR "NEED TO DO IT WITH A TIME PLAYER".  IF YOU CAN'T MEET THE REQUIREMENT, DO DIFFERENT CHAIN OR SOME SHIT.
   JR: WARNING: BEING ABANDONED FOR NOW CAUSE IT TURNS OUT MY JS WOULDN'T BE ABLE TO CALL THIS EASILY.

   JR: have list of sense words. taste, smell, look, feel, check tumblr:
   JR: https://jadedresearcher.tumblr.com/post/163288497664/do-you-have-any-suggestions-on-how-to-make-dungeon

   JR: also, once derse and prospit are actual objects, let space player do the quests before entry.
   JR: when i do the land update i can stop that being 3 separate scenes and just have it be "which quest line do you want to do" and one of the quest lines is "go to sleep"


   JR: A planet should be tailored for a specific player.
   JR: It's land words should have one aspect related word, (only frog for space)
   JR: and one "random" word.

   JR: The quests inside the land should be specific to the player.  They should
   JR: be based on class and aspect, most obviously, but also on their Interest Categories
   JR: (which have 14 possible thingies).

   JR: There should be quests for different internal land events.
   JR: PreDenizen, Denizen and Post Denizen are
   JR: categories currently in the sim.

   JR: Lands should have a "questCompletion" rate that determines which set of quests to use.

   JR: is prospit/derse a planet? a subtype of planet?

   JR: each planet could have associated sense words? How does it feel? Smell? Sound?
   JR: could be an object, so a Player can TALK about their planet by getting the object and
   JR: the object has associated phrases or whatever. Don't just say "it's full of wind and shade, lol"

   JR: NOT random though. Each land word has list of traits and the Planet that comes from it
   JR: picks from one of the traits, just like consorts. Oh fuck, love this.

   JR: TODO Actually implement boonies for player.  Quests can give out boonies, and leveling up does, too.
   JR: So you can end up with classes like Rogue and Theif tripping boonies, and so have a lot of fraymotifs.
   JR: while other classes might have raw power but not a lot of fraymotifs.

 */
class Planet{
  String word1;
  String word2;
  List<QuestChain> questChains;
}


/*
   JR: Dead Planets do everything a planet does, but ALSO has a timelimit
   JR: a penalty for not winning before timelimit
   JR: and a reward for winning before timelimit.
 */
class DeadPlanet extends Planet{

}


/*
   JR: A QuestChain is a collection of quests that must be completed in order.

   JR: it is associated with a reward for completion. or something. still planning.

   JR: IDEA: MAKE THEM BRANCHING BASED ON CLASS.  A PRINCE MIGHT DO DESTRUCTIVE THINGS TO WIN, WHILE A SYLPH MEDDLE-WINS
 */
class QuestChain{
  List<Quest> quests;
  List<Reward> rewards; // JR: most questChains only have one reward, but i won't limit things.


}


/*
   JR: A Quest is just flavor text.
   JR: maybe in the future it can be upgraded to be failable, maybe have a power requirement to pass?
 */
class Quest{
  String flavorText;
  List<Reward> rewards; // JR: most quests only have one reward, but i won't limit things.
}

/*
   JR: base level reward just calls increasePower on the player passed to it.
   JR: but want to extend it so there is FraymotifReward, ItemReward, WeaponReward
   JR: etc. Each will call teh super reward so that all rewards at minimum increase Power.
 */
class Reward{

  applyReward(player){
    player.increasePower();
  }

}
