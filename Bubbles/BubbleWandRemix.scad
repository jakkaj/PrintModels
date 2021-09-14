//Remix of https://www.thingiverse.com/thing:539080/files (bubble_maker_1.STL)
//By Jordan Knight https://github.com/jakkaj/PrintModels/Bubbles
//Under MIT



module existing(){

translate([0,-25,0])
import("BubbleWandOriginal.STL");    
}

module brace(){
    width=80;
    height=10;
    depth=3;
    
    
    difference(){
      //wack in a brace
      translate([40,.3916,19.5])
        cube([width,height,depth]);
      
       //deletethebump
       translate([40,7,19])
        rotate(44)    
        cube([6,5,6]); 
    }
    
    
     
    
    
    
}

existing();

brace();

