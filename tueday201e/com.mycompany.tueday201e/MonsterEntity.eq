/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
        SESprite violetminion;
        SESprite bg1;
	//	SESprite playa;
        int px1;
        int py1;
        int speed;

        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);
                var w = get_scene_width(); 
                var h = get_scene_height();
                rsc.prepare_image("violetminion", "violetminion", w*0.10, h*0.20);
                rsc.prepare_image("gameoverpo2","gameoverpo2",get_scene_width(),get_scene_height());
			//	 rsc.prepare_image("playagain", "playagain", w*0.2, h*0.2);
                //bg1 = add_sprite_for_image(SEImage.for_resource("gm"));
                violetminion = add_sprite_for_image(SEImage.for_resource("violetminion"));
 			  // playa = add_sprite_for_image(SEImage.for_resource("playagain"));
                var wp = violetminion.get_width();
                var wh = violetminion.get_height();
                px1 = Math.random(0,w);
                py1 = Math.random(0,h);
                violetminion.move(Math.random(0,w), Math.random(0,h));
                speed = Math.random(4,15);
				//playa.move(60,80);
					AudioClipManager.play("minionlaugh");
        }

               public void tick (TimeVal time, double delta) {
                if(px1 < MainScene.ptx){
                        px1 = px1 + Math.random(speed/-4,speed);
                }
                else if(px1 > MainScene.ptx){
                        px1 = px1 - Math.random(speed/-4,speed);
                }
                
                if(py1 < MainScene.pty){
                        py1 = py1 + Math.random(speed/-4,speed);
                        }
                else if(py1 > MainScene.pty){
                        py1 = py1 - Math.random(speed/-4,speed);
                }

                if(px1==MainScene.ptx&&py1==MainScene.pty) {
                        MainScene.bg = add_sprite_for_image(SEImage.for_resource("gameoverpo2"));
 					//	switch_scene(new GameOver());
                        MainScene.bg.move(0,0);
 }
               violetminion.move(px1,py1);

        }
                

        public void cleanup() {
                base.cleanup();
        }
}