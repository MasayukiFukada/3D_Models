difference() {
    import("/home/minamo/Downloads/Levelrad_v2.stl", convexity=3);
    linear_extrude(0.5) square([50,50],center=true);
    #translate([0,0,4]) linear_extrude(5) square([50,50],center=true);
}