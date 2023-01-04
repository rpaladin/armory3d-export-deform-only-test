package arm;
import iron.Scene;
import iron.object.Object;
import iron.object.BoneAnimation;
class MyTrait extends iron.Trait {
	var OBJ = Scene.active.getChild("Child_Dummy");
	public function new() {
		super();
		notifyOnInit(function() {
			var ANIM = OBJ.animation != null ? cast(OBJ.animation, BoneAnimation) : null;
			trace(ANIM.getNumBones());
		});
	}
}