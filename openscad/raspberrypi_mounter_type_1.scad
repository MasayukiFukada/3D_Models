difference(){
    linear_extrude(3) difference(){
        //square([56,85.6]);
        hull(){
            circle(3,$fn=100);
            translate([56,0,0]) circle(3,$fn=100);
            translate([0,85.6,0]) circle(3,$fn=100);
            translate([56,85.6,0]) circle(3,$fn=100);
        }
        translate([55-17,25.5,0]) circle(1.5,$fn=100);
        translate([10.5,80.6,0]) circle(1.5,$fn=100);
    }
    translate([-3,25.3,2.5]) linear_extrude(1) square([62,0.5]);
    translate([-3,80.4,2.5]) linear_extrude(1) square([62,0.5]);
}
