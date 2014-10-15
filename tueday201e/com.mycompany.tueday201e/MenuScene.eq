/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
        
        SESprite bg;
        SESprite play; 

        public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
                var w = get_scene_width(); 
                var h = get_scene_height();
                rsc.prepare_image("bgminion", "bgminion", w, h);
                rsc.prepare_image("playnowok", "playnowok", w*0.2, h*0.2);
                bg = add_sprite_for_image(SEImage.for_resource("bgminion"));
                play = add_sprite_for_image(SEImage.for_resource("playnowok"));
                bg.move(0,0);
                play.move(1050,550);
                }
                public void on_pointer_press(SEPointerInfo pi) {
                        base.on_pointer_press(pi);
                        if(pi.is_inside(1050,550,get_scene_width()*0.2, get_scene_height()*0.2)) {
                                switch_scene(new MainScene());
                        }
                }
        
        public void cleanup() {
                base.cleanup();
        }
}