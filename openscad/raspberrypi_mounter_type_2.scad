difference(){
    linear_extrude(3) difference(){
        //square([56,85.6]);
        hull(){
            circle(3,$fn=100);
            translate([56,0,0]) circle(3,$fn=100);
            translate([0,85.6,0]) circle(3,$fn=100);
            translate([56,85.6,0]) circle(3,$fn=100);
        }
        translate([3.5,3.5,0]) circle(1.5,$fn=100);
        translate([52.5,3.5,0]) circle(1.5,$fn=100);
        translate([3.5,61.5,0]) circle(1.5,$fn=100);
        translate([52.5,61.5,0]) circle(1.5,$fn=100);
    }
    translate([-3,3.2,2.5]) linear_extrude(1) square([62,0.5]);
    translate([-3,61.2,2.5]) linear_extrude(1) square([62,0.5]);
}
