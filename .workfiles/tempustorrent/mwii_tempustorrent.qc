

$modelname "arccw_mwr_tempustorrent.mdl"

$maxverts 65530

$bodygroup "Receiver_Top"
{
    studio "Receiver_Top.dmx"
	blank
}


$bodygroup "Receiver_Lower"
{
    studio "receiver_lower.dmx"
	blank
}

$bodygroup "rs"
{
    studio "RS.dmx"
	blank
}

$bodygroup "fs"
{
    studio "fs_default.dmx"
	blank
}


$bodygroup "mag"
{
    studio "mag3.dmx"
}




$bodygroup "pgrip"
{
    studio "grip.dmx"
	blank
}


$bodygroup "handguard"
{
     studio "guarddef.dmx"
	 blank
}

$bodygroup "bar"
{
     studio "bardef.dmx"
	 blank
}

$bodygroup "stock"
{
    studio "stockdef.dmx"
	blank
}


$cdmaterials "models\weapons\mw_r\m4"
$cdmaterials "models\weapons\mw_r\tempustorrent"
$cdmaterials "models\mwrshared\"

$attachment "1" "muzzle" 0.00 0.00 0.00 rotate -90 0 0
$attachment "2" "eject" 0.00 0.00 0.00 rotate 0 160 -180


$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"



$sequence "idle" {
	"anims\idle.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}

$sequence "idle_empty" {
	"anims\idle_empty.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "fire" {
	"anims\fire.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fps 30
}

$sequence "fire_empty" {
	"anims\fire_empty.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fps 30
}


$sequence "fire_iron" {
	"anims\fire_iron.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fps 30
}



$sequence "reload" {
	"anims\reload.dmx"
	activity "ACT_VM_RELOAD" 1
	snap
	fps 30
}


$sequence "reload_empty" {
	"anims\reload_empty.dmx"
	activity "ACT_VM_RELOAD" 1
	snap
	fps 30
}

$sequence "reload_v2" {
	"anims\reload_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	snap
	fps 30
}


$sequence "reload_empty_v2" {
	"anims\reload_empty_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	snap
	fps 30
}


$sequence "draw" {
	"anims\draw.dmx"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw_empty" {
	"anims\draw_empty.dmx"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}


$sequence "holster" {
	"anims\holster.dmx"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster_empty" {
	"anims\holster_empty.dmx"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
