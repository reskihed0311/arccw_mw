

$modelname "att_tac_corvuspeqbox.mdl"

$bodygroup "laser"
{
	studio "corvuspeq5.dmx"
}

$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "laser" "laser" 0.00 0.00 0.00 rotate -0 0 90


      $definebone "holosight" "" 0.000000 1.362734 2.799979 0.000000 -0.000057 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
      $definebone "root" "" 0.000000 0.000000 0.000000 0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000


$sequence "idle" {
	"anims\ref_beam5.dmx"
    snap
	fps 30
}
