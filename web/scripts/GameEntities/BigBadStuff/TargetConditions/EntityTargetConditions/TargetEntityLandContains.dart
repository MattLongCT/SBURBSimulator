import "../../../../SBURBSim.dart";
import 'dart:html';

//has no sub form, just exists
class TargetEntityLandNameContains extends TargetConditionLiving {
    @override
    String name = "EntityLandContains";
    InputElement input;

    Item crown;


    @override
    String descText = "<b>Land's Name Contains:</b><br>Target Entity is a player and that player's lands's name must have the word:  <br><br>";
    @override
    String notDescText = "<b>Lands's Name Does NOT Contain:</b><br>Target Entity must either not be a player, or not have a land named X<br><br>";

    //strongly encouraged for this to be replaced
    //like, "An ominous 'honk' makes the Knight of Rage drop the Juggalo Poster in shock. With growing dread they realize that shit is about to get hella rowdy, as the Mirthful Messiahs have rolled into town.

    TargetEntityLandNameContains(SerializableScene scene) : super(scene){
    }


    @override
    void renderForm(Element divbluh) {
        print("rendering target condition");
        setupContainer(divbluh);
        syncDescToDiv();

        DivElement me = new DivElement();
        container.append(me);
        input = new TextInputElement();
        input.value = importantWord;
        input.onChange.listen((Event e) {
            syncToForm();
        });
        me.append(input);
        syncFormToMe();
        //scene.syncForm();
        scene.syncForm();
    }



    @override
    TargetCondition makeNewOfSameType() {
        return new TargetEntityLandNameContains(scene);
    }

    @override
    void syncFormToMe() {
        input.value = importantWord;
        syncFormToNotFlag();
    }

    @override
    void syncToForm() {
        importantWord = input.value;
        syncNotFlagToForm();
        scene.syncForm();
    }
    @override
    void copyFromJSON(JSONObject json) {
        //nothing to do
        importantWord = json[TargetCondition.IMPORTANTWORD];
    }

    @override
    bool conditionForFilter(GameEntity actor, GameEntity item) {
        if(item is Player) {
            Player p = item as Player;
            Land land = p.land;
            if(land == null) return true;

            bool ret = !land.name.toLowerCase().contains(importantWord.toLowerCase());
            //print("item is $item and does it NOT contain $importantWord? $ret  (which will be flipped: $not)");
            return ret;
        }
        return true;

    }
}