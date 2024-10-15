

$modelname "att_opt_fjxfactory_hsp.mdl"


$bodygroup "hsp"
{
	studio "Imprerium_HSP.dmx"
}



$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0


      

$sequence "idle" {
	"anims\ref_fjxoptic.dmx"
    snap
	fps 30
}
