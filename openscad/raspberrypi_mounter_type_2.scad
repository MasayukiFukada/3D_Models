difference(){
    linear_extrude(3) difference(){
        // square([56,85.6]);
        translate([-10,-20,0]) hull(){
            circle(3,$fn=100);
            translate([76,0,0]) circle(3,$fn=100);
            translate([0,135.6,0]) circle(3,$fn=100);
            translate([76,135.6,0]) circle(3,$fn=100);
        }
        // holes
        translate([3.5,3.5,0]) circle(1.7,$fn=100);
        translate([52.5,3.5,0]) circle(1.7,$fn=100);
        translate([3.5,61.5,0]) circle(1.7,$fn=100);
        translate([52.5,61.5,0]) circle(1.7,$fn=100);
    }
    // cooling hole
    linear_extrude(5) hull(){
        translate([5,45,0]) circle(4,$fn=100);
        translate([50,45,0]) circle(4,$fn=100);
        translate([5,20,0]) circle(4,$fn=100);
        translate([50,20,0]) circle(4,$fn=100);
    }
    // hangerhole
    linear_extrude(5) translate([27,110,0]) circle(4,$fn=100);
    // slits
    translate([-15,3.2,0]) linear_extrude(1) square([90,0.5]);
    translate([-15,61.2,0]) linear_extrude(1) square([90,0.5]);
    translate([-15,33,0]) linear_extrude(1) square([90,0.5]);
    translate([-15,110,0]) linear_extrude(1) square([90,0.5]);
}
