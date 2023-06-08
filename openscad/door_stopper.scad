difference() {
    linear_extrude(30) square([80,20]);
    translate([10,0,15]) linear_extrude(30) square([60,20]);
    translate([0,-3.6,0]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(80) square([5,5]);
    translate([0,16.5,0]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(80) square([5,5]);
    translate([10,0,33.6]) rotate([0,45,0]) rotate([-90,0,0]) linear_extrude(20) square([5,5]);
    translate([70,0,33.6]) rotate([0,45,0]) rotate([-90,0,0]) linear_extrude(20) square([5,5]);
    translate([0,0,3.6]) rotate([0,45,0]) rotate([-90,0,0]) linear_extrude(20) square([5,5]);
    translate([80,0,3.6]) rotate([0,45,0]) rotate([-90,0,0]) linear_extrude(20) square([5,5]);
}