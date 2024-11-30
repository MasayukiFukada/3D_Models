difference() {
    union() {
        translate([0,0,0]) linear_extrude(1) difference() {
            hull() {
                square([1,1]);
                translate([1,15,0]) circle(1, $fn=100);
                translate([16,0,0]) square([1,1]);
                translate([16,15,0]) square([1,1]);
            }
            translate([16,15,0]) square([1,1]);
            translate([13,7,0]) circle(1, $fn=100);
            *translate([3,2,0]) text("1",size=30,font="Disparador Stencil");
        }
        translate([17,0,0]) linear_extrude(2) difference() {
            hull() {
                square([1,1]);
                translate([2,16,0]) circle(2, $fn=100);
                translate([19,0,0]) square([1,1]);
                translate([19,17,0]) square([1,1]);
            }
            translate([18,16,0]) square([2,2]);
            translate([16,9,0]) circle(2, $fn=100);
            *translate([3,2,0]) text("2",size=30,font="Disparador Stencil");
        }
        translate([37,0,0]) linear_extrude(3) difference() {
            hull() {
                square([1,1]);
                translate([3,18,0]) circle(3, $fn=100);
                translate([22,0,0]) square([1,1]);
                translate([22,20,0]) square([1,1]);
            }
            translate([20,18,0]) square([3,3]);
            translate([18,11,0]) circle(3, $fn=100);
            *translate([3,2,0]) text("3",size=30,font="Disparador Stencil");
        }
        translate([60,0,0]) linear_extrude(4) difference() {
            hull() {
                square([1,1]);
                translate([4,21,0]) circle(4, $fn=100);
                translate([29,0,0]) square([1,1]);
                translate([29,24,0]) square([1,1]);
            }
            translate([26,21,0]) square([4,4]);
            translate([20,13,0]) circle(4, $fn=100);
            *translate([3,2,0]) text("4",size=30,font="Disparador Stencil");
        }
        translate([90,0,0]) linear_extrude(5) difference() {
            hull() {
                square([1,1]);
                translate([5,25,0]) circle(5, $fn=100);
                translate([29,0,0]) square([1,1]);
                translate([29,29,0]) square([1,1]);
            }
            translate([25,25,0]) square([5,5]);
            translate([20,15,0]) circle(5, $fn=100);
            *translate([3,2,0]) text("5",size=30,font="Disparador Stencil");
        }
    }
    translate([-5,-7,7]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(130) square([10,10]);
}