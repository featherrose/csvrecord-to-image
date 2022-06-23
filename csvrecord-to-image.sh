##echo "parsing"
echo "---------------------"
echo "     cardname: ${1}"
echo "      textbox: ${2}"
echo "        owner: ${3}"
echo "       copies: ${4}"
echo "     cardtype: ${5}"

## DEBUG
## TODO: use jq to redesign this code to work based on JSON data structures!
## SCRATCHED TODO: Recalculate offsets based on the scaling factor of the frame elements (test with Undertale).
## TODO (but probably not in THIS script): Automatically generate character reference card.

#cardname=$1
#textbox=$2
#owner=$3
#copies=$4
#cardtype=$5
#textboxwidth
#textboxheight



#csvcut -c "TextFormatted","TextSecondaryFormatted","Frame","ArmorFrame","GuardFrame","SecondaryType","SecondaryTypeIcon","SecondarySubtypeIcon","CostIcon" test.csv | sed -e 's/ /\\ /g' | csvformat --out-delimiter " " > test.txt
#csvsql --query "WITH varname AS (SELECT 'GuardFrame' AS "


COLOR_LOGIC='\033[1;35m'   # Light Purple
COLOR_MAGIC='\033[0;32m'   # Green
COLOR_ERROR='\033[0;31m'   # Red
COLOR_LATEX='\033[1;36m'   # Light Cyan
COLOR_WARNING='\033[1;33m' # Yellow
COLOR_NONE='\033[0m'

#card_number=${1}
#armor_BlurColor=${2}
#armor_BlurDistance=${3}
#armor_BlurOpacity=${4}
#armor_BlurRadius=${5}
#armor_BlurSigma=${6}
#armor_FontFamily=${7}
#armor_FontStyle=${8}
#armor_FontWeight=${9}
#armor_OffsetX=${10}
#armor_OffsetY=${11}
#armor_OutlineColor=${12}
#armor_OutlineWidth=${13}
#armor_PointSize=${14}
#armor_Rotation=${15}
#armor_StatColor=${16}
#armor_value=${17}
#cost_BlurColor=${18}
#cost_BlurDistance=${19}
#cost_BlurOpacity=${20}
#cost_BlurRadius=${21}
#cost_BlurSigma=${22}
#cost_FontFamily=${23}
#cost_FontStyle=${24}
#cost_FontWeight=${25}
#cost_OffsetX=${26}
#cost_OffsetY=${27}
#cost_OutlineColor=${28}
#cost_OutlineWidth=${29}
#cost_PointSize=${30}
#cost_Rotation=${31}
#cost_StatColor=${32}
#cost_value=${33}
#drive_BlurColor=${34}
#drive_BlurDistance=${35}
#drive_BlurOpacity=${36}
#drive_BlurRadius=${37}
#drive_BlurSigma=${38}
#drive_FontFamily=${39}
#drive_FontStyle=${40}
#drive_FontWeight=${41}
#drive_OffsetX=${42}
#drive_OffsetY=${43}
#drive_OutlineColor=${44}
#drive_OutlineWidth=${45}
#drive_PointSize=${46}
#drive_Rotation=${47}
#drive_StatColor=${48}
#drive_value=${49}
#guard_BlurColor=${50}
#guard_BlurDistance=${51}
#guard_BlurOpacity=${52}
#guard_BlurRadius=${53}
#guard_BlurSigma=${54}
#guard_FontFamily=${55}
#guard_FontStyle=${56}
#guard_FontWeight=${57}
#guard_OffsetX=${58}
#guard_OffsetY=${59}
#guard_OutlineColor=${60}
#guard_OutlineWidth=${61}
#guard_PointSize=${62}
#guard_Rotation=${63}
#guard_StatColor=${64}
#guard_value=${65}
#layer_armor_patch=${66}
#layer_art=${67}
#layer_art_over_all=${68}
#layer_art_over_armor_patch=${69}
#layer_art_over_cost_patch=${70}
#layer_art_over_drive_patch=${71}
#layer_art_over_guard_patch=${72}
#layer_art_over_owner_mark_patch=${73}
#layer_art_over_power_patch=${74}
#layer_art_over_range_patch=${75}
#layer_art_over_secondarycost_patch=${76}
#layer_art_over_secondaryframe=${77}
#layer_art_over_secondarysubtype_patch=${78}
#layer_art_over_secondarytitle=${79}
#layer_art_over_speed_patch=${80}
#layer_art_over_tertiarycost_patch=${81}
#layer_art_over_tertiaryframe=${82}
#layer_art_over_tertiarysubtype_patch=${83}
#layer_art_over_title=${84}
#layer_background=${85}
#layer_cost_patch=${86}
#layer_drive_patch=${87}
#layer_frame=${88}
#layer_frame_over_background=${89}
#layer_guard_patch=${90}
#layer_owner_mark_patch_background=${91}
#layer_owner_mark_patch_foreground=${92}
#layer_power_patch=${93}
#layer_range_patch=${94}
#layer_secondarycost_patch=${95}
#layer_secondaryframe=${96}
#layer_secondarysubtype_patch=${97}
#layer_speed_patch=${98}
#layer_tertiarycost_patch=${99}
#layer_tertiaryframe=${100}
#layer_tertiarysubtype_patch=${101}
#owner_mark_art=${102}
#owner_mark_Height=${103}
#owner_mark_OffsetX=${104}
#owner_mark_OffsetY=${105}
#owner_mark_Width=${106}
#power_BlurColor=${107}
#power_BlurDistance=${108}
#power_BlurOpacity=${109}
#power_BlurRadius=${110}
#power_BlurSigma=${111}
#power_FontFamily=${112}
#power_FontStyle=${113}
#power_FontWeight=${114}
#power_OffsetX=${115}
#power_OffsetY=${116}
#power_OutlineColor=${117}
#power_OutlineWidth=${118}
#power_PointSize=${119}
#power_Rotation=${120}
#power_StatColor=${121}
#power_value=${122}
#range_BlurColor=${123}
#range_BlurDistance=${124}
#range_BlurOpacity=${125}
#range_BlurRadius=${126}
#range_BlurSigma=${127}
#range_FontFamily=${128}
#range_FontStyle=${129}
#range_FontWeight=${130}
#range_OffsetX=${131}
#range_OffsetY=${132}
#range_OutlineColor=${133}
#range_OutlineWidth=${134}
#range_PointSize=${135}
#range_Rotation=${136}
#range_StatColor=${137}
#range_value=${138}
#secondarycost_BlurColor=${139}
#secondarycost_BlurDistance=${140}
#secondarycost_BlurOpacity=${141}
#secondarycost_BlurRadius=${142}
#secondarycost_BlurSigma=${143}
#secondarycost_FontFamily=${144}
#secondarycost_FontStyle=${145}
#secondarycost_FontWeight=${146}
#secondarycost_OffsetX=${147}
#secondarycost_OffsetY=${148}
#secondarycost_OutlineColor=${149}
#secondarycost_OutlineWidth=${150}
#secondarycost_PointSize=${151}
#secondarycost_Rotation=${152}
#secondarycost_StatColor=${153}
#secondarycost_value=${154}
#secondarytextbox_critical_icon_file=${155}
#secondarytextbox_critical_icon_height=${156}
#secondarytextbox_critical_icon_textScaling=${157}
#secondarytextbox_critical_icon_width=${158}
#secondarytextbox_font=${159}
#secondarytextbox_outlinecolor_armor=${160}
#secondarytextbox_outlinecolor_effect=${161}
#secondarytextbox_outlinecolor_flavor=${162}
#secondarytextbox_outlinecolor_guard=${163}
#secondarytextbox_outlinecolor_passive=${164}
#secondarytextbox_outlinecolor_power=${165}
#secondarytextbox_outlinecolor_range=${166}
#secondarytextbox_outlinecolor_reminder=${167}
#secondarytextbox_outlinecolor_speed=${168}
#secondarytextbox_outlinecolor_trigger=${169}
#secondarytextbox_outlinedensity_effect=${170}
#secondarytextbox_outlinedensity_flavor=${171}
#secondarytextbox_outlinedensity_passive=${172}
#secondarytextbox_outlinedensity_reminder=${173}
#secondarytextbox_outlinedensity_stats=${174}
#secondarytextbox_outlinedensity_trigger=${175}
#secondarytextbox_outlinewidth_effect=${176}
#secondarytextbox_outlinewidth_flavor=${177}
#secondarytextbox_outlinewidth_passive=${178}
#secondarytextbox_outlinewidth_reminder=${179}
#secondarytextbox_outlinewidth_stats=${180}
#secondarytextbox_outlinewidth_trigger=${181}
#secondarytextbox_paragraphspacing=${182}
#secondarytextbox_textBlurDistance=${183}
#secondarytextbox_textBlurOpacity=${184}
#secondarytextbox_textBlurRadius=${185}
#secondarytextbox_textBlurSigma=${186}
#secondarytextbox_textcolor_armor=${187}
#secondarytextbox_textcolor_effect=${188}
#secondarytextbox_textcolor_flavor=${189}
#secondarytextbox_textcolor_guard=${190}
#secondarytextbox_textcolor_passive=${191}
#secondarytextbox_textcolor_power=${192}
#secondarytextbox_textcolor_range=${193}
#secondarytextbox_textcolor_reminder=${194}
#secondarytextbox_textcolor_speed=${195}
#secondarytextbox_textcolor_trigger=${196}
#secondarytextbox_textOffsetX=${197}
#secondarytextbox_textOffsetY=${198}
#secondarytextbox_textRotation=${199}
#secondarytextbox_textTextHeight=${200}
#secondarytextbox_textTextWidth=${201}
#secondarytextbox_textvalue=${202}
#secondarytitle_Alignment=${203}
#secondarytitle_BlurColor=${204}
#secondarytitle_BlurDistance=${205}
#secondarytitle_BlurOpacity=${206}
#secondarytitle_BlurRadius=${207}
#secondarytitle_BlurSigma=${208}
#secondarytitle_FontFamily=${209}
#secondarytitle_FontStyle=${210}
#secondarytitle_FontWeight=${211}
#secondarytitle_OffsetX=${212}
#secondarytitle_OffsetY=${213}
#secondarytitle_OutlineColor=${214}
#secondarytitle_OutlineWidth=${215}
#secondarytitle_PointSize=${216}
#secondarytitle_Rotation=${217}
#secondarytitle_StatColor=${218}
#secondarytitle_value=${219}
#speed_BlurColor=${220}
#speed_BlurDistance=${221}
#speed_BlurOpacity=${222}
#speed_BlurRadius=${223}
#speed_BlurSigma=${224}
#speed_FontFamily=${225}
#speed_FontStyle=${226}
#speed_FontWeight=${227}
#speed_OffsetX=${228}
#speed_OffsetY=${229}
#speed_OutlineColor=${230}
#speed_OutlineWidth=${231}
#speed_PointSize=${232}
#speed_Rotation=${233}
#speed_StatColor=${234}
#speed_value=${235}
#subtitle_Alignment=${236}
#subtitle_BlurColor=${237}
#subtitle_BlurDistance=${238}
#subtitle_BlurOpacity=${239}
#subtitle_BlurRadius=${240}
#subtitle_BlurSigma=${241}
#subtitle_FontFamily=${242}
#subtitle_FontStyle=${243}
#subtitle_FontWeight=${244}
#subtitle_OffsetX=${245}
#subtitle_OffsetY=${246}
#subtitle_OutlineColor=${247}
#subtitle_OutlineWidth=${248}
#subtitle_PointSize=${249}
#subtitle_Rotation=${250}
#subtitle_StatColor=${251}
#subtitle_value=${252}
#tertiarycost_BlurColor=${253}
#tertiarycost_BlurDistance=${254}
#tertiarycost_BlurOpacity=${255}
#tertiarycost_BlurRadius=${256}
#tertiarycost_BlurSigma=${257}
#tertiarycost_FontFamily=${258}
#tertiarycost_FontStyle=${259}
#tertiarycost_FontWeight=${260}
#tertiarycost_OffsetX=${261}
#tertiarycost_OffsetY=${262}
#tertiarycost_OutlineColor=${263}
#tertiarycost_OutlineWidth=${264}
#tertiarycost_PointSize=${265}
#tertiarycost_Rotation=${266}
#tertiarycost_StatColor=${267}
#tertiarycost_value=${268}
#tertiarytextbox_critical_icon_file=${269}
#tertiarytextbox_critical_icon_height=${270}
#tertiarytextbox_critical_icon_textScaling=${271}
#tertiarytextbox_critical_icon_width=${272}
#tertiarytextbox_font=${273}
#tertiarytextbox_outlinecolor_armor=${274}
#tertiarytextbox_outlinecolor_effect=${275}
#tertiarytextbox_outlinecolor_flavor=${276}
#tertiarytextbox_outlinecolor_guard=${277}
#tertiarytextbox_outlinecolor_passive=${278}
#tertiarytextbox_outlinecolor_power=${279}
#tertiarytextbox_outlinecolor_range=${280}
#tertiarytextbox_outlinecolor_reminder=${281}
#tertiarytextbox_outlinecolor_speed=${282}
#tertiarytextbox_outlinecolor_trigger=${283}
#tertiarytextbox_outlinedensity_effect=${284}
#tertiarytextbox_outlinedensity_flavor=${285}
#tertiarytextbox_outlinedensity_passive=${286}
#tertiarytextbox_outlinedensity_reminder=${287}
#tertiarytextbox_outlinedensity_stats=${288}
#tertiarytextbox_outlinedensity_trigger=${289}
#tertiarytextbox_outlinewidth_effect=${290}
#tertiarytextbox_outlinewidth_flavor=${291}
#tertiarytextbox_outlinewidth_passive=${292}
#tertiarytextbox_outlinewidth_reminder=${293}
#tertiarytextbox_outlinewidth_stats=${294}
#tertiarytextbox_outlinewidth_trigger=${295}
#tertiarytextbox_paragraphspacing=${296}
#tertiarytextbox_textBlurDistance=${297}
#tertiarytextbox_textBlurOpacity=${298}
#tertiarytextbox_textBlurRadius=${299}
#tertiarytextbox_textBlurSigma=${300}
#tertiarytextbox_textcolor_armor=${301}
#tertiarytextbox_textcolor_effect=${302}
#tertiarytextbox_textcolor_flavor=${303}
#tertiarytextbox_textcolor_guard=${304}
#tertiarytextbox_textcolor_passive=${305}
#tertiarytextbox_textcolor_power=${306}
#tertiarytextbox_textcolor_range=${307}
#tertiarytextbox_textcolor_reminder=${308}
#tertiarytextbox_textcolor_speed=${309}
#tertiarytextbox_textcolor_trigger=${310}
#tertiarytextbox_textOffsetX=${311}
#tertiarytextbox_textOffsetY=${312}
#tertiarytextbox_textRotation=${313}
#tertiarytextbox_textTextHeight=${314}
#tertiarytextbox_textTextWidth=${315}
#tertiarytextbox_textvalue=${316}
#tertiarytitle_Alignment=${317}
#tertiarytitle_BlurColor=${318}
#tertiarytitle_BlurDistance=${319}
#tertiarytitle_BlurOpacity=${320}
#tertiarytitle_BlurRadius=${321}
#tertiarytitle_BlurSigma=${322}
#tertiarytitle_FontFamily=${323}
#tertiarytitle_FontStyle=${324}
#tertiarytitle_FontWeight=${325}
#tertiarytitle_OffsetX=${326}
#tertiarytitle_OffsetY=${327}
#tertiarytitle_OutlineColor=${328}
#tertiarytitle_OutlineWidth=${329}
#tertiarytitle_PointSize=${330}
#tertiarytitle_Rotation=${331}
#tertiarytitle_StatColor=${332}
#tertiarytitle_value=${333}
#textbox_critical_icon_file=${334}
#textbox_critical_icon_height=${335}
#textbox_critical_icon_textScaling=${336}
#textbox_critical_icon_width=${337}
#textbox_font=${338}
#textbox_outlinecolor_armor=${339}
#textbox_outlinecolor_effect=${340}
#textbox_outlinecolor_flavor=${341}
#textbox_outlinecolor_guard=${342}
#textbox_outlinecolor_passive=${343}
#textbox_outlinecolor_power=${344}
#textbox_outlinecolor_range=${345}
#textbox_outlinecolor_reminder=${346}
#textbox_outlinecolor_speed=${347}
#textbox_outlinecolor_trigger=${348}
#textbox_outlinedensity_effect=${349}
#textbox_outlinedensity_flavor=${350}
#textbox_outlinedensity_passive=${351}
#textbox_outlinedensity_reminder=${352}
#textbox_outlinedensity_stats=${353}
#textbox_outlinedensity_trigger=${354}
#textbox_outlinewidth_effect=${355}
#textbox_outlinewidth_flavor=${356}
#textbox_outlinewidth_passive=${357}
#textbox_outlinewidth_reminder=${358}
#textbox_outlinewidth_stats=${359}
#textbox_outlinewidth_trigger=${360}
#textbox_paragraphspacing=${361}
#textbox_textBlurDistance=${362}
#textbox_textBlurOpacity=${363}
#textbox_textBlurRadius=${364}
#textbox_textBlurSigma=${365}
#textbox_textcolor_armor=${366}
#textbox_textcolor_effect=${367}
#textbox_textcolor_flavor=${368}
#textbox_textcolor_guard=${369}
#textbox_textcolor_passive=${370}
#textbox_textcolor_power=${371}
#textbox_textcolor_range=${372}
#textbox_textcolor_reminder=${373}
#textbox_textcolor_speed=${374}
#textbox_textcolor_trigger=${375}
#textbox_textOffsetX=${376}
#textbox_textOffsetY=${377}
#textbox_textRotation=${378}
#textbox_textTextHeight=${379}
#textbox_textTextWidth=${380}
#textbox_textvalue=${381}
#title_Alignment=${382}
#title_BlurColor=${383}
#title_BlurDistance=${384}
#title_BlurOpacity=${385}
#title_BlurRadius=${386}
#title_BlurSigma=${387}
#title_FontFamily=${388}
#title_FontStyle=${389}
#title_FontWeight=${390}
#title_OffsetX=${391}
#title_OffsetY=${392}
#title_OutlineColor=${393}
#title_OutlineWidth=${394}
#title_PointSize=${395}
#title_Rotation=${396}
#title_StatColor=${397}
#title_value=${398}

## Sample values for testing

card_number=1

## Text Box

textbox_textvalue=`cat ./sampletext2.txt`
textbox_textTextWidth="520"
textbox_textTextHeight="147"
textbox_textOffsetX="5"  #"-5"
textbox_textOffsetY="208"
textbox_textRotation="0"
#textbox_textBlurSigma="2"
#textbox_textBlurRadius=$(( $textbox_textBlurSigma * 3 ))
#textbox_textBlurDistance="1"
#textbox_textBlurOpacity="0.9"

textbox_font="FiraSans"
textbox_paragraphspacing="5"

textbox_critical_icon_file="./frames/shards-airship/critical.png"
textbox_critical_icon_textScaling="0.04"
textbox_critical_icon_width="300"
textbox_critical_icon_height="300"

textbox_textcolor_range="00abea"
textbox_textcolor_power="f54137"
textbox_textcolor_speed="fff5a5"
textbox_textcolor_armor="ae96c3"
textbox_textcolor_guard="39ab55"
textbox_textcolor_effect="FFFFFF"
textbox_textcolor_flavor="c060000"
textbox_textcolor_passive="ffffff"
textbox_textcolor_reminder="ffffff"
textbox_textcolor_trigger="ffffff"

textbox_outlinecolor_range="000000"
textbox_outlinecolor_power="000000"
textbox_outlinecolor_speed="000000"
textbox_outlinecolor_armor="000000"
textbox_outlinecolor_guard="000000"
textbox_outlinecolor_effect="000000"
textbox_outlinecolor_flavor="000000"
textbox_outlinecolor_passive="000000"
textbox_outlinecolor_reminder="000000"
textbox_outlinecolor_trigger="000000"

textbox_outlinewidth_stats="1.2"
textbox_outlinewidth_effect="0.6"
textbox_outlinewidth_flavor="1"
textbox_outlinewidth_passive="0.7"
textbox_outlinewidth_reminder="0.6"
textbox_outlinewidth_trigger="0.7"

textbox_outlinedensity_stats="16"
textbox_outlinedensity_effect="32"
textbox_outlinedensity_flavor="16"
textbox_outlinedensity_passive="16"
textbox_outlinedensity_reminder="16"
textbox_outlinedensity_trigger="16"


## Secondary Text Box

secondarytextbox_textvalue='Critical, Hit: <p+3 Power>, gain Advantage, and add this to your Gauge.'
secondarytextbox_textTextWidth="536"
secondarytextbox_textTextHeight="132"
secondarytextbox_textOffsetX="0"
secondarytextbox_textOffsetY="412"
secondarytextbox_textRotation="-180"
#secondarytextbox_textBlurSigma="3"
#secondarytextbox_textBlurRadius=$(( $secondarytextbox_textBlurSigma * 3 ))
#secondarytextbox_textBlurDistance="1"
#secondarytextbox_textBlurOpacity="0.9"

secondarytextbox_font="FiraSans"
secondarytextbox_paragraphspacing="5"

secondarytextbox_critical_icon_file="./frames/shards-airship/critical.svg"
secondarytextbox_critical_icon_textScaling="0.04"
secondarytextbox_critical_icon_width="300"
secondarytextbox_critical_icon_height="300"

secondarytextbox_textcolor_range="00abea"
secondarytextbox_textcolor_power="f54137"
secondarytextbox_textcolor_speed="fff5a5"
secondarytextbox_textcolor_armor="ae96c3"
secondarytextbox_textcolor_guard="39ab55"
secondarytextbox_textcolor_effect="ffffff"
secondarytextbox_textcolor_flavor="c060000"
secondarytextbox_textcolor_passive="ffffff"
secondarytextbox_textcolor_reminder="ffffff"
secondarytextbox_textcolor_trigger="ffffff"

secondarytextbox_outlinecolor_range="000000"
secondarytextbox_outlinecolor_power="000000"
secondarytextbox_outlinecolor_speed="000000"
secondarytextbox_outlinecolor_armor="000000"
secondarytextbox_outlinecolor_guard="000000"
secondarytextbox_outlinecolor_effect="000000"
secondarytextbox_outlinecolor_flavor="000000"
secondarytextbox_outlinecolor_passive="000000"
secondarytextbox_outlinecolor_reminder="000000"
secondarytextbox_outlinecolor_trigger="000000"

secondarytextbox_outlinewidth_stats="1.2"
secondarytextbox_outlinewidth_effect="0.6"
secondarytextbox_outlinewidth_flavor="1"
secondarytextbox_outlinewidth_passive="0.7"
secondarytextbox_outlinewidth_reminder="0.6"
secondarytextbox_outlinewidth_trigger="0.7"

secondarytextbox_outlinedensity_stats="16"
secondarytextbox_outlinedensity_effect="32"
secondarytextbox_outlinedensity_flavor="16"
secondarytextbox_outlinedensity_passive="16"
secondarytextbox_outlinedensity_reminder="16"
secondarytextbox_outlinedensity_trigger="16"

## Tertiary Text Box

tertiarytextbox_textvalue="_NONE_"
tertiarytextbox_textTextWidth="_NONE_"
tertiarytextbox_textTextHeight="_NONE_"
tertiarytextbox_textOffsetX="0"
tertiarytextbox_textOffsetY="0"
tertiarytextbox_textRotation=""
#tertiarytextbox_textBlurSigma="0"
#tertiarytextbox_textBlurRadius=$(( $textbox_textBlurSigma * 3 ))
#tertiarytextbox_textBlurDistance="0"
#tertiarytextbox_textBlurOpacity="0.9"

tertiarytextbox_font="FiraSans"
tertiarytextbox_paragraphspacing="5"

tertiarytextbox_critical_icon_file="./frames/shards-airship/critical.svg"
tertiarytextbox_critical_icon_textScaling="0.04"
tertiarytextbox_critical_icon_width="300"
tertiarytextbox_critical_icon_height="300"

tertiarytextbox_textcolor_range="00abea"
tertiarytextbox_textcolor_power="f54137"
tertiarytextbox_textcolor_speed="fff5a5"
tertiarytextbox_textcolor_armor="ae96c3"
tertiarytextbox_textcolor_guard="39ab55"
tertiarytextbox_textcolor_effect="ffffff"
tertiarytextbox_textcolor_flavor="c060000"
tertiarytextbox_textcolor_passive="ffffff"
tertiarytextbox_textcolor_reminder="ffffff"
tertiarytextbox_textcolor_trigger="ffffff"

tertiarytextbox_outlinecolor_range="000000"
tertiarytextbox_outlinecolor_power="000000"
tertiarytextbox_outlinecolor_speed="000000"
tertiarytextbox_outlinecolor_armor="000000"
tertiarytextbox_outlinecolor_guard="000000"
tertiarytextbox_outlinecolor_effect="000000"
tertiarytextbox_outlinecolor_flavor="000000"
tertiarytextbox_outlinecolor_passive="000000"
tertiarytextbox_outlinecolor_reminder="000000"
tertiarytextbox_outlinecolor_trigger="000000"

tertiarytextbox_outlinewidth_stats="1.2"
tertiarytextbox_outlinewidth_effect="0.6"
tertiarytextbox_outlinewidth_flavor="1"
tertiarytextbox_outlinewidth_passive="0.7"
tertiarytextbox_outlinewidth_reminder="0.6"
tertiarytextbox_outlinewidth_trigger="0.7"

tertiarytextbox_outlinedensity_stats="16"
tertiarytextbox_outlinedensity_effect="32"
tertiarytextbox_outlinedensity_flavor="16"
tertiarytextbox_outlinedensity_passive="16"
tertiarytextbox_outlinedensity_reminder="16"
tertiarytextbox_outlinedensity_trigger="16"

range_value="1~2"
range_StatColor="#000000FF"
range_OutlineColor="#FFFFFFFF"
#range_BlurColor="#000000FF" #00ABEAFF
range_OffsetX="-270"
range_OffsetY="-345"
range_Rotation="_NONE_"
range_PointSize="54"
range_FontFamily="Barlow"
range_FontWeight="Medium"
range_FontStyle="Normal"
range_OutlineWidth="2"
#range_BlurSigma="3"
#range_BlurRadius="_NONE_"
#range_BlurDistance="1"
#range_BlurOpacity="0.3"

power_value="N/A"
power_StatColor="#AA0000FF"
power_OutlineColor="#FFFFFFFF"
#power_BlurColor="#000000FF" #F54137FF
power_OffsetX="-270"
power_OffsetY="-235"
power_Rotation="_NONE_"
power_PointSize="54"
power_FontFamily="Barlow"
power_FontWeight="Medium"
power_FontStyle="Normal"
power_OutlineWidth="2"
#power_BlurSigma="3"
#power_BlurRadius="_NONE_"
#power_BlurDistance="1"
#power_BlurOpacity="0.3"

speed_value="6"
speed_StatColor="#000000FF"
speed_OutlineColor="#FFFFFFFF"
#speed_BlurColor="#000000FF" #FFF5A5FF
speed_OffsetX="-280"
speed_OffsetY="-130"
speed_Rotation="_NONE_"
speed_PointSize="54"
speed_FontFamily="Barlow"
speed_FontWeight="Medium"
speed_FontStyle="Normal"
speed_OutlineWidth="2"
#speed_BlurSigma="3"
#speed_BlurRadius="_NONE_"
#speed_BlurDistance="1"
#speed_BlurOpacity="0.3"

armor_value="3"
armor_StatColor="#000000FF"
armor_OutlineColor="#FFFFFFFF"
#armor_BlurColor="#000000FF" #AE96C3FF
armor_OffsetX="-265"
armor_OffsetY="-45"
armor_Rotation="_NONE_"
armor_PointSize="54"
armor_FontFamily="Barlow"
armor_FontWeight="Medium"
armor_FontStyle="Normal"
armor_OutlineWidth="2"
#armor_BlurSigma="3"
#armor_BlurRadius="_NONE_"
#armor_BlurDistance="1"
#armor_BlurOpacity="0.3"

guard_value="5"
guard_StatColor="#009900FF"
guard_OutlineColor="#FFFFFFFF"
#guard_BlurColor="#000000FF" #39AB55FF
guard_OffsetX="-260"
guard_OffsetY="55"
guard_Rotation="_NONE_"
guard_PointSize="54"
guard_FontFamily="Barlow"
guard_FontWeight="Medium"
guard_FontStyle="Normal"
guard_OutlineWidth="2"
#guard_BlurSigma="3"
#guard_BlurRadius="_NONE_"
#guard_BlurDistance="1"
#guard_BlurOpacity="0.3"

drive_value="_NONE_"
drive_StatColor="#000000FF"
drive_OutlineColor="#FFFFFFFF"
#drive_BlurColor="#000000FF" #39AB55FF
drive_OffsetX="-260"
drive_OffsetY="55"
drive_Rotation="_NONE_"
drive_PointSize="54"
drive_FontFamily="Barlow"
drive_FontWeight="Medium"
drive_FontStyle="Normal"
drive_OutlineWidth="2"
#drive_BlurSigma="3"
#drive_BlurRadius="_NONE_"
#drive_BlurDistance="1"
#drive_BlurOpacity="0.3"

cost_value="1"
cost_StatColor="#FFFFFFFF"
cost_OutlineColor="#000000FF"
cost_OutlineWidth="3"
cost_PointSize="64"
cost_FontFamily="Barlow"
cost_FontWeight="Medium"
cost_FontStyle="Normal"
#cost_BlurColor="#FFFF00FF"
#cost_BlurSigma="3"
#cost_BlurRadius="_NONE_"
#cost_BlurDistance="3"
#cost_BlurOpacity="1.0"
cost_OffsetX="-320"
cost_OffsetY="-445"
cost_Rotation="_NONE_"

secondarycost_value="1"
secondarycost_StatColor="#FFFFFFFF"
secondarycost_OutlineColor="#000000FF"
secondarycost_OutlineWidth="3"
secondarycost_PointSize="64"
secondarycost_FontFamily="Barlow"
secondarycost_FontWeight="Medium"
secondarycost_FontStyle="Normal"
#secondarycost_BlurColor="#DD00DDFF"
#secondarycost_BlurSigma="3"
#secondarycost_BlurRadius="_NONE_"
#secondarycost_BlurDistance="3"
#secondarycost_BlurOpacity="1.0"
secondarycost_OffsetX="-315"
secondarycost_OffsetY="428"
secondarycost_Rotation="_NONE_"

tertiarycost_value="_NONE_"
tertiarycost_StatColor="_NONE_"
tertiarycost_OutlineColor="_NONE_"
tertiarycost_OutlineWidth="_NONE_"
tertiarycost_PointSize="_NONE_"
tertiarycost_FontFamily="_NONE_"
tertiarycost_FontWeight="_NONE_"
tertiarycost_FontStyle="_NONE_"
#tertiarycost_BlurColor="_NONE_"
#tertiarycost_BlurSigma="_NONE_"
#tertiarycost_BlurRadius="_NONE_"
#tertiarycost_BlurDistance="_NONE_"
#tertiarycost_BlurOpacity="_NONE_"
tertiarycost_OffsetX="_NONE_"
tertiarycost_OffsetY="_NONE_"
tertiarycost_Rotation="_NONE_"


## Title

title_value="SHARDFALL"
title_Alignment="NorthWest"
title_StatColor="#FFFFFFFF"
title_OutlineColor="#000000FF"
title_OutlineWidth="3"
title_PointSize="68"
title_FontFamily="WC Mano Negra Bta"
title_FontWeight="Medium"
title_FontStyle="Normal"
#title_BlurColor="#d200fe" # "#d2710b"
#title_BlurSigma="3"
#title_BlurRadius="_NONE_"
#title_BlurDistance="3"
#title_BlurOpacity="1.0"
title_OffsetX="75"
title_OffsetY="33"
title_Rotation="0"


## Subtitle

subtitle_value="(shardfall?)"
subtitle_Alignment="NorthWest"
subtitle_StatColor="#FFFFFFFF"
subtitle_OutlineColor="#000000FF"
subtitle_OutlineWidth="3"
subtitle_PointSize="18"
subtitle_FontFamily="WC Mano Negra Bta"
subtitle_FontWeight="Medium"
subtitle_FontStyle="Normal"
#subtitle_BlurColor="#d200fe" # "#d2710b"
#subtitle_BlurSigma="3"
#subtitle_BlurRadius="_NONE_"
#subtitle_BlurDistance="3"
#subtitle_BlurOpacity="1.0"
subtitle_OffsetX="75"
subtitle_OffsetY="66"
subtitle_Rotation="90"


## Secondary Title

secondarytitle_value="oops almost forgot this"
secondarytitle_Alignment="SouthWest"
secondarytitle_StatColor="#FFFFFFFF"
secondarytitle_OutlineColor="#000000FF"
secondarytitle_OutlineWidth="3"
secondarytitle_PointSize="32"
secondarytitle_FontFamily="Barlow"
secondarytitle_FontWeight="Medium"
secondarytitle_FontStyle="Normal"
#secondarytitle_BlurColor="#d200fe" # "#d2710b"
#secondarytitle_BlurSigma="3"
#secondarytitle_BlurRadius="_NONE_"
#secondarytitle_BlurDistance="3"
#secondarytitle_BlurOpacity="1.0"
secondarytitle_OffsetX="95"
secondarytitle_OffsetY="160"
secondarytitle_Rotation="0"


## Tertiary Title

tertiarytitle_value="_NONE_"
tertiarytitle_Alignment="SouthWest"
tertiarytitle_StatColor="#FFFFFFFF"
tertiarytitle_OutlineColor="#000000FF"
tertiarytitle_OutlineWidth="3"
tertiarytitle_PointSize="32"
tertiarytitle_FontFamily="Barlow"
tertiarytitle_FontWeight="Medium"
tertiarytitle_FontStyle="Normal"
#tertiarytitle_BlurColor="#d200fe" # "#d2710b"
#tertiarytitle_BlurSigma="3"
#tertiarytitle_BlurRadius="_NONE_"
#tertiarytitle_BlurDistance="3"
#tertiarytitle_BlurOpacity="1.0"
tertiarytitle_OffsetX="95"
tertiarytitle_OffsetY="160"
tertiarytitle_Rotation="0"


layer_background=""
layer_frame_over_background=""

layer_art=""
layer_frame="./frames/shards-airship/airship-frame.png"

layer_secondaryframe="./frames/shards-airship/airship-frame-boost.png"
layer_art_over_secondaryframe=""
layer_secondarysubtype_patch="./frames/shards-airship/airship-icon-continuous.png"
layer_art_over_secondarysubtype_patch=""
layer_secondarycost_patch="./frames/shards-airship/airship-icon-boost.png"
layer_art_over_secondarycost_patch=""

layer_tertiaryframe="_NONE_"
layer_art_over_tertiaryframe="_NONE_"
layer_tertiarysubtype_patch="_NONE_"
layer_art_over_tertiarysubtype_patch="_NONE_"
layer_tertiarycost_patch="_NONE_"
layer_art_over_tertiarycost_patch="_NONE_"

layer_armor_patch="./frames/shards-airship/airship-frame-armor.png"
layer_art_over_armor_patch=""
layer_guard_patch="./frames/shards-airship/airship-frame-guard.png"
layer_art_over_guard_patch=""
layer_speed_patch=""
layer_art_over_speed_patch="_NONE_"
layer_power_patch="_NONE_"
layer_art_over_power_patch="_NONE_"
layer_range_patch="_NONE_"
layer_art_over_range_patch="_NONE_"
layer_drive_patch="_NONE_"
layer_art_over_drive_patch="_NONE_"

layer_cost_patch="./frames/shards-airship/airship-icon-forcecost.png"
layer_art_over_cost_patch=""
layer_art_over_title=""
layer_art_over_secondarytitle=""
layer_art_over_all=""

layer_owner_mark_patch_background=""
owner_mark_art=""
owner_mark_OffsetX=""
owner_mark_OffsetY=""
owner_mark_Width=""
owner_mark_Height=""
layer_owner_mark_patch_foreground=""
layer_art_over_owner_mark_patch=""





## jq playground
## DEBUG, TOOD, et cetera
templatestring='{
    "SampleTemplate": {
        "SampleType": {
            "background": {
                "Background": ""
            },
            "stats": {
                "Range": {
                    "StatValue": "N/A"
                },
                "Power": {
                    "StatValue": "N/A",
                    "StatOffsetX": 10
                }
            },
            "textboxes": {
                "Primary": {
                    "TextValue": "Default",
                    "TextBoxType": "Attack",
                    "TextBoxSupportedTypes": {
                        "Attack": {
                            "TextBoxSubtype": "",
                            "TypeSupportedSubtypes": {}
                        }
                    }
                },
                "Secondary": {
                    "TextValue": "Default Untyped",
                    "TextBoxType": "Force Boost",
                    "TextBoxSupportedTypes": {
                        "Force Boost": {
                            "TextBoxSubtype": "Instant",
                            "TypeSupportedSubtypes": {
                                "Continuous": {
                                    "TextValue": "Def Cont"
                                },
                                "Instant": {
                                    "TextValue": "Def Insta"
                                }
                            }
                        }
                    }
                }
            },
            "foreground": {
                "OwnerMark": ""
            }
        }
    }
}'

usercsvstring='Template,CardType,Range,Power,Speed,PrimaryText,SecondaryText,SecondaryType,SecondarySubtype,Background
SampleTemplate,SampleType,2~4,5,,User Attack Text 1,,Force Boost,,
SampleTemplate,SampleType,3,5,,"User Attack Text 2",User C.Boost Text,,Continuous,Sure
SampleTemplate,SampleType,3,5,,"User Attack Text 3",User C.Boost Text,Transformation,Continuous,Nahhh
WrongTemplate,SampleType,2~8,,18,,,,,
SampleTemplate,WrongCardType,"1~7",3,0,,,,,'

echo "csvjson"
# --argfile template templates.json
#csvjson --stream --linenumbers <<< "${usercsvstring}" | jq '.'

#exit

csvjson --linenumbers <<< "${usercsvstring}" \
| jq --argjson template "${templatestring}" '
.[] | if ( .["Template"] | in($template) | not )
    then
        "ERROR: Unsupported Template: " + ( .["Template"] | tostring )
    else
        $template[.["Template"]] as $template |
        if ( .["CardType"] | in($template) | not )
        then
            "ERROR: Unsupported CardType: " + ( .["CardType"] | tostring ) + " in Template: " + ( .["Template"] | tostring )
        else
            $template[.["CardType"]] as $template |
            . as $userdata | {
            "background": (
                if ( "background" | in($template) )
                then
                    $template["background"] | (
                        with_entries(
                            ("Art_Over_" + (.key | tostring) ) as $artoverlay |
                            {"key": .key, "value": ($userdata[.key] // .value) },
                            {"key": $artoverlay, "value": ( $userdata[$artoverlay] // .value ) }
                        )
                    )
                else {}
                end
            ),
            "textboxes": (
                $template["textboxes"] |
                with_entries({
                    "key": .key, "value": ( .key as $textboxkey | .value as $textbox |
                        if ($userdata[($textboxkey | tostring) + "Type"])
                        then
                            if ( $userdata[($textboxkey | tostring) + "Type"] | in($textbox["TextBoxSupportedTypes"]) )
                            then
                                "Type Supported"
                            else
                                "Type Unsupported"
                            end
                        else
                            "null type"
                        end
                    )}
                )
            ),
            "stats": (
                $template["stats"]
            ),
            "foreground": (
                if ( "foreground" | in($template) )
                then
                    $template["foreground"] | (
                        with_entries(
                            ("Art_Over_" + (.key | tostring) ) as $artoverlay |
                            {"key": .key, "value": ($userdata[.key] // .value) },
                            {"key": $artoverlay, "value": ( $userdata[$artoverlay] // .value ) }
                        )
                    )
                else {}
                end
            ),
            "decorations": "TBD"
            }
        end
    end'

echo "done"
exit

## end jq playground
## TODO, DEBUG, etc


#| "background":
#                {
#                     .: ( $userdata[.] // $template["background"][.] )
#                } )


Template="shards_airship"
CardType="Special"

    echo "jqing..."
    ## TODO: all of this
    ## JQ supports if/then/else, while, and until...
    jq --arg template "${Template}" --arg cardtype "${CardType}" --exit-status '.[$template] | .[$cardtype] | empty' templates.json
    if [ $? == 1 ]; then
        ## log an ERROR
        echo "ERROR: Unsupported CardType $CardType in Template $Template" >&2
    else
        ## otherwise...
        ## Loop through the backgroundkeys in $Template/$CardType/background

        jq -r '.["'$Template'"] | .["'$CardType'"] | .["background"] | .[]' templates.json

        ## for each backgroundkey:
        ##   1) retrieve the value as $backgroundlayer
        ##   2) if the userfield $backgroundkey is not empty or undefined, update $backgroundlayer to the userfield $backgroundkey
        ##   3) if $backgroundlayer is not empty or undefined, append $backgroundlayer to the layer stack
    fi
    exit #debug


    declare -A supportedTags
    while IFS= read -r value; do
        supportedTags["$value"]=true
    done < <(jq -r '.supportedTags | to_entries | .[] | .value ' templates.json)

    echo "${supportedTags[*]}"
    exit #debug


    ## Input checking and reformatting

    ## If it looks like a valid hex code (with or without #, 6 to 8 hex digits), reformat it.
    ## Output will be a 6 character uppercase hex code with no leading #.
    format_hexcode_short () {
        local output="${1^^}" # Convert to uppercase
        local pattern='^\#?[0-9A-F]{6,8}$'
        if [[ "$output" =~ $pattern ]]; then
            output=${output#\#}  # Remove leading #, if any
            output=${output:0:6} # Use only first six characters
            echo $output
        else
            echo '000000'
            return 1
        fi
    } # end format_hexcode_short

    ## If it looks like a valid hex code (with or without #, 6 to 8 hex digits), reformat it.
    ## Output will be a leading # followed by a 6 or 8 character uppercase hex code.
    format_hexcode_long () {
        # Convert the input to uppercase.
        local output="${1^^}"

        # Match a 6 to 8 digit string of hex characters, with or without leading #.
        local pattern='^\#?[0-9A-F]{6,8}$'
        if [[ "$output" =~ $pattern ]]; then
            # Remove leading #, if any
            output=${output#\#} 

            # If the provided string has 6 or 7 characters, use only the first 6.
            pattern='^[0-9A-Fa-f]{6,7}$'
            if [[ "$output" =~ $pattern ]]; then
                output=${output:0:6}
            fi
            echo '#'$output
        else
            echo '#000000FF'
            return 1
        fi
    } # end format_hexcode_long


    ## Reformat text content for LaTeX processing.
    # Usage: format_latex_text TEXT critical_icon_path critical_icon_textScaling
    format_latex_text () {
        
        local output="$1"
        local critical_icon="$2"
        local critical_icon_textScaling="$3"

        # . Create a list of all tags found in the file.
        grep --extended-regexp --only-matching --regexp='<[^>]*>' <<<"$output" >"$card_number".tags.txt

        while IFS= read -r line; do
            # Remove trailing >
            local thisTag=${line%>}
            # Remove leading <
            thisTag=${thisTag#<}

            if 
            
            #echo "tag: $thisTag">>"$card_number.tags2.txt"

            echo -e "$output" | \
            sed -e 's/'"$thisTag"
        done < "$card_number.tags.txt"

        exit #DEBUG

        # . Prepend [\effect{]
        output='\effect{'"$output"

        echo -n "$output" | \
        # . Replace ["..."] with [``...'']
            # .a. Replace ["..."] with [``"..."``]
            # .b. Replace ["``] with ['']
            # .c. Replace [``"] with [``]
        sed -e 's/"[^"]*"/``&``/g' -e 's/"``/'"''"'/g' -e 's/``"/``/g' | \

        # . Squeeze multiple linebreaks into single linebreak
        tr -d '\r' | tr -s '\n' | \
        
        # . Replace linebreak with [}\par \effect{]
            ## Thanks to Anthon:
            ## https://unix.stackexchange.com/a/114948
            # .a. Create address [:a]
            # .b. Append (current and) next line to pattern space
            # .c. Except for the last line [$!], branch to new label [ba]
            # .d. Substitute newline [\n] with [}\par \effect{]
        sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/}\\par \\effect{/g' | \

        # . Replace [Critical], except [<Critical>], with:
        #      }\includegraphics[width="$textbox_critical_icon_textScaling"\textwidth]{"$textbox_critical_icon"[Critical]
        #   This closes the preceding format tag, but does not apply the "trigger" format tag. That happens in the next two steps.
        sed -e 's|\([^<]\)\(Critical[^>]\)|\1}\\includegraphics[width='"$critical_icon_textScaling"'\\textwidth]{'"$critical_icon"'}\2|g' | \

        # . Replace [~] with [\textsubscript{\~{}}]
        sed -e 's/~/\\textsubscript{\\~{}}/g' | \
        # . Replace [Advantage] with [}\trigger{Advantage}\effect{]
        sed -e 's/Advantage/}\\trigger{Advantage}\\effect{/g' | \
        # . Replace [Now:] with [}\trigger{Now:}\effect{]
        sed -e 's/Now:/}\\trigger{Now:}\\effect{/g' | \
        # . Replace [Cleanup:] with [}\trigger{Cleanup:}\effect{]
        sed -e 's/Cleanup:/}\\trigger{Cleanup:}\\effect{/g' | \
        # . Replace [After:] with [}\trigger{After:}\effect{]
        sed -e 's/After:/}\\trigger{After:}\\effect{/g' | \
        # . Replace [Hit:] with [}\trigger{Hit:}\effect{]
        sed -e 's/Hit:/}\\trigger{Hit:}\\effect{/g' | \
        # . Replace [Before:] with [}\trigger{Before:}\effect{]
        sed -e 's/Before:/}\\trigger{Before:}\\effect{/g' | \

        # Replace [Critical], except [<Critical>], with [\trigger{Critical}\effect{]
        sed -e 's/\([^<]\)\(Critical\)\([^>]\)/\1\\trigger{\2}\\effect{\3/g' | \

        # Replace [\trigger{Critical}\effect{, }\trigger{] with [\trigger{Critical, ]
        sed -e 's/\\trigger{Critical}\\effect{, }\\trigger{/\\trigger{Critical, /g' | \

        # Replace [<Critical>] with [Critical]
        sed -e 's/[<]Critical[>]/Critical/g' | \

        # . Replace [>] with [}\effect{]
        sed -e 's/>/}\\effect{/g' | \

        # . Replace [<f] with [}\flavor{]
        sed -e 's/<f/}\\flavor{/g' | \
        # . Replace [<b] with [}\passive{]
        sed -e 's/<b/}\\passive{/g' | \
        # . Replace [<i] with [}\reminder{]
        sed -e 's/<i/}\\reminder{/g' | \

        # . Replace [<g] with [}\guard{]
        sed -e 's/<g/}\\guard{/g' | \
        # . Replace [<a] with [}\armor{]
        sed -e 's/<a/}\\armor{/g' | \
        # . Replace [<s] with [}\speed{]
        sed -e 's/<s/}\\speed{/g' | \
        # . Replace [<p] with [}\power{]
        sed -e 's/<p/}\\power{/g' | \
        # . Replace [<r] with [}\range{]
        sed -e 's/<r/}\\range{/g' | \

        # . Replace [<] with [{]
        sed -e 's/</{/g' | \
        # . Remove empty formatting marks.
        sed -e 's/\\effect{}//g'
        # . Close the last brace.
        echo -n '}'
    } # end format_latex_text


    echo -e "${COLOR_LOGIC}$card_number - assembling composite command string for frame elements (preserving aspect ratio)...${COLOR_NONE}"
    ## "xc:Black[750x1024!]" creates a "canvas" to work on, then -transparent "Black" makes it transparent.
    ## I'm sure there's a better way to set a transparent background as the "canvas" we're working on, but I don't know it yet.
    ## The "null:" image is a special marker that separates the destination image list and the source/overlay image list.
    compositeargs=("xc:Black[750x1024!]" "-transparent" "Black" "null:")

    ## This is for cleaning up the temporary files afterward.
    filestoremove=()

    ## All frame elements should be composited with the geometry given as [WIDTHxHEIGHT^^]
    ## WIDTHxHEIGHT^^ ensures that the image fills the available canvas while preserving aspect ratio.
    ## This means that there will be no empty space on the canvas, but frame elements may be cropped.
    ## Items "drawn" onto the card (stats, costs, text) should be scaled/"squished" instead.



    #### Background

    ## Draw layer_background
    if [ ! "$layer_background" == "_NONE_" ] \
    && [ ! -z "$layer_background" ]; then
        if [ -e "$layer_background" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_background[750x1024^^]")
        fi
    fi

    ## Draw layer_frame_over_background
    if [ ! "$layer_frame_over_background" == "_NONE_" ] \
    && [ ! -z "$layer_frame_over_background" ]; then
        if [ -e "$layer_background" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_frame_over_background[750x1024^^]")
        fi
    fi



    #### Art
    ## Draw layer_art
    if [ ! "$layer_art" == "_NONE_" ] \
    && [ ! -z "$layer_art" ]; then
        if [ -e "$layer_art" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art[750x1024^^]")
        fi
    fi



    #### Primary Frame
    ## Draw layer_frame
    if [ ! "$layer_frame" == "_NONE_" ] \
    && [ ! -z "$layer_frame" ]; then
        if [ -e "$layer_frame" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_frame[750x1024^^]")
        fi
    fi


    ## Draw layer_set_icon at layer_set_icon_opacity
    if [ ! "$layer_set_icon" == "_NONE_" ] \
    && [ ! -z "$layer_set_icon" ]; then
        if [ -e "$layer_set_icon" ]; then
            ## Set opacity
            opacitystring=""
            if [ ! "$layer_set_icon_opacity" == "_NONE_" ] \
            && [ ! -z "$layer_set_icon_opacity" ]; then
                echo "$card_number - - - - applying layer_set_icon opacity..."
                compositeargs+=("-channel")
                compositeargs+=("Alpha")
                compositeargs+=("-evaluate")
                compositeargs+=("-Multiply")
                compositeargs+=("$layer_set_icon_opacity")
            fi
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_set_icon[750x1024^^]")

            ## Reset opacity
            if [ ! "$layer_set_icon_opacity" == "_NONE_" ] \
            && [ ! -z "$layer_set_icon_opacity" ]; then
                echo "$card_number - - - - reverting opacity..."
                compositeargs+=("-channel")
                compositeargs+=("All")
            fi
        fi
    fi


    ## Draw layer_art_over_frame
    if [ ! "$layer_art_over_frame" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_frame" ]; then
        if [ -e "$layer_art_over_frame" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_frame[750x1024^^]")
        fi
    fi

    #### Secondary Frame
    ## Draw layer_secondaryframe
    if [ ! "$layer_secondaryframe" == "_NONE_" ] \
    && [ ! -z "$layer_secondaryframe" ]; then
        if [ -e "$layer_secondaryframe" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_secondaryframe[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_secondaryframe
    if [ ! "$layer_art_over_secondaryframe" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_secondaryframe" ]; then
        if [ -e "$layer_art_over_secondaryframe" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_secondaryframe[750x1024^^]")
        fi
    fi

    #### Tertiary Frame
    ## Draw layer_tertiaryframe
    if [ ! "$layer_tertiaryframe" == "_NONE_" ] \
    && [ ! -z "$layer_tertiaryframe" ]; then
        if [ -e "$layer_tertiaryframe" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_tertiaryframe[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_tertiaryframe
    if [ ! "$layer_art_over_tertiaryframe" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_tertiaryframe" ]; then
        if [ -e "$layer_art_over_tertiaryframe" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_tertiaryframe[750x1024^^]")
        fi
    fi

    #### Card Icon (e.g., for Astrals)
    ## Draw layer_icon_patch
    if [ ! "$layer_icon_patch" == "_NONE_" ] \
    && [ ! -z "$layer_icon_patch" ]; then
        if [ -e "$layer_icon_patch" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_icon_patch[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_icon_patch
    if [ ! "$layer_art_over_icon_patch" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_icon_patch" ]; then
        if [ -e "$layer_art_over_icon_patch" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_icon_patch[750x1024^^]")
        fi
    fi

    #### Secondary Subtype
    ## Draw layer_secondarysubtype_patch
    if [ ! "$layer_secondarysubtype_patch" == "_NONE_" ] \
    && [ ! -z "$layer_secondarysubtype_patch" ]; then
        if [ -e "$layer_secondarysubtype_patch" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_secondarysubtype_patch[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_secondarysubtype_patch
    if [ ! "$layer_art_over_secondarysubtype_patch" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_secondarysubtype_patch" ]; then
        if [ -e "$layer_art_over_secondarysubtype_patch" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_secondarysubtype_patch[750x1024^^]")
        fi
    fi



    #### Owner's Mark

    ## Draw layer_owner_mark_patch_background as a frame element
    if [ ! "$layer_owner_mark_patch_background" == "_NONE_" ] \
    && [ ! -z "$layer_owner_mark_patch_background" ]; then
        if [ -e "$layer_owner_mark_patch_background" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_owner_mark_patch_background[750x1024^^]")
        fi
    fi

    ## Draw owner_mark_art
    if [ ! "$owner_mark_art" == "_NONE_" ] \
    && [ ! -z "$owner_mark_art" ]; then
        if [ -e "$owner_mark_art" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("-draw")
            compositeargs+=("translate $owner_mark_OffsetX,$owner_mark_OffsetY image Src-Over 0,0 $owner_mark_Width,$owner_mark_Height '""$owner_mark_art'")
        fi
    fi

    ## Draw layer_owner_mark_patch_foreground as a frame element
    if [ ! "$layer_owner_mark_patch_foreground" == "_NONE_" ] \
    && [ ! -z "$layer_owner_mark_patch_foreground" ]; then
        if [ -e "$layer_owner_mark_patch_foreground" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_owner_mark_patch_foreground[750x1024^^]")
        fi
    fi

    ## Draw layer_art_over_owner_mark_patch
    if [ ! "$layer_art_over_owner_mark_patch" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_owner_mark_patch" ]; then
        if [ -e "$layer_art_over_owner_mark_patch" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_owner_mark_patch[750x1024^^]")
        fi
    fi



    #### Primary Printed Values

    ## Create and draw layer_stats

    ## Create "canvas" file to work on.
    echo -e "${COLOR_MAGIC}$card_number - - creating canvas file for stat layers...${COLOR_NONE}"
    magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "Center" "$card_number.stats.png"

    for statprefix in "title" "subtitle" "secondarytitle" "tertiarytitle" \
        "armor" "guard" "speed" "power" "range" "drive" \
        "cost" "secondarycost" "tertiarycost"; do

        echo -e "${COLOR_LOGIC}$card_number - - checking stat prefix: $statprefix${COLOR_NONE}"

        statvalue="$statprefix""_value"
        statvalue="${!statvalue}"

        if [ ! "$statvalue" == "_NONE_" ] \
        && [ ! -z "$statvalue" ]; then

            echo -e "${COLOR_LOGIC}$card_number - - - creating $statprefix layer...${COLOR_NONE}"
            
            statOffsetX="$statprefix""_OffsetX"
            statOffsetY="$statprefix""_OffsetY"
            statRotation="$statprefix""_Rotation"
            statAlignment="$statprefix""_Alignment"
            statStatColor="$statprefix""_StatColor"
            statOutlineColor="$statprefix""_OutlineColor"
            statOutlineWidth="$statprefix""_OutlineWidth"
            statBlurColor="$statprefix""_BlurColor"
            statBlurDistance="$statprefix""_BlurDistance"
            statBlurSigma="$statprefix""_BlurSigma"
            statBlurRadius="$statprefix""_BlurRadius"
            statBlurOpacity="$statprefix""_BlurOpacity"
            statFontFamily="$statprefix""_FontFamily"
            statFontWeight="$statprefix""_FontWeight"
            statFontStyle="$statprefix""_FontStyle"
            statFontUppercase="$statprefix""_FontUppercase"
            statPointSize="$statprefix""_PointSize"
            layer_stat_patch="layer_""$statprefix""_patch"
            layer_art_over_stat_patch="layer_art_over_""$statprefix""_patch"

            statOffsetX="${!statOffsetX}"
            statOffsetY="${!statOffsetY}"
            statRotation="${!statRotation}"
            statAlignment="${!statAlignment}"
            statOutlineWidth="${!statOutlineWidth}"
            statBlurDistance="${!statBlurDistance}"
            statBlurSigma="${!statBlurSigma}"
            statBlurRadius="${!statBlurRadius}"
            statBlurOpacity="${!statBlurOpacity}"
            statFontFamily="${!statFontFamily}"
            statFontWeight="${!statFontWeight}"
            statFontStyle="${!statFontStyle}"
            statFontUppercase="${!statFontUppercase}"
            statPointSize="${!statPointSize}"
            layer_stat_patch="${!layer_stat_patch}"
            layer_art_over_stat_patch="${!layer_art_over_stat_patch}"

            ## *Color are ImageMagick color entries.
            ## They support a variety of formats, but I am choosing to use 8 digit hex codes with leading #.
            ## The function format_hexcode_long reformats them on the fly.
            statStatColor="$(format_hexcode_long ${!statStatColor})"
            statOutlineColor="$(format_hexcode_long ${!statOutlineColor})"
            statBlurColor="$(format_hexcode_long ${!statBlurColor})"

            if [ "$statAlignment" == "_NONE_" ] \
            || [ -z "$statAlignment" ]; then
                statAlignment="Center"
            fi

            if [ "$statFontCase" == "UPPERCASE" ]; then
                statvalue="${statvalue^}"
            fi

            ## Draw stat blur layer
            if [ ! "$statBlurSigma" == "_NONE_" ] \
            && [ ! -z "$statBlurSigma" ]; then
                echo -e "${COLOR_MAGIC}$card_number - - - - drawing $statprefix blur layer...${COLOR_NONE}"

                if [ ! "$statBlurRadius" == "_NONE_" ] \
                || [ ! -z "$statBlurRadius" ]; then
                    statBlurRadius=`echo "$statBlurSigma"'*'3 | bc`
                fi

                rotationstring=""
                if [ ! "$statRotation" == "_NONE_" ] \
                && [ ! -z "$statRotation" ]; then
                    echo -e "${COLOR_MAGIC}$card_number - - - - - applying rotation...${COLOR_NONE}"
                    rotationstring="rotate $statRotation "
                fi

                offsetX1=`echo "$statOffsetX+$statBlurDistance" | bc`
                offsetX2=`echo "$statOffsetX-$statBlurDistance" | bc`
                offsetY1=`echo "$statOffsetY+$statBlurDistance" | bc`
                offsetY2=`echo "$statOffsetY-$statBlurDistance" | bc`

                magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "$statAlignment" -family "$statFontFamily" -weight "$statFontWeight" -style "$statFontStyle" -pointsize $statPointSize \
                 -fill "$statBlurColor" -draw "translate "$offsetX1","$offsetY1" ${rotationstring}text 0,0 '$statvalue'" \
                 -fill "$statBlurColor" -draw "translate "$offsetX1","$offsetY2" ${rotationstring}text 0,0 '$statvalue'" \
                 -fill "$statBlurColor" -draw "translate "$offsetX2","$offsetY1" ${rotationstring}text 0,0 '$statvalue'" \
                 -fill "$statBlurColor" -draw "translate "$offsetX2","$offsetY2" ${rotationstring}text 0,0 '$statvalue'" \
                 "$card_number.$statprefix.blur.png"

                ## Finalize the stat blur layer so it can be applied later.
                echo -e "${COLOR_MAGIC}$card_number - - - - finalizing $statprefix blur layer...${COLOR_NONE}"
                opacitystring=""
                if [ ! "$statBlurOpacity" == "_NONE_" ] \
                && [ ! -z "$statBlurOpacity" ]; then
                    echo "$card_number - - - - applying $statprefix opacity..."
                    opacitystring="-channel Alpha -evaluate Multiply $statBlurOpacity"
                fi
                magick "$card_number.$statprefix.blur.png" -gaussian-blur "$statBlurRadius"x"$statBlurSigma" $opacitystring "$card_number.$statprefix.blur.png"

                ## Apply stat blur layer.
                echo "$card_number - - - printing $statprefix blur layer..."
                magick "$card_number.stats.png" -draw "image Src-Over 0,0 0,0 '$card_number.$statprefix.blur.png'" "$card_number.stats.png" && rm "$card_number.$statprefix.blur.png"
                [ -e "$card_number.$statprefix.blur.png" ] && echo -e "${COLOR_ERROR}ImageMagick error!${COLOR_NONE}"
            fi

            ## Draw stat outline layer
            if [ ! "$statOutlineWidth" == "_NONE_" ] \
            && [ ! -z "$statOutlineWidth" ]; then
                echo -e "${COLOR_MAGIC}$card_number - - - - printing $statprefix outline layer...${COLOR_NONE}"

                magick "$card_number.stats.png" -gravity "$statAlignment" -family "$statFontFamily" -weight "$statFontWeight" -style "$statFontStyle" -pointsize $statPointSize \
                 -fill "$statStatColor" -stroke $statOutlineColor -strokewidth $statOutlineWidth -draw "translate $statOffsetX,$statOffsetY ${rotationstring}text 0,0 '$statvalue'" \
                 "$card_number.stats.png"
             fi

            ## Draw stat value layer
            echo -e "${COLOR_MAGIC}$card_number - - - - drawing $statprefix...${COLOR_NONE}"
            magick "$card_number.stats.png" -gravity "$statAlignment" -family "$statFontFamily" -weight "$statFontWeight" -style "$statFontStyle" -pointsize $statPointSize \
             -fill "$statStatColor" -draw "translate $statOffsetX,$statOffsetY ${rotationstring}text 0,0 '$statvalue'" \
             "$card_number.stats.png"

            ## Draw layer_stat_patch
            if [ ! "$layer_stat_patch" == "_NONE_" ] \
            && [ ! -z "$layer_stat_patch" ]; then
                if [ -e "$layer_stat_patch" ]; then
                    echo -e "${COLOR_LOGIC}$card_number - - - - preparing element: ${layer_stat_patch}${COLOR_NONE}"
                    compositeargs+=("-gravity")
                    compositeargs+=("Center")
                    compositeargs+=("$layer_stat_patch[750x1024^^]")
                fi
            fi

            ## Draw layer_art_over_stat_patch
            if [ ! "$layer_art_over_stat_patch" == "_NONE_" ] \
            && [ ! -z "$layer_art_over_stat_patch" ]; then
                if [ -e "$layer_art_over_stat_patch" ]; then
                    echo -e "${COLOR_LOGIC}$card_number - - - - preparing element: ${layer_art_over_stat_patch}${COLOR_NONE}"
                    compositeargs+=("-gravity")
                    compositeargs+=("Center")
                    compositeargs+=("$layer_art_over_stat_patch[750x1024^^]")
                fi
            fi

        fi # Finish handling this stat

    done # Finish looping through stats

    echo -e "$card_number - - printing stats layer..."
    compositestring="${compositestring}"' -draw "image Src-Over 0,0 0,0 '"'$card_number.stats.png'"'"'
    compositeargs+=("-draw")
    compositeargs+=("image Src-Over 0,0 0,0 '""$card_number.stats.png'")
    filestoremove+=("$card_number.stats.png")



    echo -e "${COLOR_LOGIC}$card_number - compositing and flattening..."
    #compositestring="${compositestring}"" -layers composite -layers flatten"
    compositeargs+=("-layers")
    compositeargs+=("composite")
    compositeargs+=("-layers")
    compositeargs+=("flatten")



    ## Create and draw layer_title
    if [ ! -z "$titlevalue" ]; then
        echo -e "${COLOR_MAGIC}$card_number - - creating title layer...${COLOR_NONE}"

        ## Create the title canvas.
        magick 'xc:Black[750x1024!]' -transparent "Black" -gravity Center "$card_number.title.png"

        ## title blur
        if [ ! "$titleBlurSigma" == "_NONE_" ] \
        && [ ! -z "$titleBlurSigma" ]; then
            echo -e "${COLOR_MAGIC}$card_number - - - drawing title blur...${COLOR_NONE}"

            if [ ! "$titleBlurRadius" == "_NONE_" ] \
            || [ ! -z "$titleBlurRadius" ]; then
                titleBlurRadius=`echo "$titleBlurSigma"'*'3 | bc`
            fi
            
            ## Create the title blur overlay.
            magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "$titleAlignment" -family "$titleFontFamily" -weight "$titleFontWeight" -style "$titleFontStyle" -pointsize "$titlePointSize" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX + $titleBlurDistance )),$(( $titleOffsetY + $titleBlurDistance )) '$titlevalue'" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX + $titleBlurDistance )),$(( $titleOffsetY - $titleBlurDistance )) '$titlevalue'" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX - $titleBlurDistance )),$(( $titleOffsetY + $titleBlurDistance )) '$titlevalue'" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX - $titleBlurDistance )),$(( $titleOffsetY - $titleBlurDistance )) '$titlevalue'" \
             "$card_number.titleblur.png"

            ## Finalize the title blur layer so it can be applied later.
            echo -e "${COLOR_MAGIC}$card_number - - - finalizing title blur layer...${COLOR_NONE}"
            opacitystring=""
            if [ ! "$titleBlurOpacity" == "_NONE_" ] \
            && [ ! -z "$titleBlurOpacity" ]; then
                echo "$card_number - - - - applying title blur opacity..."
                opacitystring="-channel Alpha -evaluate Multiply $titleBlurOpacity"
            fi
            magick "$card_number.titleblur.png" -gaussian-blur "$titleBlurRadius"x"$titleBlurSigma" $opacitystring "$card_number.titleblur.png"

            echo -e "${COLOR_MAGIC}$card_number - - - printing title blur layer...${COLOR_NONE}"
            magick "$card_number.title.png" -draw "image Src-Over 0,0 0,0 '$card_number.titleblur.png'" "$card_number.title.png"

            rm "$card_number.titleblur.png"
        fi # Finish drawing title blurs.

        ## Create and draw title outline layer
        if [ ! "$titleOutlineWidth" == "_NONE_" ] \
        && [ ! -z "$titleOutlineWidth" ]; then
            echo -e "${COLOR_MAGIC}$card_number - - - drawing title outline layer...${COLOR_NONE}"

            ## Create the title outline layer
            magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "$titleAlignment" -family "$titleFontFamily" -weight "$titleFontWeight" -style "$titleFontStyle" -pointsize $titlePointSize \
             -stroke "$titleOutlineColor" -strokewidth "$titleOutlineWidth" -draw "text $titleOffsetX,$titleOffsetY '$titlevalue'" \
             "$card_number.titleoutline.png"

            echo -e "${COLOR_MAGIC}$card_number - - - printing title outline layer...${COLOR_NONE}"
            magick "$card_number.title.png" -draw "image Src-Over 0,0 0,0 '$card_number.titleoutline.png'" "$card_number.title.png"
            rm "$card_number.titleoutline.png"
        fi # Finish drawing title outline layer.

        echo -e "${COLOR_MAGIC}$card_number - - - drawing title...${COLOR_NONE}"
        magick "$card_number.title.png" -gravity "$titleAlignment" -family "$titleFontFamily" -weight "$titleFontWeight" -style "$titleFontStyle" -pointsize $titlePointSize \
         -fill "$titleTextColor" -draw "text $titleOffsetX,$titleOffsetY '$titlevalue'" \
         "$card_number.title.png"

        echo -e "$card_number - - printing title layer..."
        compositestring="${compositestring}"' -draw "image Src-Over 0,0 0,0 '"'$card_number.title.png'"'"'
        compositeargs+=("-draw")
        compositeargs+=("image Src-Over 0,0 0,0 '""$card_number.title.png'")
        filestoremove+=("$card_number.title.png")

    fi # Finish layer_title

    ## Draw layer_art_over_title
    if [ ! "$layer_art_over_title" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_title" ]; then
        if [ -e "$layer_art_over_title" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_title[750x1024^^]")
        fi
    fi



    ## Create and draw layer_textbox
    echo "$card_number - - drawing text elements (squeezing to fit)..."

    ## Create text boxes
    for textprefix in "textbox" "secondarytextbox" "tertiarytextbox"; do

        textvalue="$textprefix""_textvalue"
        textvalue="${!textvalue}"

        if [ ! "$textvalue" == "_NONE_" ] \
        && [ ! -z "$textvalue" ]; then

            echo -e "${COLOR_LOGIC}$card_number - creating text area: $textprefix${COLOR_NONE}"
 
            ## Use variable indirection to set the contents of the variables based on which text section we're working on.

            textTextWidth="$textprefix""_textTextWidth"
            textTextHeight="$textprefix""_textTextHeight"
            textOffsetX="$textprefix""_textOffsetX"
            textOffsetY="$textprefix""_textOffsetY"
            textRotation="$textprefix""_textRotation"
            textBlurSigma="$textprefix""_textBlurSigma"
            textBlurRadius="$textprefix""_textBlurRadius"
            textBlurDistance="$textprefix""_textBlurDistance"
            textBlurOpacity="$textprefix""_textBlurOpacity"

            font="$textprefix""_font"
            paragraphspacing="$textprefix""_paragraphspacing"

            critical_icon_file="$textprefix""_critical_icon_file"
            critical_icon_textScaling="$textprefix""_critical_icon_textScaling"
            critical_icon_width="$textprefix""_critical_icon_width"
            critical_icon_height="$textprefix""_critical_icon_height"

            textcolor_range="$textprefix""_textcolor_range"
            textcolor_power="$textprefix""_textcolor_power"
            textcolor_speed="$textprefix""_textcolor_speed"
            textcolor_armor="$textprefix""_textcolor_armor"
            textcolor_guard="$textprefix""_textcolor_guard"
            textcolor_effect="$textprefix""_textcolor_effect"
            textcolor_flavor="$textprefix""_textcolor_flavor"
            textcolor_passive="$textprefix""_textcolor_passive"
            textcolor_reminder="$textprefix""_textcolor_reminder"
            textcolor_trigger="$textprefix""_textcolor_trigger"

            outlinecolor_range="$textprefix""_outlinecolor_range"
            outlinecolor_power="$textprefix""_outlinecolor_power"
            outlinecolor_speed="$textprefix""_outlinecolor_speed"
            outlinecolor_armor="$textprefix""_outlinecolor_armor"
            outlinecolor_guard="$textprefix""_outlinecolor_guard"
            outlinecolor_effect="$textprefix""_outlinecolor_effect"
            outlinecolor_flavor="$textprefix""_outlinecolor_flavor"
            outlinecolor_passive="$textprefix""_outlinecolor_passive"
            outlinecolor_reminder="$textprefix""_outlinecolor_reminder"
            outlinecolor_trigger="$textprefix""_outlinecolor_trigger"

            outlinewidth_stats="$textprefix""_outlinewidth_stats"
            outlinewidth_effect="$textprefix""_outlinewidth_effect"
            outlinewidth_flavor="$textprefix""_outlinewidth_flavor"
            outlinewidth_passive="$textprefix""_outlinewidth_passive"
            outlinewidth_reminder="$textprefix""_outlinewidth_reminder"
            outlinewidth_trigger="$textprefix""_outlinewidth_trigger"

            outlinedensity_stats="$textprefix""_outlinedensity_stats"
            outlinedensity_effect="$textprefix""_outlinedensity_effect"
            outlinedensity_flavor="$textprefix""_outlinedensity_flavor"
            outlinedensity_passive="$textprefix""_outlinedensity_passive"
            outlinedensity_reminder="$textprefix""_outlinedensity_reminder"
            outlinedensity_trigger="$textprefix""_outlinedensity_trigger"

            ## Text variables

            textTextWidth="${!textTextWidth}"
            textTextHeight="${!textTextHeight}"
            textOffsetX="${!textOffsetX}"
            textOffsetY="${!textOffsetY}"
            textRotation="${!textRotation}"
            textBlurSigma="${!textBlurSigma}"
            textBlurRadius="${!textBlurRadius}"
            textBlurDistance="${!textBlurDistance}"
            textBlurOpacity="${!textBlurOpacity}"

            font="${!font}"
            paragraphspacing="${!paragraphspacing}"

            critical_icon_file="${!critical_icon_file}"
            critical_icon_textScaling="${!critical_icon_textScaling}"
            critical_icon_width="${!critical_icon_width}"
            critical_icon_height="${!critical_icon_height}"

            textcolor_range="${!textcolor_range}"
            textcolor_power="${!textcolor_power}"
            textcolor_speed="${!textcolor_speed}"
            textcolor_armor="${!textcolor_armor}"
            textcolor_guard="${!textcolor_guard}"
            textcolor_effect="${!textcolor_effect}"
            textcolor_flavor="${!textcolor_flavor}"
            textcolor_passive="${!textcolor_passive}"
            textcolor_reminder="${!textcolor_reminder}"
            textcolor_trigger="${!textcolor_trigger}"

            outlinecolor_range="${!outlinecolor_range}"
            outlinecolor_power="${!outlinecolor_power}"
            outlinecolor_speed="${!outlinecolor_speed}"
            outlinecolor_armor="${!outlinecolor_armor}"
            outlinecolor_guard="${!outlinecolor_guard}"
            outlinecolor_effect="${!outlinecolor_effect}"
            outlinecolor_flavor="${!outlinecolor_flavor}"
            outlinecolor_passive="${!outlinecolor_passive}"
            outlinecolor_reminder="${!outlinecolor_reminder}"
            outlinecolor_trigger="${!outlinecolor_trigger}"

            outlinewidth_stats="${!outlinewidth_stats}"
            outlinewidth_effect="${!outlinewidth_effect}"
            outlinewidth_flavor="${!outlinewidth_flavor}"
            outlinewidth_passive="${!outlinewidth_passive}"
            outlinewidth_reminder="${!outlinewidth_reminder}"
            outlinewidth_trigger="${!outlinewidth_trigger}"

            outlinedensity_stats="${!outlinedensity_stats}"
            outlinedensity_effect="${!outlinedensity_effect}"
            outlinedensity_flavor="${!outlinedensity_flavor}"
            outlinedensity_passive="${!outlinedensity_passive}"
            outlinedensity_reminder="${!outlinedensity_reminder}"
            outlinedensity_trigger="${!outlinedensity_trigger}"



            ## (TODO: this)
            ## When processing a text block, BEFORE drawing the text:
            ## Check the Type (e.g., Force Boost). If the Type is supported...
            ## 1) ...check for a Type Frame Patch. If there is one...
            ## -- A. ...add it to the layer stack, then...
            ## -- B. ...check for a user-supplied value labeled art_over_<X>_typepatch, where X is the name of the text block. If there is one...
            ## -- -- ...add it to the layer stack.
            ## 2) Then, check the Subtype (e.g., Instant). If the Subtype is supported...
            ## -- A. ...check for a Subtype Frame Patch. If there is one...
            ## -- -- i  ...add it to the layer stack, then...
            ## -- -- ii check for a user-supplied value labeled art_over_<X>_subtypepatch, where X is the name of the text block. If there is one...
            ## -- -- -- -- ...add it to the layer stack.




            ## Theoretically, the critical icon file path should be specified in the template.
            ## The logic which passes template information to this script is where default values are handled.
            ## However, this particular value will break "invisibly", so an extra check has been added.

            ## Validate Critical icon image format.
            if [ ! "$critical_icon_file" == "_NONE_" ] \
            && [ ! -z "$critical_icon_file" ]; then
                echo -e "${COLOR_LOGIC}$card_number - - validating critical icon...${COLOR_NONE}"

                critical_icon_filetype=`file --brief --mime "$critical_icon_file"`

                if [ "$critical_icon_width" == "_NONE_" ] \
                || [ -z "$critical_icon_width" ]; then
                    critical_icon_width="150"
                fi

                if [ "$critical_icon_height" == "_NONE_" ] \
                || [ -z "$critical_icon_height" ]; then
                    critical_icon_height="150"
                fi

                filetypecheck=false
                grep -q -e "png\|jpeg\|pdf" <<<"$critical_icon_filetype" && filetypecheck=true

                ## If it doesn't look like an image format LaTeX will support, convert it.
                if [ $filetypecheck == false ]; then

                    echo -e "${COLOR_MAGIC}$card_number - - - converting critical icon...${COLOR_NONE}"
                    magick convert -background "None" "$critical_icon_file" -resize "$critical_icon_width"x"$critical_icon_height" "$card_number"_"$textprefix""_critical_icon.png"
                    
                    critical_icon_file="$card_number"_"$textprefix""_critical_icon.png"
                    filestoremove+=("$critical_icon_file")
                fi
            else
                echo -e "${COLOR_WARNING}warning: critical icon missing${COLOR_NONE}"
                ## Create an empty image.
                magick 'xc:Black[50x50!]' -transparent "Black" -gravity Center "$card_number.critical_icon.png"
                critical_icon_file="$card_number.critical_icon.png"
                filestoremove+=("$critical_icon_file")
            fi


            ## *_textcolor_* are LaTeX color entries.
            ## The code that applies them to the file assumes they are SIX DIGIT HEX CODES, no leading #.
            ## The function format_hexcode_short reformats them accordingly.

            echo -e "${COLOR_LOGIC}$card_number - formatting textcolors...${COLOR_NONE}"

            if [ ! "$textcolor_effect" == "_NONE_" ] \
            && [ ! -z "$textcolor_effect" ]; then
                textcolor_effect=$(format_hexcode_short "$textcolor_effect")
            else
                textcolor_effect="000000"; fi

            if [ ! "$textcolor_passive" == "_NONE_" ] \
            && [ ! -z "$textcolor_passive" ]; then
                textcolor_passive=$(format_hexcode_short "$textcolor_passive")
            else
                textcolor_passive="$textcolor_effect"; fi

            if [ ! "$textcolor_reminder" == "_NONE_" ] \
            && [ ! -z "$textcolor_reminder" ]; then
                textcolor_reminder=$(format_hexcode_short "$textcolor_reminder")
            else
                textcolor_reminder="$textcolor_effect"; fi

            if [ ! "$textcolor_trigger" == "_NONE_" ] \
            && [ ! -z "$textcolor_trigger" ]; then
                textcolor_trigger=$(format_hexcode_short "$textcolor_trigger")
            else
                textcolor_trigger="$textcolor_effect"; fi

            if [ ! "$textcolor_flavor" == "_NONE_" ] \
            && [ ! -z "$textcolor_flavor" ]; then
                textcolor_flavor=$(format_hexcode_short "$textcolor_flavor")
            else
                textcolor_flavor="$textcolor_effect"; fi

            if [ ! "$textcolor_range" == "_NONE_" ] \
            && [ ! -z "$textcolor_range" ]; then
                textcolor_range=$(format_hexcode_short "$textcolor_range")
            else
                textcolor_range="$textcolor_effect"; fi

            if [ ! "$textcolor_power" == "_NONE_" ] \
            && [ ! -z "$textcolor_power" ]; then
                textcolor_power=$(format_hexcode_short "$textcolor_power")
            else
                textcolor_power="$textcolor_effect"; fi

            if [ ! "$textcolor_speed" == "_NONE_" ] \
            && [ ! -z "$textcolor_speed" ]; then
                textcolor_speed=$(format_hexcode_short "$textcolor_speed")
            else
                textcolor_speed="$textcolor_effect"; fi

            if [ ! "$textcolor_armor" == "_NONE_" ] \
            && [ ! -z "$textcolor_armor" ]; then
                textcolor_armor=$(format_hexcode_short "$textcolor_armor")
            else
                textcolor_armor="$textcolor_effect"; fi

            if [ ! "$textcolor_guard" == "_NONE_" ] \
            && [ ! -z "$textcolor_guard" ]; then
                textcolor_guard=$(format_hexcode_short "$textcolor_guard")
            else
                textcolor_guard="$textcolor_effect"; fi

            ##############################################################
            ## Construct the actual LaTeX files from the formatted values.

            ## textvalue is processed by LaTeX.
            ## The formatting specification provided to the user should be as follows:
            ##
            ## If you've written in HTML before, the concept of "tags" will be familiar.
            ## If not, don't panic! The idea is simple.
            ## We're going to enclose pieces of the text in "tags" which tell the card generator how to format that text.
            ##
            ## For example, to format the text "+0~2 Range" properly (bold and blue, with an outline), you'd do this:
            ##    <range>+0~2 Range</>
            ##
            ## The opening tag is the "greater than" symbol, a valid tag, and the "less than" symbol:
            ##    <range>
            ##
            ## The closing tag is the "greater than" symbol, a forward slash, and the "less than" symbol:
            ##    </>
            ##
            ## You might notice that the closing tag does not specify which tag it's closing.
            ## This is because tags "nest". The closing tag always applies to the most recent opening tag.
            ##
            ## In the following example, the <passive> tag would apply to all the text NOT enclosed in the <range> tags:
            ##    <passive><range>+0~1 Range</> if the opponent initiated this Strike.</>
            ##             <range>^^^^^^^^^^</>
            ##    <passive>                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^</>
            ##
            ## Here's a list of all the supported tags:
            ##
            ##                             | bold  | italic |
            ##   <flavor> = flavor text    |  yes  |  yes   |
            ##  <passive> = passive effect |  yes  |        |
            ## <reminder> = reminder text  |       |  yes   |
            ##     <stat> = stat text      |  yes  |        |
            ##
            ## The exact behavior of any given tag depends on the template specifications.
            ##
            ## You do NOT need to create a tag around the following:
            ##    Before:
            ##    Hit:
            ##    After:
            ##    Cleanup:
            ##    Now:
            ##    Overdrive:
            ##    Advantage
            ##    Critical *
            ##
            ## Those will be automatically detected and bolded.
            ## * If you want to type "Critical" WITHOUT automatic formatting (e.g., in flavor text), type "<Critical>" instead.

            echo -e "${COLOR_LOGIC}$card_number - formatting text...${COLOR_NONE}"
            textvalue=$(format_latex_text "$textvalue" "$critical_icon_file" "$critical_icon_textScaling")
            exit #DEBUG

            latex_preparagraphspacing='\documentclass{memoir}

% Enables graphics.
\usepackage{graphicx}
\usepackage{float}
\usepackage{wrapfig}
% \graphicspath{ {./frames/shards-airship/} }

% \usepackage{graphicx}
% \graphicspath{ {'"$symbols_path"'} }

% Sets the indentation of new paragraphs.
\setlength{\parindent}{0in}

% Sets the distance between paragraphs.
\setlength{\parskip}{'

            latex_prefont='pt}

% Adjusts the distance between lines by appling a multiplier to its previous value.
\renewcommand{\baselinestretch}{0.9}

% "headsep" is the gap between the header and the text block, but it must be encompassed within the margin.
% Since we are setting the margins to 0, it must also be set to 0.
\usepackage[headsep={0in}]{geometry}

% Set the size of the "stock", which is similar to a "canvas", in the generated document.
% Height, then width, for some reason.
\setstocksize{3in}{5in}

% Set the size of the page after trimming.
% Trims of 0 mean the page is exactly the same size of the "stock".
%\settrims{0pt}{0pt}
\settrimmedsize{\stockheight}{\stockwidth}{*}

% Set the size of the typeblock (text block).
\settypeblocksize{2.8in}{3in}{*}

% Set the size of the "page" being printed on the "canvas".
% Height, then width, for some reason.
\setpagecc{3in}{5in}{*}

% Set the margins between the text block and the edges of the "page".
\setlrmargins{1in}{*}{*}
\setulmargins{0.1in}{*}{*}

% Set the size of the header and footer.
\setheadfoot{0in}{0in}
\setlength{\footskip}{0in}
\setlength{\lowermargin}{0.1in}

% Necessary to apply the layout settings specified above.
\checkandfixthelayout

% Enable adjustbox functionality to let the text area scale if needed.
\usepackage{adjustbox}

% Enable colored text.
\usepackage{xcolor}

% Enable text outlines and set width.
\usepackage{contour}
\contourlength{1.5pt}

% Prevent page numbers.
\pagenumbering{gobble}

% Set font.
\usepackage[sfdefault]{'

            latex_preformats='% This sets up automatic line breaks to apply before the contour package applies its formatting.
\usepackage{xparse}'

            latex_predocument='\clubpenalty = 10000
\widowpenalty = 10000

\begin{document}

%\begin{changemargin}{1in}{1in}
{\csname @flushglue\endcsname=0pt plus .5\textwidth

% Center the text block.
\begin{vplace}
\begin{wrapfigure}{l}{1\textwidth}
\begin{center}

% Text content below.
'

            ## Create contour format definitions.

            latex_contours='

\newcommand{\contourflavor}{%
  \contourlength{'"$outlinewidth_flavor"'pt}%
  \contournumber{'"$outlinedensity_flavor"'}%
 }
\newcommand{\contourstats}{%
  \contourlength{'"$outlinewidth_stats"'pt}%
  \contournumber{'"$outlinedensity_stats"'}%
 }
\newcommand{\contoureffect}{%
  \contourlength{'"$outlinewidth_effect"'pt}%
  \contournumber{'"$outlinedensity_effect"'}%
 }
\newcommand{\contourpassive}{%
  \contourlength{'"$outlinewidth_passive"'pt}%
  \contournumber{'"$outlinedensity_passive"'}%
 }'

            ## Set format definitions for latex_formats
            echo -e "${COLOR_LATEX}$card_number - creating LaTeX color formats...${COLOR_NONE}"

            latex_formatstring_range="bold"
            latex_formatstring_power="bold"
            latex_formatstring_speed="bold"
            latex_formatstring_armor="bold"
            latex_formatstring_guard="bold"
            latex_formatstring_effect=""
            latex_formatstring_flavor="bold italic"
            latex_formatstring_passive="bold"
            latex_formatstring_reminder="italic"
            latex_formatstring_trigger="bold"

            ## Set latex_outlinecolors
            latex_outlinecolors=""

            if [ ! "$outlinecolor_range" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_range" ]; then
                outlinecolor_range=$(format_hexcode_short "$outlinecolor_range")
                latex_formatstring_range="$latex_formatstring_range"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorrange}{HTML}{'"$outlinecolor_range"'}
                '; fi
            if [ ! "$outlinecolor_power" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_power" ]; then
                outlinecolor_power=$(format_hexcode_short "$outlinecolor_power")
                latex_formatstring_power="$latex_formatstring_power"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorpower}{HTML}{'"$outlinecolor_power"'}
                '; fi
            if [ ! "$outlinecolor_speed" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_speed" ]; then
                outlinecolor_speed=$(format_hexcode_short "$outlinecolor_speed")
                latex_formatstring_speed="$latex_formatstring_speed"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorspeed}{HTML}{'"$outlinecolor_speed"'}
                '; fi
            if [ ! "$outlinecolor_armor" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_armor" ]; then
                outlinecolor_armor=$(format_hexcode_short "$outlinecolor_armor")
                latex_formatstring_armor="$latex_formatstring_armor"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorarmor}{HTML}{'"$outlinecolor_armor"'}
                '; fi
            if [ ! "$outlinecolor_guard" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_guard" ]; then
                outlinecolor_guard=$(format_hexcode_short "$outlinecolor_guard")
                latex_formatstring_guard="$latex_formatstring_guard"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorguard}{HTML}{'"$outlinecolor_guard"'}
                '; fi
            if [ ! "$outlinecolor_effect" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_effect" ]; then
                outlinecolor_effect=$(format_hexcode_short "$outlinecolor_effect")
                latex_formatstring_effect="$latex_formatstring_effect"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecoloreffect}{HTML}{'"$outlinecolor_effect"'}
                '; fi
            if [ ! "$outlinecolor_flavor" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_flavor" ]; then
                outlinecolor_flavor=$(format_hexcode_short "$outlinecolor_flavor")
                latex_formatstring_flavor="$latex_formatstring_flavor"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorflavor}{HTML}{'"$outlinecolor_flavor"'}
                '; fi
            if [ ! "$outlinecolor_passive" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_passive" ]; then
                outlinecolor_passive=$(format_hexcode_short "$outlinecolor_passive")
                latex_formatstring_passive="$latex_formatstring_passive"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorpassive}{HTML}{'"$outlinecolor_passive"'}
                '; fi
            if [ ! "$outlinecolor_reminder" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_reminder" ]; then
                outlinecolor_reminder=$(format_hexcode_short "$outlinecolor_reminder")
                latex_formatstring_reminder="$latex_formatstring_reminder"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorreminder}{HTML}{'"$outlinecolor_reminder"'}
                '; fi
            if [ ! "$outlinecolor_trigger" == "_NONE_" ] \
            && [ ! -z "$outlinecolor_trigger" ]; then
                outlinecolor_trigger=$(format_hexcode_short "$outlinecolor_trigger")
                latex_formatstring_trigger="$latex_formatstring_trigger"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolortrigger}{HTML}{'"$outlinecolor_trigger"'}
                '; fi


            ## Set latex_textcolors
            latex_textcolors='
            '"$latex_textcolors"'\definecolor{textcoloreffect}{HTML}{'"$textcolor_effect"'}
        \definecolor{textcolorflavor}{HTML}{'"$textcolor_flavor"'}
        \definecolor{textcolorpassive}{HTML}{'"$textcolor_passive"'}
        \definecolor{textcolorreminder}{HTML}{'"$textcolor_reminder"'}
        \definecolor{textcolortrigger}{HTML}{'"$textcolor_trigger"'}
        \definecolor{textcolorrange}{HTML}{'"$textcolor_range"'}
        \definecolor{textcolorpower}{HTML}{'"$textcolor_power"'}
        \definecolor{textcolorspeed}{HTML}{'"$textcolor_speed"'}
        \definecolor{textcolorarmor}{HTML}{'"$textcolor_armor"'}
        \definecolor{textcolorguard}{HTML}{'"$textcolor_guard"'}
        '


            ## This function creates the NewDocumentCommand sections.
            # Usage: create_latex_command_string [formatname] [bold] [italic] [color] [outline]
            create_latex_command_string () {

                # First argument is the name of the format.
                local formatname="$1"

                # All embedded stats use the same outline width and density.
                local contourtype="$formatname"
                if [ "$formatname" == "range" ] \
                || [ "$formatname" == "power" ] \
                || [ "$formatname" == "speed" ] \
                || [ "$formatname" == "armor" ] \
                || [ "$formatname" == "guard" ]; then
                    contourtype="stats"
                elif [ "$formatname" == "reminder" ] \
                || [ "$formatname" == "trigger" ]; then
                    contourtype="effect"
                fi
                shift

                # Begin constructing output string.
                local output='##1'

                # If any of the remaining text includes "italic", text is italicized.
                grep -q -e "italic" <<< "$*" && output='\textit{'"$output"'}'

                # If any of the remaining text includes "bold", text is bolded.
                grep -q -e "bold" <<< "$*" && output='\textbf{'"$output"'}'

                # Text is always colored.
                output='\textcolor{textcolor'"$formatname"'}{'"$output"'}'

                # If any of the remaining text includes "outline", text is outlined.
                grep -q -e "outline" <<< "$*" && output='\contour'"$contourtype"' \contour{outlinecolor'"$formatname"'}{'"$output"'}'

                # Wrap it up.
                output='\NewDocumentCommand{\'"$formatname"'}{m}
     {
      \seq_set_split:Nnn \l_tmpa_seq { ~ } { #1 }
      \seq_map_inline:Nn \l_tmpa_seq { '"$output"' ~ }  \unskip
     }'
                echo "$output"
            } # end create_latex_command_string

            latex_formats='
\ExplSyntaxOn
'$(create_latex_command_string "range" "$latex_formatstring_range")'
'$(create_latex_command_string "power" "$latex_formatstring_power")'
'$(create_latex_command_string "speed" "$latex_formatstring_speed")'
'$(create_latex_command_string "armor" "$latex_formatstring_armor")'
'$(create_latex_command_string "guard" "$latex_formatstring_guard")'
'$(create_latex_command_string "effect" "$latex_formatstring_effect")'
'$(create_latex_command_string "flavor" "$latex_formatstring_flavor")'
'$(create_latex_command_string "passive" "$latex_formatstring_passive")'
'$(create_latex_command_string "reminder" "$latex_formatstring_reminder")'
'$(create_latex_command_string "trigger" "$latex_formatstring_trigger")'
\ExplSyntaxOff
'


            ## Finalize file contents.
            latex_text="$latex_preparagraphspacing""$paragraphspacing""$latex_prefont""$font"'}
'"$latex_contours"'
'"$latex_outlinecolors""$latex_textcolors""$latex_preformats"'
'"$latex_formats""$latex_predocument"''"$textvalue"'
\end{center}
\end{wrapfigure}
\end{vplace}
}

\end{document}'

            ## Finish construction of LaTeX file.
            ##############################################################

            echo "$latex_text" > "$card_number.$textprefix.tex"

            echo -e "${COLOR_LATEX}$card_number - TeXing $textprefix...${COLOR_NONE}"
            pdflatex -halt-on-error "$card_number.$textprefix.tex" > "$card_number.latex.$textprefix.log"

            echo -e "$card_number - editing..."

            ## Resize the text PDF for placement on the page.
            if [ ! -e "$card_number.$textprefix.pdf" ]; then
                echo -e "${COLOR_ERROR}LaTeX error!${COLOR_NONE}"
            else
                filestoremove+=("$card_number.$textprefix.tex")

                echo -e "${COLOR_MAGIC}$card_number - - drawing $textprefix box...${COLOR_NONE}"
                magick -density 300 "$card_number.$textprefix.pdf" -gravity Center -resize "$(( $textTextWidth * 5 ))x$(( $textTextHeight * 5 ))" \
                 -trim -resize "$textTextWidth"x"$textTextHeight"">" "$card_number.$textprefix.png"
                
                if [ ! -e "$card_number.$textprefix.png" ]; then
                    echo -e "${COLOR_ERROR}LaTeX / ImageMagick error!${COLOR_NONE}"
                else
                    filestoremove+=("$card_number.$textprefix.pdf")

                    ## Text blur
                    if [ ! "$textBlurSigma" == "_NONE_" ] \
                    && [ ! -z "$textBlurSigma" ]; then
                        echo -e "${COLOR_MAGIC}$card_number - - - drawing $textprefix blur...${COLOR_NONE}"

                        if [ ! "$textBlurRadius" == "_NONE_" ] \
                        || [ ! -z "$textBlurRadius" ]; then
                            textBlurRadius=`echo "$textBlurSigma"'*'3 | bc`
                        fi

                        ## Set distance variables (which are not necessarily integers).

                        offsetX1=`echo "0+$textBlurDistance" | bc`
                        offsetX2=`echo "0-$textBlurDistance" | bc`
                        offsetY1=`echo "0+$textBlurDistance" | bc`
                        offsetY2=`echo "0-$textBlurDistance" | bc`

                        ## Create the text blur overlay.

                        magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "Center" \
                         -draw "translate "$offsetX1","$offsetY1" image Src-Over 0,0 0,0 '$card_number.$textprefix.png'" \
                         -draw "translate "$offsetX1","$offsetY2" image Src-Over 0,0 0,0 '$card_number.$textprefix.png'" \
                         -draw "translate "$offsetX2","$offsetY1" image Src-Over 0,0 0,0 '$card_number.$textprefix.png'" \
                         -draw "translate "$offsetX2","$offsetY2" image Src-Over 0,0 0,0 '$card_number.$textprefix.png'" \
                         "$card_number.$textprefix.blur.png"
                        filestoremove+=("$card_number.$textprefix.blur.png")
                        
                        ## Finalize the text blur layer so it can be applied later.
                        echo -e "${COLOR_MAGIC}$card_number - - - finalizing text blur layer...${COLOR_NONE}"
                        opacitystring=""
                        if [ ! "$textBlurOpacity" == "_NONE_" ] \
                        && [ ! -z "$textBlurOpacity" ]; then
                            echo "$card_number - - - - applying text blur opacity..."
                            opacitystring="-channel Alpha -evaluate Multiply $textBlurOpacity"
                        fi
                        
                        ## Combine the text blurs and the image.
                        echo -e "${COLOR_MAGIC}$card_number - - - combining text blurs with text...${COLOR_NONE}"
                        magick "$card_number.$textprefix.blur.png" -gravity "Center" \
                         -gaussian-blur "$textBlurRadius"x"$textBlurSigma" $opacitystring \
                         -draw "image Src-Over 0,0 0,0 '$card_number.$textprefix.png'" \
                         -trim "$card_number.$textprefix.png"
                    fi # Finish drawing text blurs.

                    if [ ! "$textRotation" == "_NONE_" ] \
                    && [ ! -z "$textRotation" ]; then
                        echo -e "${COLOR_MAGIC}$card_number - - - applying rotation...${COLOR_NONE}"
                        magick "$card_number.$textprefix.png" -rotate "$textRotation" "$card_number.$textprefix.png"
                    fi

                    echo -e "${COLOR_MAGIC}$card_number - - - printing $textprefix layer...${COLOR_NONE}"

                    compositeargs+=("-draw")
                    compositeargs+=("translate $textOffsetX,$textOffsetY image Src-Over 0,0 0,0 '""$card_number.$textprefix.png'")
                    filestoremove+=("$card_number.$textprefix.png")
                fi

            fi # Finish creating text area image

        fi # Finish construction of text box.

        ## Move the log files out of the way
        [ -e "$card_number.latex.$textprefix.log" ] && mv "$card_number.latex.$textprefix.log" logs/

    done # Finish looping through text areas.



    ## Draw layer_art_over_all
    if [ ! "$layer_art_over_all" == "_NONE_" ] \
    && [ ! -z "$layer_art_over_all" ]; then
        if [ -e "$layer_art_over_all" ]; then
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_all[750x1024^^]")
        fi
    fi



    echo -e "${COLOR_WARNING}$card_number - drawing...${COLOR_NONE}"

    compositeargs+=("$card_number.draw.png")

    magick "${compositeargs[@]}"

    for filetoremove in ${filestoremove[@]}; do
        rm "${filetoremove}"
    done




    ##--------------------------------------------------------------------

    #echo "$card_number - - drawing..."
    ## This one does the same thing, but instead of compositing overlays it draws them on top of the original.
    ## Notably, resizing via "-draw" does NOT preserve aspect ratio. Instead, it "squeezes" the image being drawn.
    #magick "xc:Black[750x1024!]" -transparent "black" \
    # -gravity Center -draw "image Src-Over 0,0 750,1024 'FRAME-BACKGROUND'" \
    # -gravity Center -draw "image Src-Over 0,0 750,1024 'FRAME-BOOST'" \
    # -gravity Center -draw "image Src-Over 0,400 0,0 'fullbottom-$card_number.png'" \
    # -gravity Center -draw "image Src-Over 0,200 0,0 'fullbody-$card_number.png'" \
    # "$card_number.draw.png"

    echo -e "${COLOR_WARNING}$card_number - done processing${COLOR_NONE}"
    mv $card_number.*.log logs/
    mv $card_number.*.aux logs/