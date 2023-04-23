difference(){
    linear_extrude(3) difference(){
        // square([56,85.6]);
        translate([-10,-20,0]) hull(){
            circle(3,$fn=100);
            translate([76,0,0]) circle(3,$fn=100);
            translate([0,105.6,0]) circle(3,$fn=100);
            translate([76,105.6,0]) circle(3,$fn=100);
        }
        // holes
        translate([3.5,3.5,0]) circle(1.7,$fn=100);
        translate([52.5,3.5,0]) circle(1.7,$fn=100);
        translate([3.5,61.5,0]) circle(1.7,$fn=100);
        translate([52.5,61.5,0]) circle(1.7,$fn=100);
    }
    // slits
    translate([-15,3.2,2.5]) linear_extrude(1) square([90,0.5]);
    translate([-15,61.2,2.5]) linear_extrude(1) square([90,0.5]);
}
