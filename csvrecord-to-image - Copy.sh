##echo "parsing"
echo "---------------------"
echo "     cardname: $1"
echo "      textbox: $2"
echo "        owner: $3"
echo "       copies: $4"
echo "     cardtype: $5"

#cardname=$1
#textbox=$2
#owner=$3
#copies=$4
#cardtype=$5
#textboxwidth
#textboxheight

## If the primary text area has contents...
#if [ "$textbox" != "NONE" ]; then
#    if [ "$textboxwidth" == "NONE" ]; then
#        textboxwidth=2340
#    fi
#    if [ "$textboxheight" == "NONE" ]; then
#        textboxheight=660
#    fi
#    ## Resize the primary text PDF for placement on the page.
#    magick -density 300 "fullbody-$i.pdf" -gravity Center -resize '2340x660' -trim -resize '520x147>' -repage 750x1024 "fullbody-$i.png"
#fi

## Resize the secondary text PDF for placement on the page.
#magick -density 300 "fullbottom-$i.pdf" -gravity Center -resize '2412x594' -trim -resize '536x132>' -repage 750x1024 "fullbottom-$i.png"
#rm "fullbottom-$i.pdf"

#exit


#csvcut -c "TextFormatted","TextSecondaryFormatted","Frame","ArmorFrame","GuardFrame","SecondaryType","SecondaryTypeIcon","SecondarySubtypeIcon","CostIcon" test.csv | sed -e 's/ /\\ /g' | csvformat --out-delimiter " " > test.txt
#csvsql --query "WITH varname AS (SELECT 'GuardFrame' AS "


## Commented out to accelerate troubleshooting
#
#grep --only-matching "TextFormatted.*TextFormatted" test.csv | sed -e 's/TextFormatted//g' >textbodies.txt
#grep --only-matching "TextSecondaryFormatted.*TextSecondaryFormatted" test.csv | sed -e 's/TextSecondaryFormatted//g' >textbottoms.txt
#
#echo "looping bodies..."
#
#bodyindex=0
#while IFS= read -r line; do
#    bodyindex=$((bodyindex+1))
#
#    # Skip the header row.
#    # Not necessary if the header row doesn't get included in the first place.
#    #if [ $bodyindex == 1 ]; then continue; fi
#
#    echo $line >body-$bodyindex.tex
#    cat prebody.txt body-$bodyindex.tex postbody.txt >fullbody-$bodyindex.tex
#    rm body-$bodyindex.tex
#
#    date >pdflatex.$bodyindex.log
#    echo >>pdflatex.$bodyindex.log
#    echo ------------------------- >>pdflatex.$bodyindex.log
#
#    echo "   TeXing body: $bodyindex..."
#    pdflatex fullbody-$bodyindex.tex >> pdflatex.$bodyindex.log
#    rm fullbody-$bodyindex.tex
##    rm logs/fullbody-$bodyindex.log
#    mv fullbody-$bodyindex.log logs/fullbody-$bodyindex.log
#    mv fullbody-$bodyindex.aux logs/fullbody-$bodyindex.aux
#
#done < textbodies.txt
#
#
#
#echo "looping bottoms..."
#
#bottomindex=0
#while IFS= read -r line; do
#    bottomindex=$((bottomindex+1))
#
#    # Skip the header row.
#    # Not necessary if the header row doesn't get included in the first place.
#    #if [ $bottomindex == 1 ]; then continue; fi
#
#    echo $line >bottom-$bottomindex.tex
#    cat prebody.txt bottom-$bottomindex.tex postbody.txt >fullbottom-$bottomindex.tex
#    rm bottom-$bottomindex.tex
#
#    date >>pdflatex.$bodyindex.log
#    echo >>pdflatex.$bodyindex.log
#    echo ------------------------- >>pdflatex.$bodyindex.log
#
#    echo "   TeXing bottom: $bottomindex..."
#    pdflatex fullbottom-$bottomindex.tex >> pdflatex.$bottomindex.log
#    rm fullbottom-$bottomindex.tex
##    rm logs/fullbottom-$bottomindex.log
#    mv fullbottom-$bottomindex.log logs/fullbottom-$bottomindex.log
#    mv fullbottom-$bottomindex.aux logs/fullbottom-$bottomindex.aux
#done < textbottoms.txt
#
#rm textbodies.txt
#rm textbottoms.txt

#debug
bodyindex=3
bottomindex=3

COLOR_LOGIC='\033[1;35m'   # Light Purple
COLOR_MAGIC='\033[0;32m'   # Green
COLOR_ERROR='\033[0;31m'   # Red
COLOR_LATEX='\033[1;36m'   # Light Cyan
COLOR_WARNING='\033[1;33m' # Yellow
COLOR_NONE='\033[0m'

# latexbody="$latex_prebody""$BODYTEXT""$latex_postbody"
#echo "prebodycontent:"
#echo "$latexbody"
#exit


for ((i = 1 ; i <= $bodyindex ; i++)); do

    ## Sample values for testing

    ## Text Box

    textbox_textvalue=`cat ./sampletext.txt`
    textbox_textTextWidth="520"
    textbox_textTextHeight="147"
    textbox_textOffsetX="5"  #"-5"
    textbox_textOffsetY="208"
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
    #secondarytextbox_textBlurSigma="2"
    #secondarytextbox_textBlurRadius=$(( $textbox_textBlurSigma * 3 ))
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

    ## The stats_* sample values are referenced by the printed stat variables.

    stats_PointSize="54"
    stats_FontFamily="Barlow"
    stats_FontWeight="Medium"
    stats_FontStyle="Normal"
    stats_OutlineWidth="2"
    #stats_BlurSigma="3"
    #stats_BlurDistance="1"
    #stats_BlurOpacity="0.3"

    range_value="1~2"
    range_StatColor="#000000FF"
    range_OutlineColor="#FFFFFFFF"
    range_BlurColor="#000000FF" #00ABEAFF
    range_OffsetX="-270"
    range_OffsetY="-345"
    range_PointSize="$stats_PointSize"
    range_FontFamily="$stats_FontFamily"
    range_FontWeight="$stats_FontWeight"
    range_FontStyle="$stats_FontStyle"
    range_OutlineWidth="$stats_OutlineWidth"
    #range_BlurSigma="$stats_BlurSigma"
    #range_BlurDistance="$stats_BlurDistance"
    #range_BlurOpacity="$stats_BlurOpacity"

    power_value="N/A"
    power_StatColor="#AA0000FF"
    power_OutlineColor="#FFFFFFFF"
    power_BlurColor="#000000FF" #F54137FF
    power_OffsetX="-270"
    power_OffsetY="-235"
    power_PointSize="$stats_PointSize"
    power_FontFamily="$stats_FontFamily"
    power_FontWeight="$stats_FontWeight"
    power_FontStyle="$stats_FontStyle"
    power_OutlineWidth="$stats_OutlineWidth"
    #power_BlurSigma="$stats_BlurSigma"
    #power_BlurDistance="$stats_BlurDistance"
    #power_BlurOpacity="$stats_BlurOpacity"

    speed_value="6"
    speed_StatColor="#000000FF"
    speed_OutlineColor="#FFFFFFFF"
    speed_BlurColor="#000000FF" #FFF5A5FF
    speed_OffsetX="-280"
    speed_OffsetY="-130"
    speed_PointSize="$stats_PointSize"
    speed_FontFamily="$stats_FontFamily"
    speed_FontWeight="$stats_FontWeight"
    speed_FontStyle="$stats_FontStyle"
    speed_OutlineWidth="$stats_OutlineWidth"
    #speed_BlurSigma="$stats_BlurSigma"
    #speed_BlurDistance="$stats_BlurDistance"
    #speed_BlurOpacity="$stats_BlurOpacity"

    armor_value="3"
    armor_StatColor="#000000FF"
    armor_OutlineColor="#FFFFFFFF"
    armor_BlurColor="#000000FF" #AE96C3FF
    armor_OffsetX="-265"
    armor_OffsetY="-45"
    armor_PointSize="$stats_PointSize"
    armor_FontFamily="$stats_FontFamily"
    armor_FontWeight="$stats_FontWeight"
    armor_FontStyle="$stats_FontStyle"
    armor_OutlineWidth="$stats_OutlineWidth"
    #armor_BlurSigma="$stats_BlurSigma"
    #armor_BlurDistance="$stats_BlurDistance"
    #armor_BlurOpacity="$stats_BlurOpacity"

    guard_value="5"
    guard_StatColor="#009900FF"
    guard_OutlineColor="#FFFFFFFF"
    guard_BlurColor="#000000FF" #39AB55FF
    guard_OffsetX="-260"
    guard_OffsetY="55"
    guard_PointSize="$stats_PointSize"
    guard_FontFamily="$stats_FontFamily"
    guard_FontWeight="$stats_FontWeight"
    guard_FontStyle="$stats_FontStyle"
    guard_OutlineWidth="$stats_OutlineWidth"
    #guard_BlurSigma="$stats_BlurSigma"
    #guard_BlurDistance="$stats_BlurDistance"
    #guard_BlurOpacity="$stats_BlurOpacity"

    drive_value=""
    drive_StatColor="#000000FF"
    drive_OutlineColor="#FFFFFFFF"
    drive_BlurColor="#000000FF" #39AB55FF
    drive_OffsetX="-260"
    drive_OffsetY="55"
    drive_PointSize="$stats_PointSize"
    drive_FontFamily="$stats_FontFamily"
    drive_FontWeight="$stats_FontWeight"
    drive_FontStyle="$stats_FontStyle"
    drive_OutlineWidth="$stats_OutlineWidth"
    #drive_BlurSigma="$stats_BlurSigma"
    #drive_BlurDistance="$stats_BlurDistance"
    #drive_BlurOpacity="$stats_BlurOpacity"

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
    #cost_BlurRadius=$(( $costBlurSigma * 3 ))
    #cost_BlurDistance="3"
    #cost_BlurOpacity="1.0"
    cost_OffsetX="-320"
    cost_OffsetY="-445"

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
    #secondarycost_BlurRadius=$(( $secondarycostBlurSigma * 3 ))
    #secondarycost_BlurDistance="3"
    #secondarycost_BlurOpacity="1.0"
    secondarycost_OffsetX="-315"
    secondarycost_OffsetY="428"

    tertiarycost_value=""
    tertiarycost_StatColor=""
    tertiarycost_OutlineColor=""
    tertiarycost_OutlineWidth=""
    tertiarycost_PointSize=""
    tertiarycost_FontFamily=""
    tertiarycost_FontWeight=""
    tertiarycost_FontStyle=""
    #tertiarycost_BlurColor=""
    #tertiarycost_BlurSigma=""
    #tertiarycost_BlurRadius=$(( $secondarycostBlurSigma * 3 ))
    #tertiarycost_BlurDistance=""
    #tertiarycost_BlurOpacity=""
    tertiarycost_OffsetX=""
    tertiarycost_OffsetY=""


    ## Title

    titlevalue="SHARDFALL"
    titleAlignment="NorthWest"
    titleRotation="0"
    titleTextColor="#FFFFFFFF"
    titleOutlineColor="#000000FF"
    titleOutlineWidth="3"
    titlePointSize="68"
    titleFontFamily="WC Mano Negra Bta"
    titleFontWeight="Medium"
    titleFontStyle="Normal"
    titleBlurColor="#d200fe" # "#d2710b"
    #titleBlurSigma="3"
    #titleBlurRadius=$(( $titleBlurSigma * 3 ))
    #titleBlurDistance="3"
    #titleBlurOpacity="1.0"
    titleOffsetX="75"
    titleOffsetY="33"


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

    layer_tertiaryframe="NONE"
    layer_art_over_tertiaryframe="NONE"
    
    layer_tertiarysubtype_patch="NONE"
    layer_art_over_tertiarysubtype_patch="NONE"
    
    layer_tertiarycost_patch="NONE"
    layer_art_over_tertiarycost_patch="NONE"

    layer_armor_patch="./frames/shards-airship/airship-frame-armor.png"
    layer_art_over_armor_patch=""
    layer_guard_patch="./frames/shards-airship/airship-frame-guard.png"
    layer_art_over_guard_patch=""
    layer_speed_patch=""
    layer_art_over_speed_patch="NONE"
    layer_power_patch="NONE"
    layer_art_over_power_patch="NONE"
    layer_range_patch="NONE"
    layer_art_over_range_patch="NONE"
    layer_drive_patch="NONE"
    layer_art_over_drive_patch="NONE"

    layer_cost_patch="./frames/shards-airship/airship-icon-forcecost.png"
    layer_art_over_cost_patch=""
    layer_art_over_title=""
    layer_art_over_all=""




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
        # . Prepend [\effect{]
        local output='\effect{'"$1"
        local critical_icon="$2"
        local critical_icon_textScaling="$3"

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
        # . Replace [<i] with [}\reminder{]
        sed -e 's/<i/}\\reminder{/g' | \
        # . Replace [<b] with [}\passive{]
        sed -e 's/<b/}\\passive{/g' | \
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
        # . Replace [<f] with [}\flavor{]
        sed -e 's/<f/}\\flavor{/g' | \
        # . Replace [<] with [{]
        sed -e 's/</{/g' | \
        # . Remove empty formatting marks.
        sed -e 's/\\effect{}//g'
        # . Close the last brace.
        echo -n '}'
    } # end format_latex_text


    ## *Color are ImageMagick color entries.
    ## They support a variety of formats, but I am choosing to use 8 digit hex codes with leading #.
    ## The function format_hexcode_long reformats them on the fly.
    rangeStatColor=$(format_hexcode_long "$rangeStatColor")
    rangeOutlineColor=$(format_hexcode_long "$rangeOutlineColor")
    rangeBlurColor=$(format_hexcode_long "$rangeBlurColor")
    powerStatColor=$(format_hexcode_long "$powerStatColor")
    powerOutlineColor=$(format_hexcode_long "$powerOutlineColor")
    powerBlurColor=$(format_hexcode_long "$powerBlurColor")
    speedStatColor=$(format_hexcode_long "$speedStatColor")
    speedOutlineColor=$(format_hexcode_long "$speedOutlineColor")
    speedBlurColor=$(format_hexcode_long "$speedBlurColor")
    armorStatColor=$(format_hexcode_long "$armorStatColor")
    armorOutlineColor=$(format_hexcode_long "$armorOutlineColor")
    armorBlurColor=$(format_hexcode_long "$armorBlurColor")
    guardStatColor=$(format_hexcode_long "$guardStatColor")
    guardOutlineColor=$(format_hexcode_long "$guardOutlineColor")
    guardBlurColor=$(format_hexcode_long "$guardBlurColor")
    costStatColor=$(format_hexcode_long "$costStatColor")
    costOutlineColor=$(format_hexcode_long "$costOutlineColor")
    secondarycostStatColor=$(format_hexcode_long "$secondarycostStatColor")
    secondarycostOutlineColor=$(format_hexcode_long "$secondarycostOutlineColor")
    titleTextColor=$(format_hexcode_long "$titleTextColor")
    titleOutlineColor=$(format_hexcode_long "$titleOutlineColor")
    titleBlurColor=$(format_hexcode_long "$titleBlurColor")



    echo -e "${COLOR_LOGIC}$i - assembling composite command string for frame elements (preserving aspect ratio)...${COLOR_NONE}"
    ## "xc:Black[750x1024!]" creates a "canvas" to work on, then -transparent "Black" makes it transparent.
    ## I'm sure there's a better way to set a transparent background as the "canvas" we're working on, but I don't know it yet.
    ## The "null:" image is a special marker that separates the destination image list and the source/overlay image list.
    #compositestring='xc:Black[750x1024\!] -transparent Black null:'
    compositeargs=("xc:Black[750x1024!]" "-transparent" "Black" "null:")
    declare -a filestoremove

    ## All frame elements should be composited with the geometry given as [WIDTHxHEIGHT^^]
    ## WIDTHxHEIGHT^^ ensures that the image fills the available canvas while preserving aspect ratio.
    ## This means that there will be no empty space on the canvas, but frame elements may be cropped.
    ## Items "drawn" onto the card (stats, costs, text) should be scaled/"squished" instead.
    ## This is because those items are being squished to fill specific 

    #### Background

    ## Draw layer_background
    if [ ! "$layer_background" == "NONE" ] \
    && [ ! -z "$layer_background" ]; then
        if [ -e "$layer_background" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_background[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_background[750x1024^^]")
        fi
    fi

    ## Draw layer_frame_over_background
    if [ ! "$layer_frame_over_background" == "NONE" ] \
    && [ ! -z "$layer_frame_over_background" ]; then
        if [ -e "$layer_background" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_frame_over_background[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_frame_over_background[750x1024^^]")
        fi
    fi



    #### Art
    ## Draw layer_art
    if [ ! "$layer_art" == "NONE" ] \
    && [ ! -z "$layer_art" ]; then
        if [ -e "$layer_art" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_art[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art[750x1024^^]")
        fi
    fi



    #### Primary Frame
    ## Draw layer_frame
    if [ ! "$layer_frame" == "NONE" ] \
    && [ ! -z "$layer_frame" ]; then
        if [ -e "$layer_frame" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_frame[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_frame[750x1024^^]")
        fi
    fi


    ## Draw layer_set_icon at layer_set_icon_opacity
    ## Draw layer_art_over_frame
    ## DEBUG TODO

    #### Secondary Frame
    ## Draw layer_secondaryframe
    if [ ! "$layer_secondaryframe" == "NONE" ] \
    && [ ! -z "$layer_secondaryframe" ]; then
        if [ -e "$layer_secondaryframe" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_secondaryframe[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_secondaryframe[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_secondaryframe
    if [ ! "$layer_art_over_secondaryframe" == "NONE" ] \
    && [ ! -z "$layer_art_over_secondaryframe" ]; then
        if [ -e "$layer_art_over_secondaryframe" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_art_over_secondaryframe[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_secondaryframe[750x1024^^]")
        fi
    fi

    #### Tertiary Frame
    ## Draw layer_tertiaryframe
    if [ ! "$layer_tertiaryframe" == "NONE" ] \
    && [ ! -z "$layer_tertiaryframe" ]; then
        if [ -e "$layer_tertiaryframe" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_tertiaryframe[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_tertiaryframe[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_tertiaryframe
    if [ ! "$layer_art_over_tertiaryframe" == "NONE" ] \
    && [ ! -z "$layer_art_over_tertiaryframe" ]; then
        if [ -e "$layer_art_over_tertiaryframe" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_art_over_tertiaryframe[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_tertiaryframe[750x1024^^]")
        fi
    fi

    #### Card Icon (e.g., for Astrals)
    ## Draw layer_icon_patch
    if [ ! "$layer_icon_patch" == "NONE" ] \
    && [ ! -z "$layer_icon_patch" ]; then
        if [ -e "$layer_icon_patch" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_icon_patch[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_icon_patch[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_icon_patch
    if [ ! "$layer_art_over_icon_patch" == "NONE" ] \
    && [ ! -z "$layer_art_over_icon_patch" ]; then
        if [ -e "$layer_art_over_icon_patch" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_art_over_icon_patch[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_icon_patch[750x1024^^]")
        fi
    fi

    #### Secondary Subtype
    ## Draw layer_secondarysubtype_patch
    if [ ! "$layer_secondarysubtype_patch" == "NONE" ] \
    && [ ! -z "$layer_secondarysubtype_patch" ]; then
        if [ -e "$layer_secondarysubtype_patch" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_secondarysubtype_patch[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_secondarysubtype_patch[750x1024^^]")
        fi
    fi
    ## Draw layer_art_over_secondarysubtype_patch
    if [ ! "$layer_art_over_secondarysubtype_patch" == "NONE" ] \
    && [ ! -z "$layer_art_over_secondarysubtype_patch" ]; then
        if [ -e "$layer_art_over_secondarysubtype_patch" ]; then
            #compositestring="${compositestring}"" -gravity Center $layer_art_over_secondarysubtype_patch[750x1024^^]"
            compositeargs+=("-gravity")
            compositeargs+=("Center")
            compositeargs+=("$layer_art_over_secondarysubtype_patch[750x1024^^]")
        fi
    fi



    ##### Primary Frame Components
    #
    ### Draw layer_armor_patch
    #if [ ! "$layer_armor_patch" == "NONE" ] \
    #&& [ ! -z "$layer_armor_patch" ] \
    #&& [ ! "$armor_value" == "NONE" ] \
    #&& [ ! -z "$armor_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_armor_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_armor_patch
    #if [ ! "$layer_art_over_armor_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_armor_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_armor_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_guard_patch
    #if [ ! "$layer_guard_patch" == "NONE" ] \
    #&& [ ! -z "$layer_guard_patch" ] \
    #&& [ ! "$guard_value" == "NONE" ] \
    #&& [ ! -z "$guard_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_guard_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_guard_patch
    #if [ ! "$layer_art_over_guard_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_guard_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_guard_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_speed_patch
    #if [ ! "$layer_speed_patch" == "NONE" ] \
    #&& [ ! -z "$layer_speed_patch" ] \
    #&& [ ! "$speed_value" == "NONE" ] \
    #&& [ ! -z "$speed_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_speed_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_speed_patch
    #if [ ! "$layer_art_over_speed_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_speed_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_speed_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_power_patch
    #if [ ! "$layer_power_patch" == "NONE" ] \
    #&& [ ! -z "$layer_power_patch" ] \
    #&& [ ! "$power_value" == "NONE" ] \
    #&& [ ! -z "$power_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_power_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_power_patch
    #if [ ! "$layer_art_over_power_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_power_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_power_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_range_patch
    #if [ ! "$layer_range_patch" == "NONE" ] \
    #&& [ ! -z "$layer_range_patch" ] \
    #&& [ ! "$range_value" == "NONE" ] \
    #&& [ ! -z "$range_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_range_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_range_patch
    #if [ ! "$layer_art_over_range_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_range_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_range_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_drive_patch
    #if [ ! "$layer_drive_patch" == "NONE" ] \
    #&& [ ! -z "$layer_drive_patch" ] \
    #&& [ ! "$drive_value" == "NONE" ] \
    #&& [ ! -z "$drive_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_drive_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_drive_patch
    #if [ ! "$layer_art_over_drive_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_drive_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_drive_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_cost_patch
    #if [ ! "$layer_cost_patch" == "NONE" ] \
    #&& [ ! -z "$layer_cost_patch" ] \
    #&& [ ! "$cost_value" == "NONE" ] \
    #&& [ ! -z "$cost_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_cost_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_cost_patch
    #if [ ! "$layer_art_over_cost_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_cost_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_cost_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_secondarycost_patch
    #if [ ! "$layer_secondarycost_patch" == "NONE" ] \
    #&& [ ! -z "$layer_secondarycost_patch" ] \
    #&& [ ! "$secondarycost_value" == "NONE" ] \
    #&& [ ! -z "$secondarycost_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_secondarycost_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_secondarycost_patch
    #if [ ! "$layer_art_over_secondarycost_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_secondarycost_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_secondarycost_patch[750x1024^^]"
    #fi
    #
    ### Draw layer_tertiarycost_patch
    #if [ ! "$layer_tertiarycost_patch" == "NONE" ] \
    #&& [ ! -z "$layer_tertiarycost_patch" ] \
    #&& [ ! "$tertiarycost_value" == "NONE" ] \
    #&& [ ! -z "$tertiarycost_vaule" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_tertiarycost_patch[750x1024^^]"
    #fi
    ### Draw layer_art_over_tertiarycost_patch
    #if [ ! "$layer_art_over_tertiarycost_patch" == "NONE" ] \
    #&& [ ! -z "$layer_art_over_tertiarycost_patch" ]; then
    #    compositestring="${compositestring}"" -gravity Center $layer_art_over_tertiarycost_patch[750x1024^^]"
    #fi


    #### Owner's Mark
    ## DEBUG: TODO
    ## Draw layer_art_owner
    ## Draw layer_owner_patch
    ## Draw layer_art_over_owner_patch


    #### Primary Printed Values

    ## Create and draw layer_stats

    ## Create "canvas" file to work on.
    echo -e "${COLOR_MAGIC}$i - - creating canvas file for stat layers...${COLOR_NONE}"
    magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "Center" "$i.stats.png"

    for statprefix in "armor" "guard" "speed" "power" "range" "drive" "cost" "secondarycost" "tertiarycost"; do

        echo -e "${COLOR_LOGIC}$i - - checking stat prefix: $statprefix${COLOR_NONE}"

        statvalue="$statprefix""_value"
        statvalue="${!statvalue}"

        if [ ! "$statvalue" == "NONE" ] \
        && [ ! -z "$statvalue" ]; then

            echo -e "${COLOR_LOGIC}$i - - - creating $statprefix layer...${COLOR_NONE}"
            
            statOffsetX="$statprefix""_OffsetX"
            statOffsetY="$statprefix""_OffsetY"
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
            statPointSize="$statprefix""_PointSize"
            layer_stat_patch="layer_""$statprefix""_patch"
            layer_art_over_stat_patch="layer_art_over_""$statprefix""_patch"

            statOffsetX="${!statOffsetX}"
            statOffsetY="${!statOffsetY}"
            statStatColor="${!statStatColor}"
            statOutlineColor="${!statOutlineColor}"
            statOutlineWidth="${!statOutlineWidth}"
            statBlurColor="${!statBlurColor}"
            statBlurDistance="${!statBlurDistance}"
            statBlurSigma="${!statBlurSigma}"
            statBlurRadius="${!statBlurRadius}"
            statBlurOpacity="${!statBlurOpacity}"
            statFontFamily="${!statFontFamily}"
            statFontWeight="${!statFontWeight}"
            statFontStyle="${!statFontStyle}"
            statPointSize="${!statPointSize}"
            layer_stat_patch="${!layer_stat_patch}"
            layer_art_over_stat_patch="${!layer_art_over_stat_patch}"

            ## Draw stat blur layer
            if [ ! "$statBlurSigma" == "NONE" ] \
            && [ ! -z "$statBlurSigma" ]; then
                echo -e "${COLOR_MAGIC}$i - - - - drawing $statprefix blur layer...${COLOR_NONE}"

                if [ ! "$statBlurRadius" == "NONE" ] \
                || [ ! -z "$statBlurRadius" ]; then
                    statBlurRadius=`echo "$statBlurSigma"'*'3 | bc`
                fi

                offsetX1=`echo "$statOffsetX+$statBlurDistance" | bc`
                offsetX2=`echo "$statOffsetX-$statBlurDistance" | bc`
                offsetY1=`echo "$statOffsetY+$statBlurDistance" | bc`
                offsetY2=`echo "$statOffsetY-$statBlurDistance" | bc`

                magick 'xc:Black[750x1024!]' -transparent "Black" -gravity Center -family "$statFontFamily" -weight "$statFontWeight" -style "$statFontStyle" -pointsize $statPointSize \
                 -fill "$statBlurColor" -draw "text "$offsetX1","$offsetY1" '$statvalue'" \
                 -fill "$statBlurColor" -draw "text "$offsetX1","$offsetY2" '$statvalue'" \
                 -fill "$statBlurColor" -draw "text "$offsetX2","$offsetY1" '$statvalue'" \
                 -fill "$statBlurColor" -draw "text "$offsetX2","$offsetY2" '$statvalue'" \
                 "$i.$statprefix.blur.png"

                ## Finalize the stat blur layer so it can be applied later.
                echo -e "${COLOR_MAGIC}$i - - - - finalizing $statprefix blur layer...${COLOR_NONE}"
                opacitystring=""
                if [ ! "$statBlurOpacity" == "NONE" ] \
                && [ ! -z "$statBlurOpacity" ]; then
                    echo "$i - - - - applying $statprefix opacity..."
                    opacitystring="-channel Alpha -evaluate Multiply $statBlurOpacity"
                fi
                magick "$i.$statprefix.blur.png" -gaussian-blur "$statBlurRadius"x"$statBlurSigma" $opacitystring "$i.$statprefix.blur.png"

                ## Apply stat blur layer.
                echo "$i - - - printing $statprefix blur layer..."
                magick "$i.stats.png" -draw "image Src-Over 0,0 0,0 '$i.$statprefix.blur.png'" "$i.stats.png" && rm "$i.$statprefix.blur.png"
                [ -e "$i.$statprefix.blur.png" ] && echo -e "${COLOR_ERROR}ImageMagick error!${COLOR_NONE}"
            fi

            ## Draw stat outline layer
            if [ ! "$statOutlineWidth" == "NONE" ] \
            && [ ! -z "$statOutlineWidth" ]; then
                echo -e "${COLOR_MAGIC}$i - - - - printing $statprefix outline layer...${COLOR_NONE}"

                magick "$i.stats.png" -gravity Center -family "$statFontFamily" -weight "$statFontWeight" -style "$statFontStyle" -pointsize $statPointSize \
                 -fill "$statStatColor" -stroke $statOutlineColor -strokewidth $statOutlineWidth -draw "text $statOffsetX,$statOffsetY '$statvalue'" \
                 "$i.stats.png"
             fi

            ## Draw stat value layer
            echo -e "${COLOR_MAGIC}$i - - - - drawing $statprefix...${COLOR_NONE}"
            magick "$i.stats.png" -gravity Center -family "$statFontFamily" -weight "$statFontWeight" -style "$statFontStyle" -pointsize $statPointSize \
             -fill "$statStatColor" -draw "text $statOffsetX,$statOffsetY '$statvalue'" \
             "$i.stats.png"

            ## Draw layer_stat_patch
            if [ ! "$layer_stat_patch" == "NONE" ] \
            && [ ! -z "$layer_stat_patch" ]; then
                if [ -e "$layer_stat_patch" ]; then
                    echo -e "${COLOR_LOGIC}$i - - - - preparing element: ${layer_stat_patch}${COLOR_NONE}"
                    #compositestring="${compositestring}"" -gravity Center $layer_stat_patch[750x1024^^]"
                    compositeargs+=("-gravity")
                    compositeargs+=("Center")
                    compositeargs+=("$layer_stat_patch[750x1024^^]")
                fi
            fi

            ## Draw layer_art_over_stat_patch
            if [ ! "$layer_art_over_stat_patch" == "NONE" ] \
            && [ ! -z "$layer_art_over_stat_patch" ]; then
                if [ -e "$layer_art_over_stat_patch" ]; then
                    echo -e "${COLOR_LOGIC}$i - - - - preparing element: ${layer_art_over_stat_patch}${COLOR_NONE}"
                    #compositestring="${compositestring}"" -gravity Center $layer_art_over_stat_patch[750x1024^^]"
                    compositeargs+=("-gravity")
                    compositeargs+=("Center")
                    compositeargs+=("$layer_art_over_stat_patch[750x1024^^]")
                fi
            fi

        fi # Finish handling this stat

    done # Finish looping through stats

    echo -e "$i - - printing stats layer..."
    compositestring="${compositestring}"' -draw "image Src-Over 0,0 0,0 '"'$i.stats.png'"'"'
    compositeargs+=("-draw")
    compositeargs+=("image Src-Over 0,0 0,0 '""$i.stats.png'")
    filestoremove+=("$i.stats.png")



    echo -e "${COLOR_LOGIC}$i - compositing and flattening..."
    #compositestring="${compositestring}"" -layers composite -layers flatten"
    compositeargs+=("-layers")
    compositeargs+=("composite")
    compositeargs+=("-layers")
    compositeargs+=("flatten")



    #echo -e "${COLOR_WARNING}$i - preparing to composite layers!${COLOR_NONE}"
    #echo -e "${COLOR_WARNING}DEBUG: for comparison, compositestring 2: ${compositestring}${COLOR_NONE}"
    #magick ${compositestring} -layers composite -layers flatten "$i.composite.string2.png"
    #
    #echo -e "${COLOR_WARNING}$i - preparing to composite stats!${COLOR_NONE}"
    #echo -e "${COLOR_WARNING}DEBUG: compositestring 3: ${compositestring}${COLOR_NONE}"
    #magick ${compositestring} -layers composite "$i.composite.string3.png" #DEBUG && rm "$i.composite.png"
    #[ -e "$i.composite.png" ] && echo -e "${COLOR_ERROR}ImageMagick error!${COLOR_NONE}"
    #
    #echo "$i - printing combined stats layer..."
    #magick "$i.draw.png" -draw "image Src-Over 0,0 0,0 '$i.stats.png'" "$i.draw.png" && rm "$i.stats.png"
    #[ -e "$i.stats.png" ] && echo -e "${COLOR_ERROR}ImageMagick error!${COLOR_NONE}"
    #
    #exit





    ## Create and draw layer_title
    if [ ! -z "$titlevalue" ]; then
        echo -e "${COLOR_MAGIC}$i - - creating title layer...${COLOR_NONE}"

        ## Create the title canvas.
        magick 'xc:Black[750x1024!]' -transparent "Black" -gravity Center "$i.title.png"

        ## title blur
        if [ ! "$titleBlurSigma" == "NONE" ] \
        && [ ! -z "$titleBlurSigma" ]; then
            echo -e "${COLOR_MAGIC}$i - - - drawing title blur...${COLOR_NONE}"

            if [ ! "$titleBlurRadius" == "NONE" ] \
            || [ ! -z "$titleBlurRadius" ]; then
                titleBlurRadius=`echo "$titleBlurSigma"'*'3 | bc`
            fi
            
            ## Create the title blur overlay.
            magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "$titleAlignment" -family "$titleFontFamily" -weight "$titleFontWeight" -style "$titleFontStyle" -pointsize "$titlePointSize" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX + $titleBlurDistance )),$(( $titleOffsetY + $titleBlurDistance )) '$titlevalue'" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX + $titleBlurDistance )),$(( $titleOffsetY - $titleBlurDistance )) '$titlevalue'" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX - $titleBlurDistance )),$(( $titleOffsetY + $titleBlurDistance )) '$titlevalue'" \
             -fill "$titleBlurColor" -draw "text $(( $titleOffsetX - $titleBlurDistance )),$(( $titleOffsetY - $titleBlurDistance )) '$titlevalue'" \
             "$i.titleblur.png"

            ## Finalize the title blur layer so it can be applied later.
            echo -e "${COLOR_MAGIC}$i - - - finalizing title blur layer...${COLOR_NONE}"
            opacitystring=""
            if [ ! "$titleBlurOpacity" == "NONE" ] \
            && [ ! -z "$titleBlurOpacity" ]; then
                echo "$i - - - - applying title blur opacity..."
                opacitystring="-channel Alpha -evaluate Multiply $titleBlurOpacity"
            fi
            magick "$i.titleblur.png" -gaussian-blur "$titleBlurRadius"x"$titleBlurSigma" $opacitystring "$i.titleblur.png"

            echo -e "${COLOR_MAGIC}$i - - - printing title blur layer...${COLOR_NONE}"
            magick "$i.title.png" -draw "image Src-Over 0,0 0,0 '$i.titleblur.png'" "$i.title.png"

            rm "$i.titleblur.png"
        fi # Finish drawing title blurs.

        ## Create and draw title outline layer
        if [ ! "$titleOutlineWidth" == "NONE" ] \
        && [ ! -z "$titleOutlineWidth" ]; then
            echo -e "${COLOR_MAGIC}$i - - - drawing title outline layer...${COLOR_NONE}"

            ## Create the title outline layer
            magick 'xc:Black[750x1024!]' -transparent "Black" -gravity "$titleAlignment" -family "$titleFontFamily" -weight "$titleFontWeight" -style "$titleFontStyle" -pointsize $titlePointSize \
             -stroke "$titleOutlineColor" -strokewidth "$titleOutlineWidth" -draw "text $titleOffsetX,$titleOffsetY '$titlevalue'" \
             "$i.titleoutline.png"

            echo -e "${COLOR_MAGIC}$i - - - printing title outline layer...${COLOR_NONE}"
            magick "$i.title.png" -draw "image Src-Over 0,0 0,0 '$i.titleoutline.png'" "$i.title.png"
            rm "$i.titleoutline.png"
        fi # Finish drawing title outline layer.

        echo -e "${COLOR_MAGIC}$i - - - drawing title...${COLOR_NONE}"
        magick "$i.title.png" -gravity "$titleAlignment" -family "$titleFontFamily" -weight "$titleFontWeight" -style "$titleFontStyle" -pointsize $titlePointSize \
         -fill "$titleTextColor" -draw "text $titleOffsetX,$titleOffsetY '$titlevalue'" \
         "$i.title.png"

        echo -e "$i - - printing title layer..."
        compositestring="${compositestring}"' -draw "image Src-Over 0,0 0,0 '"'$i.title.png'"'"'
        compositeargs+=("-draw")
        compositeargs+=("image Src-Over 0,0 0,0 '""$i.title.png'")
        filestoremove+=("$i.title.png")

    fi # Finish layer_title



    ## ## Draw layer_art_over_title
    ## DEBUG TODO






    ## Create and draw layer_textbox

    echo "$i - - drawing text elements (squeezing to fit)..."

    ## Create text boxes

    for textprefix in "textbox" "secondarytextbox" "tertiarytextbox"; do

        textvalue="$textprefix""_textvalue"
        textvalue="${!textvalue}"

        if [ ! "$textvalue" == "NONE" ] \
        && [ ! -z "$textvalue" ]; then

            echo -e "${COLOR_LOGIC}$i - creating text area: $textprefix${COLOR_NONE}"
 
            ## Use variable indirection to set the contents of the variables based on which text section we're working on.

            textTextWidth="$textprefix""_textTextWidth"
            textTextHeight="$textprefix""_textTextHeight"
            textOffsetX="$textprefix""_textOffsetX"
            textOffsetY="$textprefix""_textOffsetY"
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


            ## Theoretically, the critical icon file path should be specified in the template.
            ## The logic which passes template information to this script is where default values are handled.
            ## However, this particular value will break "invisibly", so an extra check has been added.

            ## Validate Critical icon image format.
            if [ ! "$critical_icon_file" == "NONE" ] \
            && [ ! -z "$critical_icon_file" ]; then
                echo -e "${COLOR_LOGIC}$i - - validating critical icon...${COLOR_NONE}"

                critical_icon_filetype=`file --brief --mime "$critical_icon_file"`

                if [ "$critical_icon_width" == "NONE" ] \
                || [ -z "$critical_icon_width" ]; then
                    critical_icon_width="150"
                fi

                if [ "$critical_icon_height" == "NONE" ] \
                || [ -z "$critical_icon_height" ]; then
                    critical_icon_height="150"
                fi

                filetypecheck=false
                grep -q -e "png\|jpeg\|pdf" <<<"$critical_icon_filetype" && filetypecheck=true

                ## If it doesn't look like an image format LaTeX will support, convert it.
                if [ $filetypecheck == false ]; then

                    echo -e "${COLOR_MAGIC}$i - - - converting critical icon...${COLOR_NONE}"
                    magick convert -background "None" "$critical_icon_file" -resize "$critical_icon_width"x"$critical_icon_height" "$i"_"$textprefix""_critical_icon.png"
                    
                    critical_icon_file="$i"_"$textprefix""_critical_icon.png"
                    filestoremove+=("$critical_icon_file")
                fi
            else
                echo -e "${COLOR_WARNING}warning: critical icon missing${COLOR_NONE}"
                ## Create an empty image.
                magick 'xc:Black[50x50!]' -transparent "Black" -gravity Center "$i.critical_icon.png"
                critical_icon_file="$i.critical_icon.png"
                filestoremove+=("$critical_icon_file")
            fi


            ## *_textcolor_* are LaTeX color entries.
            ## The code that applies them to the file assumes they are SIX DIGIT HEX CODES, no leading #.
            ## The function format_hexcode_short reformats them accordingly.

            echo -e "${COLOR_LOGIC}$i - formatting textcolors...${COLOR_NONE}"

            if [ ! "$textcolor_effect" == "NONE" ] \
            && [ ! -z "$textcolor_effect" ]; then
                textcolor_effect=$(format_hexcode_short "$textcolor_effect")
            else
                textcolor_effect="000000"; fi

            if [ ! "$textcolor_passive" == "NONE" ] \
            && [ ! -z "$textcolor_passive" ]; then
                textcolor_passive=$(format_hexcode_short "$textcolor_passive")
            else
                textcolor_passive="$textcolor_effect"; fi

            if [ ! "$textcolor_reminder" == "NONE" ] \
            && [ ! -z "$textcolor_reminder" ]; then
                textcolor_reminder=$(format_hexcode_short "$textcolor_reminder")
            else
                textcolor_reminder="$textcolor_effect"; fi

            if [ ! "$textcolor_trigger" == "NONE" ] \
            && [ ! -z "$textcolor_trigger" ]; then
                textcolor_trigger=$(format_hexcode_short "$textcolor_trigger")
            else
                textcolor_trigger="$textcolor_effect"; fi

            if [ ! "$textcolor_flavor" == "NONE" ] \
            && [ ! -z "$textcolor_flavor" ]; then
                textcolor_flavor=$(format_hexcode_short "$textcolor_flavor")
            else
                textcolor_flavor="$textcolor_effect"; fi

            if [ ! "$textcolor_range" == "NONE" ] \
            && [ ! -z "$textcolor_range" ]; then
                textcolor_range=$(format_hexcode_short "$textcolor_range")
            else
                textcolor_range="$textcolor_effect"; fi

            if [ ! "$textcolor_power" == "NONE" ] \
            && [ ! -z "$textcolor_power" ]; then
                textcolor_power=$(format_hexcode_short "$textcolor_power")
            else
                textcolor_power="$textcolor_effect"; fi

            if [ ! "$textcolor_speed" == "NONE" ] \
            && [ ! -z "$textcolor_speed" ]; then
                textcolor_speed=$(format_hexcode_short "$textcolor_speed")
            else
                textcolor_speed="$textcolor_effect"; fi

            if [ ! "$textcolor_armor" == "NONE" ] \
            && [ ! -z "$textcolor_armor" ]; then
                textcolor_armor=$(format_hexcode_short "$textcolor_armor")
            else
                textcolor_armor="$textcolor_effect"; fi

            if [ ! "$textcolor_guard" == "NONE" ] \
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
            ##    <r+0~2 Range>
            ##
            ## The opening tag is the "greater than" symbol followed by a single character:
            ##    <r
            ## Here, the "r" character is short for "range".
            ## Note that there should be NO SPACE after the opening tag.
            ## Also note that the entire opening tag is these two characters. The opening tag is "<r", not "<r>".
            ## (These tags are much more simplistic than HTML tags!)
            ##
            ## The closing tag is the "less than" symbol:
            ##    >
            ## Again, note that there should be NO SPACE before the closing tag.
            ##
            ## You might notice that the closing tag does not specify which tag it's closing.
            ## This is because tags DO NOT NEST. You can't put a tag inside another tag.
            ##
            ## The following example will NOT work:
            ##    <b<r+0~1 Range> and <s+1 Speed>>
            ##
            ## Here's a list of all the supported tags:
            ##
            ##                       | bold  | italic | color | outline |
            ##    b = passive effect |  yes  |        |       |         |
            ##    i = reminder text  |       |  yes   |       |         |
            ##    f = flavor text    |  yes  |  yes   |  yes  |  maybe  |
            ##    r = range stat     |  yes  |        |  yes  |  maybe  |
            ##    p = power stat     |  yes  |        |  yes  |  maybe  |
            ##    s = speed stat     |  yes  |        |  yes  |  maybe  |
            ##    a = armor stat     |  yes  |        |  yes  |  maybe  |
            ##    g = guard stat     |  yes  |        |  yes  |  maybe  |
            ##
            ## The exact behavior of any given tag depends on the template specifications.
            ## You do NOT need to create a tag around the following:
            ##    Before:
            ##    Hit:
            ##    After:
            ##    Cleanup:
            ##    Now:
            ##    Overdrive:
            ##    Advantage
            ##    Critical
            ## Those will be automatically detected and bolded.
            ## Note: If you want to type "Critical" WITHOUT automatic formatting (e.g., in flavor text), type "<Critical>" instead.

            echo -e "${COLOR_LOGIC}$i - formatting text...${COLOR_NONE}"
            textvalue=$(format_latex_text "$textvalue" "$critical_icon_file" "$critical_icon_textScaling")

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
            echo -e "${COLOR_LATEX}$i - creating LaTeX color formats...${COLOR_NONE}"

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

            if [ ! "$outlinecolor_range" == "NONE" ] \
            && [ ! -z "$outlinecolor_range" ]; then
                latex_formatstring_range="$latex_formatstring_range"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorrange}{HTML}{'"$outlinecolor_range"'}
                '; fi
            if [ ! "$outlinecolor_power" == "NONE" ] \
            && [ ! -z "$outlinecolor_power" ]; then
                latex_formatstring_power="$latex_formatstring_power"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorpower}{HTML}{'"$outlinecolor_power"'}
                '; fi
            if [ ! "$outlinecolor_speed" == "NONE" ] \
            && [ ! -z "$outlinecolor_speed" ]; then
                latex_formatstring_speed="$latex_formatstring_speed"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorspeed}{HTML}{'"$outlinecolor_speed"'}
                '; fi
            if [ ! "$outlinecolor_armor" == "NONE" ] \
            && [ ! -z "$outlinecolor_armor" ]; then
                latex_formatstring_armor="$latex_formatstring_armor"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorarmor}{HTML}{'"$outlinecolor_armor"'}
                '; fi
            if [ ! "$outlinecolor_guard" == "NONE" ] \
            && [ ! -z "$outlinecolor_guard" ]; then
                latex_formatstring_guard="$latex_formatstring_guard"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorguard}{HTML}{'"$outlinecolor_guard"'}
                '; fi
            if [ ! "$outlinecolor_effect" == "NONE" ] \
            && [ ! -z "$outlinecolor_effect" ]; then
                latex_formatstring_effect="$latex_formatstring_effect"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecoloreffect}{HTML}{'"$outlinecolor_effect"'}
                '; fi
            if [ ! "$outlinecolor_flavor" == "NONE" ] \
            && [ ! -z "$outlinecolor_flavor" ]; then
                latex_formatstring_flavor="$latex_formatstring_flavor"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorflavor}{HTML}{'"$outlinecolor_flavor"'}
                '; fi
            if [ ! "$outlinecolor_passive" == "NONE" ] \
            && [ ! -z "$outlinecolor_passive" ]; then
                latex_formatstring_passive="$latex_formatstring_passive"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorpassive}{HTML}{'"$outlinecolor_passive"'}
                '; fi
            if [ ! "$outlinecolor_reminder" == "NONE" ] \
            && [ ! -z "$outlinecolor_reminder" ]; then
                latex_formatstring_reminder="$latex_formatstring_reminder"" outline"
                latex_outlinecolors=$latex_outlinecolors'\definecolor{outlinecolorreminder}{HTML}{'"$outlinecolor_reminder"'}
                '; fi
            if [ ! "$outlinecolor_trigger" == "NONE" ] \
            && [ ! -z "$outlinecolor_trigger" ]; then
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

            echo "$latex_text" > "$i.$textprefix.tex"
            filestoremove+=("$i.$textprefix.tex")

            echo -e "${COLOR_LATEX}$i - TeXing $textprefix...${COLOR_NONE}"
            pdflatex -halt-on-error "$i.$textprefix.tex" > "$i.latex.$textprefix.log"
            filestoremove+=("$i.$textprefix.pdf")

            echo -e "$i - editing..."

            ## Resize the text PDF for placement on the page.
            if [ ! -e "$i.$textprefix.pdf" ]; then
                echo -e "${COLOR_ERROR}LaTeX error!${COLOR_NONE}"
            else
                echo -e "${COLOR_MAGIC}$i - - drawing $textprefix box...${COLOR_NONE}"
                magick -density 300 "$i.$textprefix.pdf" -gravity Center -resize "$(( $textTextWidth * 5 ))x$(( $textTextHeight * 5 ))" \
                 -trim -resize "$textTextWidth"x"$textTextHeight"">" -repage 750x1024 "$i.$textprefix.png"
                filestoremove+=("$i.$textprefix.png")

                ## Text blur
                if [ ! "$textBlurSigma" == "NONE" ] \
                && [ ! -z "$textBlurSigma" ]; then
                    echo -e "${COLOR_MAGIC}$i - - - drawing $textprefix blur...${COLOR_NONE}"

                    if [ ! "$textBlurRadius" == "NONE" ] \
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
                     -draw "image Src-Over "$offsetX1","$offsetY1" 0,0 '$i.$textprefix.png'" \
                     -draw "image Src-Over "$offsetX1","$offsetY2" 0,0 '$i.$textprefix.png'" \
                     -draw "image Src-Over "$offsetX2","$offsetY1" 0,0 '$i.$textprefix.png'" \
                     -draw "image Src-Over "$offsetX2","$offsetY2" 0,0 '$i.$textprefix.png'" \
                     "$i.$textprefix.blur.png"
                    filestoremove+=("$i.$textprefix.blur.png")
                    
                    ## Finalize the text blur layer so it can be applied later.
                    echo -e "${COLOR_MAGIC}$i - - - finalizing text blur layer...${COLOR_NONE}"
                    opacitystring=""
                    if [ ! "$textBlurOpacity" == "NONE" ] \
                    && [ ! -z "$textBlurOpacity" ]; then
                        echo "$i - - - - applying text blur opacity..."
                        opacitystring="-channel Alpha -evaluate Multiply $textBlurOpacity"
                    fi
                    
                    ## Combine the text blurs and the image.
                    echo -e "${COLOR_MAGIC}$i - - - combining text blurs with text...${COLOR_NONE}"
                    magick "$i.$textprefix.blur.png" -gravity "Center" \
                     -gaussian-blur "$textBlurRadius"x"$textBlurSigma" $opacitystring \
                     -draw "image Src-Over 0,0 0,0 '$i.$textprefix.png'" "$i.$textprefix.png"
                fi # Finish drawing text blurs.

                echo -e "${COLOR_MAGIC}$i - - - printing $textprefix layer...${COLOR_NONE}"

                #echo "debug: textOffsetX: $textOffsetX"
                #echo "debug: textOffsetY: $textOffsetY"
                #echo ""
                #
                #teststring='-draw "image Src-Over 0,0 0,0 '"$i.$textprefix.png"'"'
                #echo "debug: teststring: $teststring"
                #magick "$i.textareas.png" \
                # -gravity "Center" \
                # -draw "image Src-Over $textOffsetX,$textOffsetY 0,0 '$i.$textprefix.png'" \
                # "$i.textareas1.png"
                #echo ""
                #
                #teststring='-draw "image SrcOver $textOffsetX,$textOffsetY 0,0 '"$i.$textprefix.png"'"'
                #echo "debug: teststring: ${teststring}"
                #magick "$i.textareas.png" ${teststring} "$i.textareas2.png"
                #echo ""

                #teststring="-draw 'image Src-Over 0,0 0,0 "'"$i.$textprefix.png"'"'"
                #echo "debug: teststring: $teststring"
                #magick "$i.textareas.png" $teststring "$i.textareas3.png"

                #compositestring="${compositestring}"' -draw "image Src-Over '"$textOffsetX,$textOffsetY"' 0,0 '"'$i.$textprefix.png'"'"'
                compositeargs+=("-draw")
                compositeargs+=("image Src-Over $textOffsetX,$textOffsetY 0,0 '""$i.$textprefix.png'")

                #magick "$i.draw.png" -gravity "Center" \
                # -draw "image Src-Over $textOffsetX,$textOffsetY 0,0 '$i.$textprefix.png'" \
                # "$i.draw.png"
                #rm "$i.$textprefix.png"
                #[ -e "$i.$textprefix.png" ] && echo -e "${COLOR_ERROR}ImageMagick error!${COLOR_NONE}"
                #DEBUG exit

            fi # Finish creating text area image

        fi # Finish construction of text box.

        ## Move the log files out of the way
        [ -e "$i.latex.$textprefix.log" ] && mv "$i.latex.$textprefix.log" logs/

    done # Finish looping through text areas.



    ## ## Draw layer_art_over_all



    ## Similar to the above, but instead of compositing, this draws them on top of the original.
    ## Notably, resizing via "-draw" does NOT preserve aspect ratio. Instead, it "squeezes" the image being drawn.
    #if [ -e "$i.textareas.png" ]; then
    #    echo -e "${COLOR_MAGIC}$i - - - printing text areas...${COLOR_NONE}"
    #    magick "$i.draw.png" \
    #     -gravity Center -draw "image Src-Over 0,0 0,0 '$i.textareas.png'" \
    #     "$i.draw.png" #&& rm "$i.textareas.png"
    #    [ -e "$i.textareas.png" ] && echo -e "${COLOR_ERROR}ImageMagick error!${COLOR_NONE}"
    #fi

    #if [ -e "$i.textbox.png" ]; then
    #    echo -e "${COLOR_MAGIC}$i - - - printing text areas...${COLOR_NONE}"
    #    magick "$i.draw.png" \
    #     -gravity Center -draw "image Src-Over $textbox_textOffsetX,$textbox_textOffsetY 0,0 '$i.textbox.png'" \
    #     "$i.draw.png"
    #    rm "$i.textbox.png"
    #fi
    #if [ -e "$i.secondarytextbox.png" ]; then
    #    echo -e '\033[0;32m'"$i - - - printing secondary text box..."'\033[0m'
    #    magick "$i.draw.png" \
    #     -gravity Center -draw "image Src-Over $secondarytextbox_textOffsetX,$secondarytextbox_textOffsetY 0,0 '$i.secondarytextbox.png'" \
    #     "$i.draw.png"
    #    rm "$i.secondarytextbox.png"
    #fi
    #if [ -e "$i.tertiarytextbox.png" ]; then
    #    echo -e '\033[0;32m'"$i - - - printing tertiary text box..."'\033[0m'
    #    magick "$i.draw.png" \
    #     -gravity Center -draw "image Src-Over $tertiarytextbox_textOffsetX,$tertiarytextbox_textOffsetY 0,0 '$i.tertiarytextbox.png'" \
    #     "$i.draw.png"
    #    rm "$i.tertiarytextbox.png"
    #fi

    #echo -e "${COLOR_ERROR}$i - DEBUG${COLOR_NONE}"
    #magick xc:Black[750x1024!] \
    # -transparent Black null: \
    # -gravity Center ./frames/shards-airship/airship-frame.png[750x1024^^] \
    # -gravity Center ./frames/shards-airship/airship-frame-boost.png[750x1024^^] \
    # -gravity Center ./frames/shards-airship/airship-icon-continuous.png[750x1024^^] \
    # -gravity Center ./frames/shards-airship/airship-frame-armor.png[750x1024^^] \
    # -gravity Center ./frames/shards-airship/airship-frame-guard.png[750x1024^^] \
    # -gravity Center ./frames/shards-airship/airship-icon-forcecost.png[750x1024^^] \
    # -gravity Center ./frames/shards-airship/airship-icon-boost.png[750x1024^^] \
    # -layers composite \
    # -layers flatten \
    # -draw "image Src-Over 0,0 0,0 '1.title.png'" \
    # -draw "image Src-Over -5,208 0,0 '1.textbox.png'" \
    # -draw "image Src-Over 0,412 0,0 '1.secondarytextbox.png'" \
    # 1.draw.png
    #exit



    echo -e "${COLOR_WARNING}$i - drawing...${COLOR_NONE}"


    #compositestring="${compositestring} $i.draw.png"
    compositeargs+=("$i.draw.png")


    #echo "" #DEBUG
    #echo -e "${COLOR_ERROR}$i compositestring: ${compositestring}${COLOR_NONE}"
    echo "" #DEBUG
    echo -e "${COLOR_WARNING}$i compositeargs: ${compositeargs[@]}${COLOR_NONE}"

    #echo -e "${COLOR_MAGIC}diff${COLOR_NONE}"
    #echo ${compositestring} >f1.txt
    #echo "${compositestring}" >f2.txt
    #diff f1.txt f2.txt
    #echo -e "${COLOR_WARNING}end diff${COLOR_NONE}"

    #magick -debug "All" "${compositeargs[@]}" 1>magick.debugout.log 2>magick.debugerr.log
    #echo "twixt"

    #magick -debug "All" "${compositestring}" 1>magick.debugout.log 2>magick.debugerr.log
    #exit

    magick "${compositeargs[@]}"

    for filetoremove in ${filestoremove[@]}; do
        rm "${filetoremove}"
    done




    ##--------------------------------------------------------------------

    #echo "$i - - drawing..."
    ## This one does the same thing, but instead of compositing overlays it draws them on top of the original.
    ## Notably, resizing via "-draw" does NOT preserve aspect ratio. Instead, it "squeezes" the image being drawn.
    #magick "xc:Black[750x1024!]" -transparent "black" \
    # -gravity Center -draw "image Src-Over 0,0 750,1024 'FRAME-BACKGROUND'" \
    # -gravity Center -draw "image Src-Over 0,0 750,1024 'FRAME-BOOST'" \
    # -gravity Center -draw "image Src-Over 0,400 0,0 'fullbottom-$i.png'" \
    # -gravity Center -draw "image Src-Over 0,200 0,0 'fullbody-$i.png'" \
    # "$i.draw.png"

    echo -e "${COLOR_WARNING}$i - done processing${COLOR_NONE}"
    mv $i.*.log logs/
    mv $i.*.aux logs/
done