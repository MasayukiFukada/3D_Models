/*
開発履歴メモ:
2025/03/09 : v 1.0 : 両方とも口で吹いて音が鳴った。空洞長い方に合わせた方がくっきり音が鳴る
- 斜めの切れ込みが結構潰れてたので厚さ 3 mm 欲しい( が、要検討 )
- 断面積減ると流速や圧力上がりそうなので、拭き口も狭めたりすると良さそう
- ピーホイッスルを意識したけど、ビートホイッスルの構造の方が良いかも
- ストームホイッスル気になる
- 雨水溜まっても水笛の構造には近づかない気がする( 要検証 )
*/

difference() {
    color("Salmon")
    union() {
        translate([0,0,-2])
        linear_extrude(14)
        hull() {
                translate([-2, -2, 0]) circle(2,$fn=50);
                translate([27, -2, 0]) circle(2,$fn=50);
                translate([27, 44, 0]) square([2,2]);
                translate([-4, 44, 0]) square([2,2]);
        }
        translate([0,46,-2])
        linear_extrude(12)
        hull() {
            translate([2,0,0]) circle(1, $fn=50);
            translate([24,0,0]) circle(1, $fn=50);
            translate([13,3,0]) circle(1, $fn=50);
        }
        translate([-3,46,-2])
        linear_extrude(12)
        hull() {
            translate([0,0,0]) circle(1, $fn=50);
            translate([2,0,0]) circle(1, $fn=50);
            translate([0,3,0]) circle(1, $fn=50);
        }
        translate([27,46,-2])
        linear_extrude(12)
        hull() {
            translate([0,0,0]) circle(1, $fn=50);
            translate([1,0,0]) circle(1, $fn=50);
            translate([1,3,0]) circle(1, $fn=50);
        }
        difference() {
            translate([0,45,-2])
            linear_extrude(14)
            hull(){
                translate([-4,0,0]) square([2,2]);
                translate([27,0,0]) square([2,2]);
                translate([27,10,0]) square([2,2]);
                translate([-4,10,0]) square([2,2]);
            }
            translate([0,45,0])
            linear_extrude(10)
            hull(){
                translate([-2,0,0]) square([2,2]);
                translate([25,0,0]) square([2,2]);
                translate([25,10,0]) square([2,2]);
                translate([-2,10,0]) square([2,2]);
            }
        }
    }
    
    // 空洞部
    #color("orange")
    union() {
        linear_extrude(5)
        union() {
            hull() {
                translate([0, 0, 0]) circle(2,$fn=50);
                translate([10, 0, 0]) circle(1,$fn=50);
                translate([10, 17, 0]) circle(1,$fn=50);
                translate([0, 27, 0]) circle(2,$fn=50);
            }
            hull() {
                translate([15, 1.5, 0]) circle(1,$fn=50);
                translate([25, 1.5, 0]) circle(2,$fn=50);
                translate([25, 27, 0]) circle(2,$fn=50);
                translate([15, 17, 0]) circle(1,$fn=50);
            }
        }
        // 細い吹き口の通路
        translate([0,15.5,5])
        linear_extrude(5)
        union() {
            square([1,25]);
            translate([25,0,0]) square([1,25]);
        }
        translate([0, 35, 8])
        rotate([0, 90, 0])
        linear_extrude(1)
        hull() {
            circle(2, $fn=50);
            translate([-2, 10, 0]) square([2, 2]);
            translate([6, 10, 0]) square([2, 2]);
        }
        translate([25, 35, 8])
        rotate([0, 90, 0])
        linear_extrude(1)
        hull() {
            circle(2, $fn=50);
            translate([-2, 10, 0]) square([2, 2]);
            translate([6, 10, 0]) square([2, 2]);
        }
        // 横の空気抜け
        translate([-4.7, 15, 5])
        linear_extrude(8)
        difference() {
            square([5,10]);
            hull() {
                circle(0.5, $fn=50);
                translate([4.9,0,0]) circle(0.5, $fn=50);
                translate([4.9,5,0]) circle(0.5, $fn=50);
            }
        }
        translate([30.8, 15, 5])
        linear_extrude(8)
        mirror()
        difference() {
            square([5,10]);
            hull() {
                circle(0.5, $fn=50);
                translate([4.9,0,0]) circle(0.5, $fn=50);
                translate([4.9,5,0]) circle(0.5, $fn=50);
            }
        }
    }
}
