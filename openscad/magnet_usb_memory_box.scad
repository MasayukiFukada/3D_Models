difference(){
    linear_extrude (73) hull(){
        translate([12.8,12.8,0]) circle(9,$fn=100);
        translate([12.8,-12.8,0]) circle(9,$fn=100);
        translate([-12.8,-12.8,0]) circle(9,$fn=100);
        translate([-12.8,12.8,0]) circle(9,$fn=100);
    }
    color("blue") translate([0,0,70]) linear_extrude (4) hull(){
        translate([12.3,12.3,0]) circle(9,$fn=100);
        translate([12.3,-12.3,0]) circle(9,$fn=100);
        translate([-12.3,-12.3,0]) circle(9,$fn=100);
        translate([-12.3,12.3,0]) circle(9,$fn=100);
    }
    // 格納スペース
    //translate([0,0,1]) linear_extrude(70) square([24,24],true);
    translate([0,0,1]) linear_extrude(70) hull(){
        translate([11,11,0]) circle(1,$fn=100);
        translate([11,-11,0]) circle(1,$fn=100);
        translate([-11,-11,0]) circle(1,$fn=100);
        translate([-11,11,0]) circle(1,$fn=100);
    }
    // 磁石穴
    translate([15,15,66]) linear_extrude(4) circle(3.12,$fn=100);
    translate([-15,-15,66]) linear_extrude(4) circle(3.12,$fn=100);
    // 溝
    translate([17.13,17.13,66]) linear_extrude(4)  rotate(-45) square([0.1,2.16]);
    translate([-19,-18.4,66]) linear_extrude(4)  rotate(-45) square([0.1,12]);
}
translate([0,0,-3.5]) rotate([180,0,0]) linear_extrude(7, center=true, scale=0.8) 
hull(){
        translate([12.8,12.8,0]) circle(9,$fn=100);
        translate([12.8,-12.8,0]) circle(9,$fn=100);
        translate([-12.8,-12.8,0]) circle(9,$fn=100);
        translate([-12.8,12.8,0]) circle(9,$fn=100);
    }