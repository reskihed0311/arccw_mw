

$modelname "att_opt_szbullseye_hsp.mdl"


$bodygroup "hsp"
{
	studio "bullseye_hsp.dmx"
}



$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0


           $definebone "root" "" 0.000000 0.000000 0.000000 0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
      $definebone "holosight" "root" -0.000000 1.075000 -3.238003 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "blender_implicit" "" 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000


$sequence "idle" {
	"anims\ref_bullseye.dmx"
    snap
	fps 30
}
