/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{

        public static SESprite bg;
        public static SEEntity player;
        SEEntity violetminion;
        public static int ptx;
        public static int pty;
        int i;


        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc); 
                AudioClipManager.prepare("minionlaugh");
                var w = get_scene_width(); 
                var h = get_scene_height();
            
                rsc.prepare_image("bgnew", "bgnew", w, h);
                bg = add_sprite_for_image(SEImage.for_resource("bgnew"));
                bg.move(0,0);
                player = add_entity(new PlayerEntity());
                for(i = 0; i < 5; i++){
                violetminion = add_entity(new MonsterEntity());
                }
                
        }
                public void on_pointer_move(SEPointerInfo pi) {
                        ptx = pi.get_x();
                        pty= pi.get_y();
						AudioClipManager.play("minionlaugh");
                              
                
        }
                public void on_pointer_press(SEPointerInfo pi) {
                        base.on_pointer_press(pi);
						  
                        if(pi.is_inside(0,0,get_scene_width(), get_scene_height())) {
                                switch_scene(new MenuScene());
	AudioClipManager.play("minionlaugh");
                        }
                }

        public void cleanup() {
                base.cleanup();
        }
}
