difference() {
    translate([0,0,-10])  union() {
        linear_extrude(39) translate([-48,2,0]) circle(10,$fn=100);
        linear_extrude(39) translate([-48,85,0]) circle(10,$fn=100);
        linear_extrude(15) translate([0,85,0]) circle(10,$fn=100);
        linear_extrude(15) translate([0,2,0]) circle(10,$fn=100);
    }
    // 基板
    color("red")  rotate([0,30,0]) union() {
        translate([-60,0,0]) linear_extrude(10.5) square([59,86.5]);
        // LAN ポート
        translate([-58,-10,1.5]) linear_extrude(14) square([16,20]);
    }
}

difference() {
    union(){
        translate([-3,80,-8.5]) rotate([90,0,-30]) cylinder(90,5,5,$fn=100);
        translate([-45,80,-8.5]) rotate([90,0,30]) cylinder(90,5,5,$fn=100);
    }
    color("blue") translate([-58,-5,-15]) linear_extrude(5) square([70,90]);
}

translate([0,0,-10]) linear_extrude(2) {
    hull() {
        translate([-48,2,0]) circle(5,$fn=100);
        translate([0,85,0]) circle(5,$fn=100);
    }
    hull() {
        translate([-48,85,0]) circle(5,$fn=100);
        translate([0,2,0]) circle(5,$fn=100);
    }
    hull() {
        translate([-48,2,0]) circle(5,$fn=100);
        translate([0,2,0]) circle(5,$fn=100);
    }
    hull() {
        translate([-48,85,0]) circle(5,$fn=100);
        translate([0,85,0]) circle(5,$fn=100);
    }
}