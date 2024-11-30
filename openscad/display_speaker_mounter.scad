difference(){
    union(){
        linear_extrude(1.5) square([80,30]);
        translate([80,0,1.5]) rotate([0,-90,0]) linear_extrude(1.5) square([12,30]);
        translate([76.5,0,13.5]) linear_extrude(1.5) square([3.5,30]);
        translate([77.5,0,13.5]) rotate([-90,0,0]) linear_extrude(30) polygon([[0,0],[1,0],[1,1]]);
        translate([1,30,1.5]) rotate([90,0,0]) linear_extrude(30)  polygon([[2,0],[1,1],[0,0]]);
    }
}