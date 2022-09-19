module ring_inner_bottom()
{
        color("red") 
                difference() {
                union() {
                        translate([0, 0, 0]) cylinder(r=35/2, h=12, $fn=720);
                        translate([0, 0, 12]) cylinder(r=19, h=1, $fn=720);
                        translate([0, 0, 13]) cylinder(r=45/2, h=7, $fn=720);
                        translate([0, 0, 20]) cylinder(r=19, h=10, $fn=720);
                        //translate([17, 0, 45]) cylinder(r=2.5, h=5);
                        //translate([-17, 0, 45]) cylinder(r=2.5, h=5);
                }
                translate([0, 0, -1]) cylinder(r=15.1, h=52,$fn=720);
                translate([0, 0, -1]) cube([40, 1, 70]);
        }
}

module ring_outer_bottom()
{
        color("red") 
                difference() {
                union () {
                    cylinder(r=35, h=20, $fn=720);
                    translate([-35, 0, 0]) 
                        cube([70, 36, 20]);
                    translate([-72, 29, -5]) 
                        cube([144, 7, 30]);
                }
                translate([0, 0, -0.1]) 
                    cylinder(r=39/2, h=5+0.2, $fn=720);
                translate([0, 0, 5]) 
                    cylinder(r=47/2, h=15+0.1, $fn=720);

                translate([42.5, 28, 10]) 
                    rotate([-90, 0, 0]) 
                    cylinder(r=5.2/2, h=9, $fn=720);
                translate([-42.5, 28, 10]) 
                    rotate([-90, 0, 0]) 
                    cylinder(r=5.2/2, h=9, $fn=720);
        }
}


module ring_motor()
{
        color("red") 
                difference() {
                 
                union () {
                        translate([0, 0, 5]) cylinder(r=35, h=15, $fn=720);
                        translate([0, 0, 19.9]) cylinder(r=63.8/2, h=10, $fn=720);
                        translate([-31, 0, 5]) cube([62, 36, 15]);
                        translate([-50, 29, 0]) cube([100, 7, 20]);
                }
                translate([0, 0, 4.9]) cylinder(r=33/2, h=15+0.2, $fn=720);
                translate([0, 0, 20]) cylinder(r=30.5, h=10+0.1, $fn=720);

                translate([38, 28, 10]) rotate([-90, 0, 0]) cylinder(r=5.2/2, h=9, $fn=720);
                translate([-38, 28, 10]) rotate([-90, 0, 0]) cylinder(r=5.2/2, h=9, $fn=720);

                rotate([0, 0, 45]) {
                        translate([45/2, 0, 4.9]) cylinder(r=6/2, h=15+0.2, $fn=720);
                        translate([-45/2, 0, 4.9]) cylinder(r=6/2, h=15+0.2, $fn=720);
                        translate([0, 45/2, 4.9]) cylinder(r=6/2, h=15+0.2, $fn=720);
                        translate([0, -45/2, 4.9]) cylinder(r=6/2, h=15+0.2, $fn=720);
                }
        }
}


module cover_motor()
{
        color("red") 
                difference() {
                
                union () {
                        translate([0, 0, 10]) cylinder(r=35, h=5, $fn=720);
                        translate([0, 0, 0]) cylinder(r=63.8/2, h=10, $fn=720);
                }
                translate([0, 0, -0.1]) cylinder(r=28, h=10+0.1, $fn=720);
                translate([20, 0, 9.9]) cylinder(r=4, h=5+0.2, $fn=720);

        }
}


module tool()
{
        color("red") 
                difference() {
                
                union () {
                        translate([0, 0, 10]) cylinder(r=9.92, h=40, $fn=720);
                        translate([0, 0, 0]) cylinder(r=50/2, h=10, $fn=720);
                }
                translate([0, -10.1, 30]) rotate([-90, 0, 0]) cylinder(r=3, h=20+0.2, $fn=720);
                translate([20, 0, -0.1]) cylinder(r=3, h=10+0.2, $fn=720);
                translate([-20, 0, -0.1]) cylinder(r=3, h=10+0.2, $fn=720);
                translate([0, 20, -0.1]) cylinder(r=3, h=10+0.2, $fn=720);
                translate([0, -20, -0.1]) cylinder(r=3, h=10+0.2, $fn=720);
        }
}

translate([0, 0, 0]) {
    ring_inner_bottom();
    ring_outer_bottom();
}

*translate([0, 0, 110]) cover_motor();

translate([0, 0, 70]) ring_motor();

translate([0, 0, -40]) {
        *ring_inner_bottom();
        ring_outer_bottom();
}


*tool();
