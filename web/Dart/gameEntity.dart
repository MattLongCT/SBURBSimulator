/*
  JR: just stubbing out thoughts on how the living characters will be once the port is done.



 */

// JR: i expect nothing to instantiate a basic game entity except maybe a Denizen Minion
class GameEntity {
  // JR: i wonder if dart allows procedural access of variables?
  // JR: I REALLY want to keep my "getStat" code instead of making getters for each and every bucket element.
  StatBucket statBucket;
}

// JR: lol you said  Bucket
// JR: contains all the stats of a game object. i want this to replace PlayerSnapshot
// JR: as a "here's a copy of a player save state, but without all the superfulous methods and shit".
// JR: useful also to keep the Game Entity etc itself from being clogged up with vars.
// JR: this might be what generates the OCDataStrings
// JR: will different types of game entities need different types of buckets?
class StatBucket {

}

class Player extends GameEntity {
  // JR: need to have methods to get specific sub selves out. retrive all dream selves, etc. all living dream selves....
  List<Player> selves; // JR: dream selves, real selves, doomed time clones, robots, heart clones, etc.

}

// JR: honestly considering having a player just keep a list of "selves' on hand.
// JR: is your "real self" alive?  your "dream self"? are both allowed to do things at once?
// JR: if i make it an array of selves...then supports multiple dream selves like sollux.
class RealSelf extends Player {

}


// JR: if i am going to support dream selves being autonomous and being able to be consumed for
// JR: sprite god tiering, they need to be things.
// JR: if you shove your dream self into a sprite, should your dream self now be a sprite,
// JR: or should your sprite now be a dream self....both???
class DreamSelf extends Player {

}

// JR: is this needed? ghosts have 'cause of drain' on top but that's about it....
class Ghost extends Player {

}

// JR: thinking of having this be separate so that when a player god tiers it find their dream self and uses it
// JR: if it was a sprite
class God extends Player {

}

class Denizen extends GameEntity {


}

class Carapace extends GameEntity {


}

// JR: sprites have sprite magic, and the things stored withing them are important
// JR: for example, if player is stored within them, might create a God Self later on.
class Sprite extends GameEntity {

}
