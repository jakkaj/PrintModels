include <smooth-prim.scad>

difference(){
translate([0,0,-40])
    SmoothWall(150, 50, 2);
translate([-2, -1, 0])    
    cube([2.5, 5, 12]);

translate([148, -1, 0])    
    cube([2.5, 5, 12]);  
}

difference(){

rotate([0,90,0])
    translate([-12, 0,-1])
        SmoothCorner(20, 2, 1);

translate([-2, -1, 0])    
    cube([2.5, 5, 12]);
}


difference(){

rotate([0,90,0])
    translate([-12, 0,130])
        SmoothCorner(20, 2, 1);

translate([148, -1, 0])    
    cube([2.5, 5, 12]);
}
