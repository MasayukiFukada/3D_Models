translate([0,-11.1,21.5]) linear_extrude(2) square([25,2],center=true);
translate([0,11.1,21.5]) linear_extrude(2) square([25,2],center=true);
difference() {
    rotate([30,0,0]) translate([-15,0,0]) rotate([0,90,0]) cylinder(30,25,25,$fn=6);
    // 磁石
    translate([0,0,18.2]) linear_extrude(3.5) circle(8.1,$fn=100);
    // 溝
    translate([0,0,18.2]) linear_extrude(3.5) square([0.1,30]);
    // 飾り
    rotate([30,0,0]) translate([-15,0,0]) rotate([0,90,0]) cylinder(4,22,17,$fn=6);
    rotate([30,0,0]) translate([11,0,0]) rotate([0,90,0]) cylinder(4,17,22,$fn=6);
    translate([-10,-21,1]) rotate([300,0,0]) linear_extrude(45) square([20,23]);
}
