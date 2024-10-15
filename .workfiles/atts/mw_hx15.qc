

$modelname "att_tac_hx15.mdl"

$bodygroup "tac"
{
	studio "hx15.dmx"
}

$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "laser" "laser" 0.00 0.00 0.00 rotate -0 0 90




$sequence "idle" {
	"anims\ref_hx15.dmx"
    snap
	fps 30
}
