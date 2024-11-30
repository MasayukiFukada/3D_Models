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
        translate([55-17,25.5,0]) circle(1.7,$fn=100);
        translate([11.5,80.6,0]) circle(1.7,$fn=100);
    }
    // cooling hole
    linear_extrude(5) hull(){
        translate([5,65,0]) circle(4,$fn=100);
        translate([50,65,0]) circle(4,$fn=100);
        translate([5,40,0]) circle(4,$fn=100);
        translate([50,40,0]) circle(4,$fn=100);
    }
    // hangerhole
    linear_extrude(5) translate([27,110,0]) circle(4,$fn=100);
    // slits
    translate([-15,25.3,0]) linear_extrude(1) square([90,0.5]);
    translate([-15,80.4,0]) linear_extrude(1) square([90,0.5]);
    translate([-15,53,0]) linear_extrude(1) square([90,0.5]);
    translate([-15,110,0]) linear_extrude(1) square([90,0.5]);
}
