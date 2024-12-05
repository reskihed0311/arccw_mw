

$modelname "att_opt_xtenangel40hsp.mdl"


$bodygroup "hsp"
{
	studio "xten_angel40hsp.dmx"
}

$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0


      


$sequence "idle" {
	"anims\ref_xtenangel40.dmx"
    snap
	fps 30
}
