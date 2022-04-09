            
rotate_extrude($fn=100){
    translate([35,0,0]){
        union(){
            difference(){
                square(15.5,15.5);
                translate([15.5,15.5,0]) circle(13,$fn=100);
            }
            square([20,2.5]);
        }
    }   
}
linear_extrude(15.5){
    union(){
        translate([32.2,-1.3,0]) square([3,2.6]);
        translate([-35.2,-1.3,0]) square([3,2.6]);
        translate([-1.3,32.2,0]) square([2.6,3]);
        translate([-1.3,-35.2,0]) square([2.6,3]);
    }
}