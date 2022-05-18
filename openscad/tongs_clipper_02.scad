difference(){
    linear_extrude(4) hull(){
        square([30,57],center=true);
        translate([0,18,0]) circle(15,$fn=100);
        translate([0,-18,0]) circle(15,$fn=100);
    }
    // 磁石穴
    translate([0,26,0]) linear_extrude(3.5) circle(3.12,$fn=100);
    translate([0,-26,0]) linear_extrude(3.5) circle(3.12,$fn=100);
    // 溝
    translate([0,29,0]) linear_extrude(3.5) square([0.1,4]);
    translate([0,-33,0]) linear_extrude(3.5) square([0.1,4]);
}