difference() {
    union() {
        // fan region
        %color("blue") translate([25,5,-13]) union() {
            linear_extrude(13) square([30,30]);
            translate([3,3,0]) linear_extrude(13) square([24,24]);
        }
        linear_extrude(3) hull() {
            translate([2,3,0]) circle(3,$fn=100);
            translate([2,37,0]) circle(3,$fn=100);
            translate([63,3,0]) circle(3,$fn=100);
            translate([63,37,0]) circle(3,$fn=100);
        }
    }
    
    translate([-2,5,0]) linear_extrude(5) square([17,30]);
    
    union() {
        // screw hole
        translate([28,8,0]) linear_extrude(5) circle(1.5,$fn=100);
        translate([52,8,0]) linear_extrude(5) circle(1.5,$fn=100);
        translate([28,32,0]) linear_extrude(5) circle(1.5,$fn=100);
        translate([52,32,0]) linear_extrude(5) circle(1.5,$fn=100);
        // fan hole
        translate([40,20,0]) linear_extrude(5) circle(13,$fn=100);
    }
    // scrape line
    //translate([-10,-5.5,-0.5]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(50) square([3,3]);
}