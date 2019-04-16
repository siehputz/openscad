include <polypanel-module.scad>

module outline(wall = 1) {
  difference() {
    offset(wall / 2) children();
    offset(-wall / 2) children();
  }
}


module rounded_case(x,y,z,thick) {
    $fn=64;
    linear_extrude(height=z)
      outline(wall=thick)
       square([x,y]);
    linear_extrude(height=thick)
        square([x,y]);
}
// example two-sided panel
translate([-19,-40,0])
 rounded_case(37,20,3,1.8);
translate([-10.5,-16.6,2.5])
 polypanel(side="L");
translate([-10.5,-43.4,2.5])
 polypanel(side="R");
