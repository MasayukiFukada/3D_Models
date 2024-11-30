union(){
    difference(){
        linear_extrude(4) hull(){
            translate([10,35,0]) circle(5,$fn=100);
            translate([-10,35,0]) circle(5,$fn=100);
            translate([30,0,0]) circle(5,$fn=100);
            translate([-30,0,0]) circle(5,$fn=100);
        }
        translate([0,0,1]) linear_extrude(4) hull(){
            translate([10,38,0]) circle(5,$fn=100);
            translate([-10,38,0]) circle(5,$fn=100);
            translate([0,30,0]) circle(5,$fn=100);
        }
        // 磁石穴
        translate([30,0,0.5]) linear_extrude(4) circle(3.12,$fn=100);
        translate([-30,0,0.5]) linear_extrude(4) circle(3.12,$fn=100);
        // 線
        translate([-30,-5,0.5]) linear_extrude(4) square([0.1,2]);
        translate([30,-5,0.5]) linear_extrude(4) square([0.1,2]);
    }
    color("red") translate([0,20,4]) linear_extrude(5) hull(){
        translate([20,0,0]) circle(2,$fn=100);
        translate([-20,0,0]) circle(2,$fn=100);
    }
}