union(){
    difference(){
        linear_extrude(29.5)  union(){
            hull(){
                translate([30,12.7,0]) circle(5,$fn=100);
                translate([-30,12.7,0]) circle(5,$fn=100);
                translate([30,0,0]) circle(5,$fn=100);
                translate([-30,0,0]) circle(5,$fn=100);
            }
            translate([25,18,0]) circle(3,$fn=100);
            translate([-25,18,0]) circle(3,$fn=100);
        }
        // 磁石穴
        translate([30,0,0.5]) linear_extrude(4.5) circle(3.12,$fn=100);
        translate([-30,0,0.5]) linear_extrude(4.5) circle(3.12,$fn=100);
        // 線
        translate([-30,-5,0.5]) linear_extrude(4.5) square([0.1,2]);
        translate([30,-5,0.5]) linear_extrude(4.5) square([0.1,2]);
        // パーティション部分
        color("green")translate([0,0,4.5]) linear_extrude(25) hull(){
            translate([30,3,0]) square([5,5]);
            translate([-35,3,0]) square([5,5]);
            translate([30,0,0]) circle(5,$fn=100);
            translate([-30,0,0]) circle(5,$fn=100);
        }
    }
    translate([0,0,29.5]) linear_extrude(3.5){
        hull(){
            translate([30,12.7,0]) circle(5,$fn=100);
            translate([40,0,0]) circle(5,$fn=100);
        }
        hull(){
            translate([-30,12.7,0]) circle(5,$fn=100);
            translate([-40,0,0]) circle(5,$fn=100);
        }
        hull(){
            translate([30,12.7,0]) circle(5,$fn=100);
            translate([-30,12.7,0]) circle(5,$fn=100);
        }
        translate([25,18,0]) circle(3,$fn=100);
        translate([-25,18,0]) circle(3,$fn=100);
    }
}