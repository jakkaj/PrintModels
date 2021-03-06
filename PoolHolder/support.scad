//Pool holder thing to be used with a blow up pool and this thing https://www.thingiverse.com/thing:2268960

//By Jordan Knight under MIT


braceRadius=100;
circleThickness=25;
supportHeight=100;
screwHoldSpacing=25;
circleBulk=6;
braceThickness=6;

screwSpacing=25;
screwStart=screwSpacing - circleBulk;

m3Radius=2;

nubRadius=3;


module braceCircle(){
    $fn=60;
    difference(){
        
            
            translate([0, 0, -circleThickness])            
                linear_extrude(height = circleThickness){
                    circle(braceRadius);        
                }
            translate([0, 0, -circleThickness])
                linear_extrude(height = circleThickness){
                    circle(braceRadius - circleBulk); //inner hole
                }
     
        
        
        
        translate([-braceRadius, 0, -circleThickness])
            cube([braceRadius,braceRadius,circleThickness]);
        translate([-braceRadius, -braceRadius, -circleThickness])
            cube([braceRadius,braceRadius,circleThickness]);
        translate([0, -braceRadius, -circleThickness])
            cube([braceRadius,braceRadius,circleThickness]);
    }
    
    
}

module braceSupport(){
    difference(){
        translate([braceRadius - (circleBulk), 0,-circleThickness])
            cube([supportHeight,braceThickness,circleThickness]);
        screw(0);
        screw(1);
        screw(2);
    }
    
}

module screw(holeIndex = 0){
    $fn=50;
    holeCentre = screwStart + (holeIndex * screwSpacing);
    holeBraceOffset = holeCentre + braceRadius;
    //move it to the brace bracketOffset
    //holeCentre=holeCentre + braceRadius - circleBulk;

    translate([holeBraceOffset, 0, -circleThickness/2])
        rotate([-90, 0, 0])
            linear_extrude(height = braceThickness){
                circle(m3Radius);
            }

}

module headNub(r = nubRadius){
    $fn=50;
        linear_extrude(height=circleThickness){
            circle(r);
        }

}

braceCircle();
braceSupport();

//translate([braceRadius + supportHeight - (nubRadius + 1.5),nubRadius,-circleThickness])
    //headNub();
//translate([braceRadius - (nubRadius + 1.5),1.5, -circleThickness])
    //headNub(1.5);

translate([0,braceRadius - (nubRadius), -circleThickness])
    headNub();
