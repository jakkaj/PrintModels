///////////////////////////////////////////////////
//
// Charcoal grill vent handle compatible to Weber
// Kettle Series, Master-Touch, Performance Series
//
// Possible replacement for rubber/plastic vent handle
// Weber part no: 63048
// 
// Autor: Dipl.-Ing. Peter Niehues
// Version: 03 
// Date: March 2015
//
// CC BY-NC-SA
//
///////////////////////////////////////////////////

// Material: ABS
// Nozzle: 0.5mm

// Tipp: Clean top of printed part with wire brush 
// to remove the first printing layer

$fa=6;
$fs=.875;

module body(){
  difference(){
    cylinder(h=8, r=18, center=true);
    translate([24,0,0])
      cube([40,50,20], center =true);
  } // difference
  difference(){
  translate([4,0,0])
    rotate([90,0,0])
      cylinder(h=58,r=4, center=true);
  } //difference
  translate([4,0,8])
    cube([8,58,16], center=true); 
  

  
} // module

module ribs(){
  for ( i = [-20 : 4 : 20] ) {
    translate([0,i,-8])
      cube([50,2,10], center=true);
  } // for
  for ( i = [-20 : 4 : 20] ) {
    translate([12,i,0])
      cube([10,2,50], center=true);
  } // for
  for ( i = [-20 : 4 : 20] ) {
    translate([-11,i,13])
      cube([25,2,20], center=true);
  } // for
} // module

module slot(){
  translate([0,0,0])
    cube([3.2,52,18], center=true);
  translate([0,-10,1])
    sphere(2.8, $fn=20);
  translate([0,10,1])
    sphere(2.8, $fn=20);
} // module

difference(){
  body();
  ribs();
  translate([4.25,0,8])
    slot();
} // difference
//

///////////////////////////////////////////////////
//
// End of weber charcoal grill vent handle
//
///////////////////////////////////////////////////