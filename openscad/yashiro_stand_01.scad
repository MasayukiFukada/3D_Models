difference() {
    union() {
        translate([-1,0,7]) rotate([-90,0,0]) cylinder(90,7,7,$fn=100);
        translate([70.5,0,7]) rotate([-90,0,0]) cylinder(90,7,7,$fn=100);
        translate([-1.5,0,7]) rotate([-90,0,0]) cylinder(10,8.5,8.5,$fn=6);
        translate([70.5,0,7]) rotate([-90,0,0]) cylinder(10,8.5,8.5,$fn=6);
        // 上の横梁
        translate([-22,95,-1]) linear_extrude(16) polygon([[0,0],[-2,8],[118,8],[116,0]]);
        translate([-18,90,0]) linear_extrude(14) polygon([[0,0],[-2,5],[110,5],[108,0]]);
        // 梁の真ん中
        translate([30,78,4.5]) linear_extrude(4) square([10,13.5]);
        // 下の横梁
        translate([-18,70,4.5]) linear_extrude(4) square([107,8]);
        color("blue") translate([0,68,1]) linear_extrude(13) square([70,3]);
        // 下の石垣
        color("red") translate([-13,-12,-3]) linear_extrude(20) square([96,12]);
        // 背中側
        color("black") translate([-8.5,-2,-3]) linear_extrude(10) square([87,80]);
    }
    // くり抜く領域
    color("lightgreen") union() {
        translate([0,0,-5]) linear_extrude(18) square([70,70]);
        translate([0,-10,-5]) linear_extrude(17) square([90,8]);
        translate([0,-5,-8]) linear_extrude(20) square([5,10]);
    }
    // 磁石穴
    union() {
        translate([74,74,-3]) linear_extrude(4) circle(3.1,$fn=100);
        translate([-4,74,-3]) linear_extrude(4) circle(3.1,$fn=100);
        translate([74,3,-3]) linear_extrude(4) circle(3.1,$fn=100);
        translate([-4,3,-3]) linear_extrude(4) circle(3.1,$fn=100);
    }
    // チェーン溝
    translate([30,70,-3]) linear_extrude(5) square([10,15]);
    // 溝
    color("purple") union() {
        translate([-9,3,-3]) linear_extrude(4) square([5,0.1]);
        translate([74,3,-3]) linear_extrude(4) square([5,0.1]);
        translate([-9,74,-3]) linear_extrude(4) square([5,0.1]);
        translate([74,74,-3]) linear_extrude(4) square([5,0.1]);
    }
}