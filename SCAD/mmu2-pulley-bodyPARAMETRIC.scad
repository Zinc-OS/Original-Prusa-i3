// PRUSA MMU2
// pulley-body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

EXTRUDERS=$t*20+5;
//EXTRUDERS=10;
n=EXTRUDERS;
module front_PTFE()
{
    for (i =[0:n-1])
    {
        translate([3+(i*14),-10.5,4]) rotate([90,0,0]) cylinder(r=2.2, h=15, $fn=50); 
        translate([3+(i*14),-10.5,5.5]) rotate([90,0,0]) cylinder(r=1, h=15, $fn=50); 
        translate([3+(i*14),-15.5,4]) rotate([90,0,0]) cylinder(r1=2.2, r2=2.4, h=5, $fn=50); 
        translate([3+(i*14),0,4]) rotate([90,0,0]) cylinder(r=1.1, h=35, $fn=50); 
        translate([3+(i*14),-2,4]) rotate([90,0,0]) cylinder(r1=2,r2=1.1, h=5, $fn=50); 
    }
}
module pulley_motor_screws_and_opening()
{
    x=86;
    r=21;
    translate([(n/5)*x,(n/5)*r,0]){
        translate([93-x,0-r,-0.5]) rotate([0,90,0]) cylinder(r=11.5, h=5, $fn=50); 
        translate([80-x,0-r,7.5]) rotate([0,90,0]) cylinder(r=4, h=20, $fn=50); 
        translate([91-x,-15.5-r,-15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
        translate([91-x,15.5-r,-15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
        translate([91-x,-15.5-r,15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
        translate([91-x,15.5-r,15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
        
        translate([76-x,-15.5-r,-15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=15, $fn=50); 
        translate([76-x,15.5-r,-15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=15, $fn=50); 
        translate([81-x,-15.5-r,15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 
        translate([81-x,15.5-r,15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 

        translate([76-x,-15.5-3.1-r,-25-0.5]) cube([15,6.2,10]);
        translate([76-x,15.5-3.1-r,-25-0.5]) cube([15,6.2,10]); 
        translate([66-x,-15.5-1.5-r,-33-0.5]) rotate([0,-30,0]) cube([20,3,10]);
        translate([66-x,15.5-1.5-r,-33-0.5]) rotate([0,-30,0]) cube([20,3,10]);
    }
}
module front_PFTE_holder_tubes()
{r=75;
    for (i=[9:14:r*(n/5)-r+23])
                {
                    translate([i,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
                    translate([i-2.8,-18,-1.5-2.9]) cube([5.6,2,19]);
                    
                    translate([i+28,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
                    translate([i-2.8+28,-18,-1.5-2.9]) cube([5.6,2,19]);
                }
            }
module grub_screws_space(){
    // grub screws space
    x=21;
    r=75;
    for (i=[-6:14:r*(n/5)-r+50])
    {
        translate([i,(n/5)*x-x+0,0]) rotate([0,90,0]) cylinder(r=7, h=6, $fn=50); 
    }
}


module rear_PTFE()
{
    x=21;
    for (i =[0:n-1])
    {
        translate([3+(i*14),(n/5)*x-x+15,4]) rotate([90,0,0]) cylinder(r=1.2, h=(n/5)*x-x+15, $fn=50); 
        translate([3+(i*14),(n/5)*x-x+11.5,4]) rotate([90,0,0]) cylinder(r2=1.2, r1=1.5, h=3, $fn=50); 
        translate([3+(i*14),(n/5)*x-x+15,4]) rotate([92,0,0]) cylinder(r1=1.1, r2=1.3, h=(n/5)*x-x+15, $fn=50); 
        translate([3+(i*14),(n/5)*x-x+25,4]) rotate([90,0,0]) cylinder(r=2.05, h=(n/5)*x-x+15, $fn=50); 
        translate([3+(i*14),(n/5)*x-x+17,4.25]) rotate([95,0,0]) cylinder(r=2.05, h=3, $fn=50); 
        translate([3+(i*14),(n/5)*x-x+36.4,1.4]) rotate([80,0,0]) translate([0,0,-((n/5)*x-x+0)])cylinder(r=2.05, h=(n/5)*x-x+15, $fn=50); 
        translate([2+(i*14),(n/5)*x-x+4.5,4]) cube([2,4,10]); 
    }
}


module rear_PFTE_holder_tubes()
{r=75;
    x=41;
    for (i=[9:14:r*(n/5)-r+52])
                {
                    translate([i,(n/5)*x-x+14,-30]) rotate([-20,0,0]) cylinder(r=1.7, h=36, $fn=50); 
                    
                    translate([i,(n/5)*x-x+14,-30]) rotate([-20,0,0]) cylinder(r=3.1, h=31, $fn=6); 
                    translate([i,(n/5)*x-x+14,-30]) rotate([-20,0,0]) cylinder(r=3.6, h=28, $fn=6); 
                    translate([i,(n/5)*x-x+14,-30]) rotate([-20,0,0]) cylinder(r1=4, r2=3.1, h=22, $fn=6); 
                    translate([i,(n/5)*x-x+23.1,-5]) rotate([-20,0,0]) cylinder(r1=3.6, r2=3.1, h=3, $fn=6); 
                }
    }
module better_printing(){
    // better printing
        translate([0,-15,-25.75]) cube([15,15,1]);
        translate([25,-15,-25.75]) cube([15,15,1]);
        translate([-15,-37,-25.75]) cube([15,15,1]);
        translate([-15,-58,-25.75]) cube([15,15,1]);
        for (i=[5:20:65])
        {
            translate([i,-37,-25.75]) cube([15,15,1]);
            translate([i,-58,-25.75]) cube([15,15,1]);
        }
}
module hold_shafts_removal(){
            // hold together shafts removal
            r=86;
            x=41;
            translate([-15,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=2, h=(n/5)*r-r+100, $fn=50);
            translate([-2,(n/5)*x-x+28,0]) cube([(n/5)*r-r+65,4,10]);
}

module selector_screws_and_opening(){
    x=86;
    translate([(n/5)*x,0,0]){
            translate([93-x,-48,-3]) rotate([0,90,0]) cylinder(r=11.5, h=5, $fn=50); 
            translate([93-x,-48,5]) rotate([0,90,0]) cylinder(r=4, h=5, $fn=50); 
            translate([85-x,-48,-3]) rotate([0,90,0]) cylinder(r=8, h=15, $fn=50); 
            translate([85-x,-48,1.5]) rotate([0,90,0]) cylinder(r=4, h=15, $fn=50); 
            translate([91-x,-48-15.5,-3-15.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91-x,-48-15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91-x,-48+15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([81-x,-48-15.5,-3-15.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 
            translate([81-x,-48-15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 
            translate([81-x,-48+15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 

            translate([85-x,-48-10,-3]) rotate([0,90,0]) cylinder(r=4, h=5, $fn=50); 
            translate([85-x,-48+10,-3]) rotate([0,90,0]) cylinder(r=4, h=5, $fn=50); 
            translate([85-x,-48-10,-7]) cube([5,20,8]); 
    }
}
module left_together_shaft_bearing(){
        x=41;
        // left hold together shaft bearing 
        translate([-28.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=13, h=10, $fn=50);
        translate([-18.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=8, h=5, $fn=50);
        translate([-18.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50);
        translate([-15,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=2.8, h=6, $fn=50);
        translate([-20,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r2=8, r1=8.5, h=3, $fn=50);
        translate([-19.5,(n/5)*x-x+30,5]) rotate([0,90,0]) cylinder(r=4, h=6, $fn=50);
}
module right_together_shaft_bearing(){
    // right hold together shaft bearing 
    x=41;
    r=86;
    translate([(n/5)*r-r+80.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=13, h=12, $fn=50);
    translate([(n/5)*r-r+75.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=8, h=6, $fn=50);
    translate([(n/5)*r-r+74.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50);
    translate([(n/5)*r-r+71.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=2.8, h=6, $fn=50);
    translate([(n/5)*r-r+79,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r1=8, r2=8.5, h=3, $fn=50);
    translate([(n/5)*r-r+80.5,(n/5)*x-x+19.5,30]) rotate([0,90,0]) cube([30,30,12]);
    translate([(n/5)*r-r+75.5,(n/5)*x-x+30,5]) rotate([0,90,0]) cylinder(r=4, h=6, $fn=50);
}
module selector_shafts(){
    // selector shafts
    r=86;
    translate([-28,-48,-3]) rotate([0,90,0]) cylinder(r=4.3, h=(n/5)*r-r+130, $fn=50); 
    translate([-26,-48,16]) rotate([0,90,0]) cylinder(r=2.7, h=(n/5)*r-r+130, $fn=50); 
    translate([-26,-48,-19]) rotate([0,90,0]) cylinder(r=2.6, h=(n/5)*r-r+130, $fn=50); 
    translate([-19,-48,16]) rotate([0,90,0]) cylinder(r1=2.65, r2=3,h=3, $fn=50); 
    translate([-19,-48,-19]) rotate([0,90,0]) cylinder(r1=2.6, r2=3, h=3, $fn=50); 
    translate([(n/5)*r-r+94,-48,16]) rotate([0,90,0]) cylinder(r1=2.65, r2=3,h=3, $fn=50); 
    translate([(n/5)*r-r+94,-48,-19]) rotate([0,90,0]) cylinder(r1=2.6, r2=3, h=3, $fn=50); 
    translate([-30,-48,16]) rotate([0,90,0]) cylinder(r=1.5, h=15, $fn=50); 
    translate([-30,-48,-19]) rotate([0,90,0]) cylinder(r=1.5, h=15, $fn=50);
}
module body(){
    // body
        union()
            {
                
               r=86;
                
               // body 
               translate([-18.5,-20,-24]) cube([(n/5)*r+114.5-r,41*(n/5),31]);
               translate([-27,-65,-25]) cube([(n/5)*r+123-r,92,1]);
               translate([-27,-65,-25]) cube([(n/5)*r+123-r,2,3]);
               
               difference()
                {
                    translate([-5,-5,-24]) cube([(n/5)*r-r+72,41,31]);
                    translate([-15,40,-0]) rotate([45,0,0]) cube([(n/5)*90,41,31]);
                }
               translate([(n/5)*r+86-r,-69,-24]) cube([10,(n/5)*x-x+90,45]);
               translate([-27,-69,-24]) cube([10,(n/5)*x-x+90,26]);
               translate([-27,-69,-24]) cube([10,47,45]);
               translate([-18.5,-30,-24]) cube([1.5,45,31]);
                
               // shaft bearing body
               translate([-18.5,(n/5)*20-20+0,-0.5]) rotate([0,90,0]) cylinder(r=9.5, h=11.5, $fn=50); 
                
               x=41;
                
               // left hold together bearing housing
               translate([-18.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=11, h=14, $fn=50); 
               translate([-18.5,(n/5)*x-x-15,-9]) cube([14,45,16]);
               translate([-18.5,(n/5)*x-x+-7,-24]) cube([14,45,24]);
                
               // right hold together bearing housing
               translate([(n/5)*r-r+66.5,(n/5)*x-x+30,0]) rotate([0,90,0]) cylinder(r=11, h=14, $fn=50); 
               translate([(n/5)*r-r+66.5,(n/5)*x-x-15,-9]) cube([14,15,16]);
               translate([(n/5)*r-r+66.5,(n/5)*x-x-7,-24]) cube([14,45,24]);
                
            }
}
module rear_PFTE_tubes_holder(){
    r=86;
    x=41;
    // rear PTFE tubes holder
    translate([-2,(n/5)*x-x+15,4]) cube([(n/5)*r-r+65,30,10]);
    translate([-2,(n/5)*x-x+15,5]) rotate([-10,0,0]) cube([(n/5)*r-r+65,30,10]);
}
module pulley_space(){
    x=21;
    r=86;
    // pulley space
    translate([-7,(n/5)*x-x+0,0]) rotate([0,90,0]) cylinder(r=5, h=(n/5)*r-r+71, $fn=50); 
    translate([-7,(n/5)*x-x+-5,0]) cube([(n/5)*r-r+71,10,10]);
    translate([-7,(n/5)*x-x+0,(n/5)*x-x+24.5]) rotate([0,90,0]) cylinder(r=(n/5)*21, h=(n/5)*r-r+71, $fn=50);     

}
module coupling_space(){
    x=21;
    r=86;
    // coupling space
    translate([(n/5)*r-r+63.9,(n/5)*x-x+0,-0.5]) rotate([0,90,0]) cylinder(r=11.5, h=32, $fn=50); 
    translate([(n/5)*r-r+63.9,(n/5)*x-x+-11,-0.5]) cube([22.1,22,10]);
}
module shaft_bearing(){
    x=21;
     // shaft bearing 
    translate([-28,(n/5)*x-x+0,-0.5]) rotate([0,90,0]) cylinder(r=2.8, h=15, $fn=50); 
    translate([-14,(n/5)*x-x+0,-0.5]) rotate([0,90,0]) cylinder(r=8, h=5, $fn=50); 
    translate([-15,(n/5)*x-x+0,-0.5]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50); 
    translate([-10.(n/5)*x-x+5,0,-0.5]) rotate([0,90,0]) cylinder(r1=8, r2=9, h=3, $fn=50); 
    translate([-9,(n/5)*x-x+0,-0.5]) rotate([0,90,0]) cylinder(r=9, h=7, $fn=50); 
    translate([-9,(n/5)*x-x+-9,-0.5]) cube([7,18,10]);
    translate([-7,(n/5)*x-x+-6,2]) cube([7,12,10]);
    
    translate([-28.5,(n/5)*x-x+0,-3.5]) rotate([0,90,0]) cylinder(r=5, h=10, $fn=50); 
    translate([-28,(n/5)*x-x+-5,-3.5]) cube([9.5,10,10]);
    translate([-28,(n/5)*x-x+-0,-3.5]) rotate([45,0,0]) cube([9.5,20,20]);
    
    // top bearing cut
    translate([-19,(n/5)*x-x+-9,7]) cube([17,18,10]);
    translate([-14,(n/5)*x-x+-5,3]) cube([17,10,10]);
}

module front_corners(){
    // front corners
    r=86;
    translate([-29,-68,-35]) rotate([45,0,0]) cube([(n/5)*r-r+130,10,20]);
    translate([-29,-73,12]) rotate([45,0,0]) cube([(n/5)*r-r+130,20,10]);
    translate([-29.5,-77.7,-35]) rotate([0,0,35]) cube([10,10,90]);
}
module frame_holders(){
    // frame holders
    r=86;
    x=41;
    translate([(n/5)*r-r+91,7,-26]) cylinder(r=1.65, h=15, $fn=50); 
    translate([-22,7,-26]) cylinder(r=1.65, h=15, $fn=50); 
    translate([-32+2.9,4.1,-21]) cube([10,5.8,2]);
    translate([(n/5)*r-r+91-2.9,4.1,-21]) cube([10,5.8,2]);
    translate([-23.65,4.1,-20.6]) cube([1.65*2,5.8,2]);
    translate([(n/5)*r-r+89.35,4.1,-20.6]) cube([1.65*2,5.8,2]);
    
    
    translate([(n/5)*r-r+91,-57,-26]) cylinder(r=1.65, h=15, $fn=50); 
    translate([-22,-57,-26]) cylinder(r=1.65, h=15, $fn=50); 
    translate([-32+2.9,-59.9,-21]) cube([10,5.8,2]);
    translate([(n/5)*r-r+91-2.9,-59.9,-21]) cube([10,5.8,2]);
    translate([-23.65,-59.9,-20.6]) cube([1.65*2,5.8,2]);
    translate([(n/5)*r-r+89.35,-59.9,-20.6]) cube([1.65*2,5.8,2]);
}
module pulley_body()
{

        difference()
        {
            body();

            // left hold together shaft bearing 
            left_together_shaft_bearing();
            
            // right hold together shaft bearing 
            right_together_shaft_bearing();

            // hold together shafts removal
             hold_shafts_removal();
            
             selector_shafts();
                        
            
            // PTFE tubes
            front_PTFE();
            rear_PTFE();
            
            // rear PTFE tubes holder
            rear_PFTE_tubes_holder();
            
            // pulley space
            pulley_space();

            // grub screws space
            grub_screws_space();
            
            // coupling space
            coupling_space();
            
            // shaft bearing 
            shaft_bearing();
            // ^top bearing cut^//
          
            
            
            // rear PTFE tubes holder screws
            rear_PFTE_holder_tubes()

            // front PTFE tubes holder screws           
            front_PFTE_holder_tubes();
            // front corners
            front_corners();
            
            // front waste pocket and material saving
            difference()
            {
                translate([-17,-32,-15]) rotate([-60,0,0]) cube([78,20,10]);
                translate([-17,-58,-34]) cube([103,50,10]);
            }
            
            // rear corners
            translate([-29,27,12]) rotate([45,0,0]) cube([130,10,20]);
            translate([-29,-21,12]) rotate([20,0,0]) cube([100,10,20]);
            
            // rear angled side
            translate([-35,49.6,-45]) rotate([55,0,0]) cube([150,41,31]);
            translate([-35,21,-45]) cube([16.5,41,31]);
            translate([(n/5)*80.5,21,-45]) cube([16.5,41,31]);
            
            // idler spring screws
            translate([-22,-27,0]) rotate([0,0,0]) cylinder(r=1.8, h=50, $fn=50); 
            translate([(n/5)*91,-27,0]) rotate([0,0,0]) cylinder(r=1.8, h=50, $fn=50); 
            translate([-22-2.9,-27-2.8,14]) cube([10,5.6,2.1]);
            translate([(n/5)*91-2.9,-27-2.8,14]) cube([20,5.6,2.1]);
            translate([-22-1.8,-27-2.8,14.4]) cube([1.8*2,5.6,2.1]);
            translate([(n/5)*91-1.8,-27-2.8,14.4]) cube([1.8*2,5.6,2.1]);
            
            // pulley motor screws and opening
            pulley_motor_screws_and_opening();
            

            // selector motor screws and opening
            selector_screws_and_opening();
            
            
            // frame holders
           frame_holders();
            // material saving
            translate([-24,-33,-3]) rotate([0,90,0]) cylinder(r=9, h=9, $fn=6); 
            translate([-24,-61,-3]) rotate([0,90,0]) cylinder(r=7, h=9, $fn=6); 
            
            translate([-30,-70,7.1]) rotate([40,0,0]) cube([20,30,10]);
            
            // better printing
            better_printing();

            //version
            translate([-14,-5.5,-24.4]) rotate([0,180,180]) linear_extrude(height = 0.8) 
            { text("R1",font = "helvetica:style=Bold", size=5, center=true); }    
        }

}


//pulley_body();
color("orange",alpha=0)
body();
color("black",alpha=0.3){
    front_PTFE();
    rear_PTFE();
    selector_screws_and_opening();
    front_PFTE_holder_tubes();
    rear_PFTE_holder_tubes();
    better_printing();
    pulley_motor_screws_and_opening();
    left_together_shaft_bearing();
    right_together_shaft_bearing();
    grub_screws_space();
    hold_shafts_removal();
    selector_shafts();
    rear_PFTE_tubes_holder();
    pulley_space();
    coupling_space();
    shaft_bearing();
    front_corners();

}frame_holders();
color("orange",alpha=0.7)
body();




