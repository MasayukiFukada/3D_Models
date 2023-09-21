difference(){
    union() {
        rotate([0,15,0]) translate([-10,-10,0]) linear_extrude(30) square([115,115]);
        translate([50,47.5,2]) rotate([0,180,45]) cylinder(35,80,65,$fn=4);
    }
    // メモスペース
    rotate([0,15,0]) translate([0,0,3]) linear_extrude(50) square([95,95]);
    // 指めくり
    rotate([0,15,0]) translate([105,47.5,-20]) linear_extrude(50) circle(20,$fn=100);
    // 斜めカット
    rotate([0,29,0]) translate([-10,-20,32]) linear_extrude(50) square([150,150]);
    // 飾り
    translate([-20,-35,25]) rotate([0,15,0]) rotate([40,0,0]) rotate([0,90,0]) linear_extrude(200) square([20,50]);
    translate([-20,95,55]) rotate([0,15,0]) rotate([-40,0,0]) rotate([0,90,0]) linear_extrude(200) square([20,50]);
}