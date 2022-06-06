difference() {
    union() {
        // 背中側
        color("black") translate([-8.5,-2,0]) linear_extrude(4.5) square([70,63]);
    }
    // 磁石穴
    union() {
        translate([57,57,0.5]) linear_extrude(4) circle(3.1,$fn=100);
        translate([-4,57,0.5]) linear_extrude(4) circle(3.1,$fn=100);
        translate([57,3,0.5]) linear_extrude(4) circle(3.1,$fn=100);
        translate([-4,3,0.5]) linear_extrude(4) circle(3.1,$fn=100);
    }
    // 溝
    color("purple") union() {
        translate([-9,3,0.5]) linear_extrude(4) square([5,0.1]);
        translate([57,3,0.5]) linear_extrude(4) square([5,0.1]);
        translate([-9,57,0.5]) linear_extrude(4) square([5,0.1]);
        translate([57,57,0.5]) linear_extrude(4) square([5,0.1]);
    }
}