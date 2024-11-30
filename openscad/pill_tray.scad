union(){
    difference(){
        linear_extrude(8) hull(){
            translate([3.5,5,0]) circle(7,$fn=100);
            translate([65,5,0]) circle(7,$fn=100);
            translate([65,40,0]) circle(7,$fn=100);
            translate([3.5,40,0]) circle(7,$fn=100);
        }
        translate([68,37,7]) rotate([0,-90,0]) cylinder(80,6,6,$fn=100);
        translate([51,1,3]) roundedCube([17,34,10],5,100);
        translate([31,1,3]) roundedCube([17,34,10],5,100);
        translate([11,1,3]) roundedCube([17,34,10],5,100);
    }
    translate([68,29,2.5]) rotate([0,-90,0]) cylinder(70,1,1,$fn=100);
}

// https://artificialarts.hatenablog.com/entry/2020/02/21/080303
module roundedCube(size=[15,15,15],radius=3, fragments=30)
{
    $fn=fragments;

    translate([radius,radius,0])
    cube([size[0]-radius*2,size[1]-radius*2,size[2]]);
    translate([radius,0,radius])
    cube([size[0]-radius*2,size[1],size[2]-radius*2]);
    translate([0,radius,radius])
    cube([size[0],size[1]-radius*2,size[2]-radius*2]);

    //Pillar
    translate([radius,radius,radius])
    cylinder(h=size[2]-radius*2, r=radius);
    translate([size[0]-radius,radius,radius])
    cylinder(h=size[2]-radius*2, r=radius);
    translate([radius,size[1]-radius,radius])
    cylinder(h=size[2]-radius*2, r=radius);
    translate([size[0]-radius,size[1]-radius,radius])
    cylinder(h=size[2]-radius*2, r=radius);
    
    //Side
    translate([0,0,size[2]-radius])
    {
        translate([radius,radius,0])
        rotate([0,90,0])
        cylinder(h = size[0]-radius*2, r=radius);
        translate([radius,size[1]-radius,0])
        rotate([0,90,0])
        cylinder(h = size[0]-radius*2, r=radius);
        translate([radius,radius,0])
        rotate([-90,0,0])
        cylinder(h = size[1]-radius*2, r=radius);
        translate([size[0]-radius,radius,0])
        rotate([-90,0,0])
        cylinder(h = size[1]-radius*2, r=radius);
    }
    translate([0,0,radius])
    {
        translate([radius,radius,0])
        rotate([0,90,0])
        cylinder(h = size[0]-radius*2, r=radius);
        translate([radius,size[1]-radius,0])
        rotate([0,90,0])
        cylinder(h = size[0]-radius*2, r=radius);
        translate([radius,radius,0])
        rotate([-90,0,0])
        cylinder(h = size[1]-radius*2, r=radius);
        translate([size[0]-radius,radius,0])
        rotate([-90,0,0])
        cylinder(h = size[1]-radius*2, r=radius);
    }
        
    //Corner
    translate([radius,radius,size[2]-radius])
    sphere(r=radius);
    translate([size[0]-radius,radius,size[2]-radius])
    sphere(r=radius);
    translate([radius,size[1]-radius,size[2]-radius])
    sphere(r=radius);
    translate([size[0]-radius,size[1]-radius,size[2]-radius])
    sphere(r=radius);
    
    translate([radius,radius,radius])
    sphere(r=radius);
    translate([size[0]-radius,radius,radius])
    sphere(r=radius);
    translate([radius,size[1]-radius,radius])
    sphere(r=radius);
    translate([size[0]-radius,size[1]-radius,radius])
    sphere(r=radius);
}