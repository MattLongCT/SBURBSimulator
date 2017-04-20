function FreeWillStuff(session){
	this.session = session;
	this.canRepeat = true;	
	this.playerList = [];  //what players are already in the medium when i trigger?
	this.decision = null
	//luck can be good or it can be bad.
	this.minHighValue = 110;

	this.trigger = function(playerList){
		this.decision = null;//reset
		//what the hell roue of doom's corpse. corpses aren't part of the player list!
		for(var i = 0; i<this.session.availablePlayers.length; i++){
			var player = this.session.availablePlayers[i];
			var decision = this.getPlayerDecision(player);
			if(decision){
				var d = new WillPower(player, decision)
				if(!this.decision || d.player.freeWill > this.decision.player.freeWill){  //whoever has the most will makes the decision.
					this.decision = d;
				}
			}
		}
		return this.decision != null;
	}
	
	this.renderContent = function(div){
		div.append("<br>"+this.content());
	}
	
	//in murder mode, plus random. reduce trigger, too. only for self (whether active or passive)
	this.considerDisEngagingMurderMode = function(player){
		return null;
	}
	
	//hate someone, not in murder mode, self if active, other if passive. plus random, increase trigger, too. if you engage murder mode in someone else, random chance to succesfully manipulate them to hate who you hate.
	this.considerEngagingMurderMode = function(player){
		
		return null;
	}
	
	// do it to self if active, do it to someone else if not.  need to have it not be destiny. bonus if there are dead players (want to avenge them/stop more corpses).
	this.considerForceGodTier = function(player){
		
	}
	
	//needs to be a murder mode player. more likely if you like them.  if active and you like them a lot, do it yourself. if passive, see if you can get somebody else to do it for you (mastermind)
	this.considerCalmMurderModePlayer = function(player){
		
	}
	
	//needs to be a murdermode player,  more likely if you dislike them. if active, do it yourself, if passive, see if you can get somebody else to do it for you. need to be stronger than them. 
	this.considerKillMurderModePlayer = function(player){
		
	}
	
	//if self, just fucking do it. otherwise, pester them. raise power to min requirement, if it's not already there. 
	this.considerMakingEctobiologistDoJob = function(player){
		
	}
	
	//if self, just fucking do it. raise land level. otherwise, pester them. raise power to min requirement, if it's not already there. 
	this.considerMakingSpacePlayerDoJob = function(player){
		
	}
	
	this.getPlayerDecision = function(player){
		var ret = this.considerEngagingMurderMode(player);
		if(ret == null) ret = this.considerDisEngagingMurderMode(player);
		return ret;
	}
	
	
	
	
	this.processDecision = function(){
		
	}
	
	this.content = function(){
		var ret = "Decision Event: ";
		removeFromArray(this.player, this.session.availablePlayers);
		for(var i = 0; i<this.wills.length; i++){
			var will = this.wills[i];
			removeFromArray(will.player, this.session.availablePlayers);
			ret += this.processDecision(will);
		}
		
		return ret;
	}
}

function WillPower(player, decision){
	this.player = player;
	this.decision = decision;
}