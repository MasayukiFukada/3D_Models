difference(){
        union() {
            linear_extrude(3) circle(6.9,$fn=100);
            translate([0,0,3]) cylinder(1.5,6.9,8,$fn=100);
        }
        // 磁石埋め込み穴
        color("red") translate([0,0,0.5]) linear_extrude(4) circle(3.1,$fn=100);
        // 穴強化スリット
        color("red") translate([0,6,0.5]) linear_extrude(4) square([0.1,7],center=true);
    }