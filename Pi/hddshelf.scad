//===========================================================================
//
// PiPro Pi Case designed to mimic the 2019 Mac Pro look.
// derived from PrusaPi Pi case for Prusa MK3 https: 
//
// This part was originally designed 24 November 2017 by Joe McKeown. 
// and updated 22 June 2019.
// It's available under the terms of the Creative Commons CC-BY license 
// (https://creativecommons.org/licenses/by/3.0/).
// 
// History:
// V1.0 24 NOV 2017 First version
// v2.0 22 JUN 2019 Revised to look like Mac Pro and Not attach to Prusa
//===========================================================================

//Adapted by Jordan Knight to be a external ssd shelf for the Pi 4. 



sqrt3=sqrt(3);

cheese_r=5;//4;


epsilon=0.01;
baseGap=3.25;
PCBThick=1.3;
baseThick=1.25;
totalHeight=21.5;//20.2;
baseHeight=15;
bracketOffset=65; 

PCBBase=baseGap+PCBThick;

BoardSize=[85,56];
 
module outline(r=3){   
   hull()
   for (point=[[3,3],[3,53],[82,3],[82,53]]){
     translate(point) circle(r, $fn=50);
   }
 }



module USBSlotB(centerY){
  //height is 16;
  JackWidth=17;
  translate([BoardSize[0]-2, centerY-(JackWidth/2), PCBBase-3.5])
  cube([10, JackWidth, 8]);
}


module bottomShell() {
  
  difference(){
    linear_extrude(baseHeight -5) outline(5);
    translate([0,0,baseThick]) 
      linear_extrude(baseHeight - 7) outline(3.75); 
    //translate([0,0,-1]) 
     // linear_extrude(baseHeight + 10) outline(3.75);
    translate([-15,-10,-3])
      cube([80, 80, 40]);
 
    
    USBSlotB(29);
    
 
  }
}

module base() {
    $fn=10;

    difference(){
        union(){           
            translate([0,0, cheese_r-1.25 ])
                union(){
                    bottomShell();           
                }
        }
       
    }
    
}

translate([-BoardSize[0]/2,-BoardSize[1]/2,0])
base();


