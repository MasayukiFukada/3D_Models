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
        translate([55-17,25.5,0]) circle(1.7,$fn=100);
        translate([11.5,80.6,0]) circle(1.7,$fn=100);
    }
    // slits
    translate([-15,25.3,2.5]) linear_extrude(1) square([90,0.5]);
    translate([-15,80.4,2.5]) linear_extrude(1) square([90,0.5]);
}
