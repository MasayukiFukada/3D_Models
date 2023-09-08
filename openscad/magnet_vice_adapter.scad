translate([0,0,13]) linear_extrude(1) circle(2.8,$fn=100);
translate([0,0,9]) linear_extrude(4) circle(6,$fn=100);
difference(){
    linear_extrude(9) circle(9.5,$fn=100);
    linear_extrude(7) circle(7.5,$fn=100);
}