
difference() {
    union() {
        // ベース部分
        union() {
            cube([5, 70, 60]);
            cube([40, 70, 5]);
            translate([0, 0, 25]) cube([40, 5, 10]);
            translate([0, 0, 15]) cube([15, 5, 10]);
            translate([25, 0, 15]) cube([15, 5, 10]);
        }
        // 左下台形
        translate([40, 0, 0]) {
            rotate([0, 270, 0]) {
                linear_extrude(height = 40) {
                    polygon([[0,0],[0, 15],[15, 5], [15, 0]]);
                }
            }
        }
        // 柱
        translate([0, 38, 40]) {
            union() {
                rotate([0, 90, 0]) {
                    cylinder(h=35, r=5, $fn=20);
                }
                translate([34, 0, 0]) {
                    rotate([0, 90, 0]) {
                        cylinder(h=5, r1=5, r2=8, $fn=20);
                    }
                }
            }
        }
        // 横の壁
        translate([38, 60, 5]) rotate([0, 60, 0]) rotate([90, 0, 0]) cylinder(h=45, r=4, $fn=3);
        // 後方の段差
        translate([3, 66, 5]) rotate([90, 0, 0]) rotate([0, 90, 0]) cylinder(h=30, r=4, $fn=3);
    }
    // 左上三角
    translate([0, 0, 60]) {
        rotate([0, 90, 0]) {
            cylinder(h=30, r=21, $fn=3);
        }
    }
    translate([0, -6, 0]) {
        rotate([0, 90, 0]) rotate([0, 0, 180]) cylinder(h=40, r=21, $fn=3);
    }
}