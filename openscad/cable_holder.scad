difference() {
    linear_extrude(4) hull() {
        translate([4.5,-7,0]) circle(3,$fn=100);
        translate([-17.5,-7,0]) circle(3,$fn=100);
        translate([4.5,60,0]) circle(3,$fn=100);
        translate([-17.5,60,0]) circle(3,$fn=100);
    }
    // 穴
    union() {
        translate([0,0,2]) union() {
            linear_extrude(2) hull() {
                translate([3,5.5,0]) circle(2,$fn=100);
                translate([-3,5.5,0]) circle(2,$fn=100);
                translate([3,-5.5,0]) circle(2,$fn=100);
                translate([-3,-5.5,0]) circle(2,$fn=100);
            }
            translate([0,0,-2]) linear_extrude(4) hull() {
                translate([0,0,0]) circle(3,$fn=100);
                translate([7,0,0]) circle(2,$fn=100);
            }
        }
        translate([0,18,2]) union() {
            linear_extrude(2) hull() {
                translate([3,5.5,0]) circle(2,$fn=100);
                translate([-3,5.5,0]) circle(2,$fn=100);
                translate([3,-5.5,0]) circle(2,$fn=100);
                translate([-3,-5.5,0]) circle(2,$fn=100);
            }
            translate([0,0,-2]) linear_extrude(4) hull() {
                translate([0,0,0]) circle(3,$fn=100);
                translate([7,0,0]) circle(2,$fn=100);
            }
        }
        mirror([1,0,0]) translate([13,0,2]) union() {
            linear_extrude(2) hull() {
                translate([3,5.5,0]) circle(2,$fn=100);
                translate([-3,5.5,0]) circle(2,$fn=100);
                translate([3,-5.5,0]) circle(2,$fn=100);
                translate([-3,-5.5,0]) circle(2,$fn=100);
            }
            translate([0,0,-2]) linear_extrude(4) hull() {
                translate([0,0,0]) circle(3,$fn=100);
                translate([7,0,0]) circle(2,$fn=100);
            }
        }
        mirror([1,0,0]) translate([13,18,2]) union() {
            linear_extrude(2) hull() {
                translate([3,5.5,0]) circle(2,$fn=100);
                translate([-3,5.5,0]) circle(2,$fn=100);
                translate([3,-5.5,0]) circle(2,$fn=100);
                translate([-3,-5.5,0]) circle(2,$fn=100);
            }
            translate([0,0,-2]) linear_extrude(4) hull() {
                translate([0,0,0]) circle(3,$fn=100);
                translate([7,0,0]) circle(2,$fn=100);
            }
        }
    }
}