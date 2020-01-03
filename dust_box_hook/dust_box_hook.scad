difference() {
    linear_extrude(height=10) {
        translate([5, 0, 0]) hone();
        hook();
    }
    translate([-1, -1, -1]) cylinder(h=13, r=5, $fn=4);
    translate([-1, 31, -1]) cylinder(h=13, r=5, $fn=4);
    translate([8, -20, -1]) cylinder(h=13, r=5, $fn=4);
    translate([50, 30, -1]) cylinder(h=13, r=5, $fn=4);
}

// 角の部分
module hone() {
    union() {
        translate([3, -20, 0]) square([7, 20]);
        polygon([[10, -20], [10, -13], [15, -10], [15, -6], [20, -4], [20, -10], [18, -15], [15, -18], [11, -20]]);
    }
}

// フックのベース部分
module hook() {
    union() {
        square([10, 30]);
        translate([10, 19.2, 0]) square([40, 10.8]);
        translate([10, 0, 0]) square([13, 10.8]);
        translate([19.7, 0, 0]) square([3.3, 12.8]);
    }
}