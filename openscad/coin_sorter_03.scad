difference() {
    union() {
        color("red") translate([-30,-5,0]) linear_extrude(2) square([170,34]);
        color("blue") translate([-30,-5,2]) linear_extrude(3) square([170,1.9]);
        color("cyan") translate([-30,-5,5]) linear_extrude(1,scale=[1.0,1.2]) square([170,1.9]);
        color("green") translate([-30,27,2]) linear_extrude(3) square([170,2]);
        color("lightgreen") translate([140,29,5]) rotate([180,180,0]) linear_extrude(1,scale=[1.0,1.2]) square([170,2]);
    }
    translate([0,0,0]) linear_extrude(2) square([22,17]);
    translate([24,0,0]) linear_extrude(2) square([23,18]);
    translate([49,0,0]) linear_extrude(2) square([24,19]);
    translate([75,0,0]) linear_extrude(2) square([24.6,19.6]);
    translate([102,0,0]) linear_extrude(2) square([25.5,20.5]);
}
