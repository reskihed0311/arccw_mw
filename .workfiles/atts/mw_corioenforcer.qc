

$modelname "att_opt_corioenforcer.mdl"

$bodygroup "optic"
{
	studio "corioenforcer.dmx"
}
$bodygroup "hsp"
{
	studio "corioenforcer_hsp.dmx"
}

$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0


$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "root" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "holosight" "" 0 1.362734 2.799979 0 -0.000057 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"anims\ref_corioenforcer.dmx"
    snap
	fps 30
}
