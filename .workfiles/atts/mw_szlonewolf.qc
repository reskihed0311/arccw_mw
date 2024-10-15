

$modelname "att_opt_szlonewolf.mdl"

$bodygroup "optic"
{
	studio "szonewolf.dmx"
}
$bodygroup "hsp"
{
	studio "szlonewolf_hsp.dmx"
}



$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition 0 0 0

$CBox 0 0 0 0 0 0

$BBox -1.501 -0.874 -0.421 2.028 0.904 1.859

$cdmaterials "models\mwrshared\atts"


$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0


      $definebone "holosight" "" 0.000000 1.362734 2.799979 0.000000 -0.000057 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
      $definebone "root" "" 0.000000 0.000000 0.000000 0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

$sequence "idle" {
	"anims\ref_lonewolf.dmx"
    snap
	fps 30
}
