

$modelname "att_opt_aresclearshot.mdl"

$bodygroup "optic"
{
	studio "aresclearshot2.dmx"
}

$bodygroup "hsp"
{
	studio "clearshot_holo_hsp2.dmx"
	blank
}

      $definebone "root" "" 0.000000 0.000000 0.000000 0.000003 0.000008 90.000008 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "scope" "root" -0.000000 1.402500 -5.390914 -0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "holosight" "root" -1.123000 2.511500 -1.224414 -0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"
$cdmaterials ""

$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0
$attachment "scope" "scope" 0 0 0 rotate 0 0 0



$sequence "idle" {
	"anims\ref_aresclearshot.dmx"
    snap
	fps 30
}
