difference() {
    union() {
        translate([-2.5,0,7]) rotate([-90,0,0]) cylinder(75,7,7,$fn=100);
        translate([55.5,0,7]) rotate([-90,0,0]) cylinder(75,7,7,$fn=100);
        translate([-2.5,0,7]) rotate([-90,0,0]) cylinder(10,8.5,8.5,$fn=6);
        translate([55.5,0,7]) rotate([-90,0,0]) cylinder(10,8.5,8.5,$fn=6);
        // 上の横梁
        translate([-22,78,-1]) linear_extrude(16) polygon([[0,0],[-2,8],[101,8],[99,0]]);
        translate([-18,73,0]) linear_extrude(14) polygon([[0,0],[-2,5],[93,5],[91,0]]);
        // 梁の真ん中
        translate([22,61,4.5]) linear_extrude(4) square([10,13.5]);
        // 下の横梁
        translate([-18,53,4.5]) linear_extrude(4) square([90,8]);
        color("blue") translate([0,53,0]) linear_extrude(12) square([53,1]);
        // 下の石垣
        color("red") translate([-13,-12,-2]) linear_extrude(18) square([79,12]);
    }
    // くり抜く領域
    translate([0,0,-5]) linear_extrude(18) square([53,53]);
    translate([0,-10,-2]) linear_extrude(14) square([70,8]);
    translate([0,-5,0]) linear_extrude(12) square([3,10]);
}