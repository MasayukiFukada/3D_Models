// ラベル
// %translate([2,0,3]) square([40,12],center=true);

difference() { union() {
        // 連結部分     
        linear_extrude(2) union() {
            translate([-37,-85,0]) square([4,90]);
            translate([-33,-1.5,0]) square([6,2]);
            translate([-33,-21.5,0]) square([6,2]);
            translate([-33,-41.5,0]) square([6,2]);
            translate([-33,-61.5,0]) square([6,2]);
            translate([-33,-81.5,0]) square([6,2]);
        }
        // タグ
        difference() {
            linear_extrude(2) hull() {
                translate([-20,0,0]) circle(8,$fn=100);
                translate([35,5,0]) circle(3,$fn=100);
                translate([35,-5,0]) circle(3,$fn=100);
            }
            // フック部分
            linear_extrude(3) hull() {
                translate([27,-1,0]) circle(2,$fn=100);
                translate([32,-1,0]) circle(2,$fn=100);
                translate([25,7,0]) square([9,1]);
            }
            // 穴
            linear_extrude(3) translate([-23,0,0]) circle(3,$fn=100);
        }
        // 以下コピペ
        translate([0,-20,0]) difference() {
            linear_extrude(2) hull() {
                translate([-20,0,0]) circle(8,$fn=100);
                translate([35,5,0]) circle(3,$fn=100);
                translate([35,-5,0]) circle(3,$fn=100);
            }
            // フック部分
            linear_extrude(3) hull() {
                translate([27,-1,0]) circle(2,$fn=100);
                translate([32,-1,0]) circle(2,$fn=100);
                translate([25,7,0]) square([9,1]);
            }
            // 穴
            linear_extrude(3) translate([-23,0,0]) circle(3,$fn=100);
        }
        translate([0,-40,0]) difference() {
            linear_extrude(2) hull() {
                translate([-20,0,0]) circle(8,$fn=100);
                translate([35,5,0]) circle(3,$fn=100);
                translate([35,-5,0]) circle(3,$fn=100);
            }
            // フック部分
            linear_extrude(3) hull() {
                translate([27,-1,0]) circle(2,$fn=100);
                translate([32,-1,0]) circle(2,$fn=100);
                translate([25,7,0]) square([9,1]);
            }
            // 穴
            linear_extrude(3) translate([-23,0,0]) circle(3,$fn=100);
        }
        translate([0,-60,0]) difference() {
            linear_extrude(2) hull() {
                translate([-20,0,0]) circle(8,$fn=100);
                translate([35,5,0]) circle(3,$fn=100);
                translate([35,-5,0]) circle(3,$fn=100);
            }
            // フック部分
            linear_extrude(3) hull() {
                translate([27,-1,0]) circle(2,$fn=100);
                translate([32,-1,0]) circle(2,$fn=100);
                translate([25,7,0]) square([9,1]);
            }
            // 穴
            linear_extrude(3) translate([-23,0,0]) circle(3,$fn=100);
        }
        translate([0,-80,0]) difference() {
            linear_extrude(2) hull() {
                translate([-20,0,0]) circle(8,$fn=100);
                translate([35,5,0]) circle(3,$fn=100);
                translate([35,-5,0]) circle(3,$fn=100);
            }
            // フック部分
            linear_extrude(3) hull() {
                translate([27,-1,0]) circle(2,$fn=100);
                translate([32,-1,0]) circle(2,$fn=100);
                translate([25,7,0]) square([9,1]);
            }
            // 穴
            linear_extrude(3) translate([-23,0,0]) circle(3,$fn=100);
        }
    }
    // 一筆書き仕掛け
    linear_extrude(3) translate([-38,-0.5,0]) square([13,0.1]);
    linear_extrude(3) translate([-38,-20.5,0]) square([13,0.1]);
    linear_extrude(3) translate([-38,-40.5,0]) square([13,0.1]);
    linear_extrude(3) translate([-38,-60.5,0]) square([13,0.1]);
    linear_extrude(3) translate([-38,-80.5,0]) square([13,0.1]);
}