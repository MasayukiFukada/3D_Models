linear_extrude(30){
    difference(){
        circle(35,$fn=100);
        circle(30,$fn=100);
        translate([32,-1.5,0]) square([5,3]);
        translate([-37,-1.5,0]) square([5,3]);
        translate([-1.5,32,0]) square([3,5]);
        translate([-1.5,-37,0]) square([3,5]);
    }
}