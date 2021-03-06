#echo "Testing browser output at load\n"
#echo "Testing log writing at load\n">>testoutput.log

DOC="Usage: web-build.sh [options]

Options:
  --charactername <CHARACTERNAME>        Character name [default: Van Diesel]
  --creator <CREATOR>                    Your name [default: anonymous]
  --owner <OWNER>                        Owner of the character (for the copyright disclaimer) [default: its owner]
  --templatename <TEMPLATENAME>          Card template in use [default: Plain Dark]
  --csvfilename <CSVFILENAME>            CSV file containing any additional template information.
  --textoutlinecolor <TEXTOUTLINECOLOR>  Text outline color
"

#echo "Testing browser output prior to parser\n"

## Defaults.
charactername="[Van Diesel]"
creator="[anonymous]"
owner="[its owner]"
templatename="Plain Dark"
csvfilename=""
textoutlinecolor=""

## I tried to make a cleaner parser using docopt, but had trouble getting it to work.
##
## -n "web-build.sh"
##   Errors will be logged/reported as being generated by this script, not by getopt.
##
## -o ""
##   This is the list of short options. I don't want any, but I have to specify the list anyway.
##
## -l charactername:, ...
##   This is the list of long options. Ending an option with a colon means that option is required.
##
## --
##   This is an unambigous way to tell the script that the following items are arguments, not options.
##
## "$@"
##   Contains all command line parameters passed to this script.

#TEMP=$(getopt -n "web-build.sh" -o "" -l charactername:,creator:,owner:,templatename:,csvfilename:,textoutlinecolor: -- "$@")

## As I understand it, this parser logic format is pretty standard.
## In the 'case' where the "current" parameter is one of the valid options:
##   set the appropriate variable name to the "next" parameter,
##   shift the remaining parameters by 2,
##   and repeat the loop.
## In the 'case' where the "current" parameter is "--", that signals an end to the options;
##   end the loop.
## In the 'case' where the "current" parameter is neither "--" nor a valid option,
##   Report an error and exit with status 1.

#eval set -- "$TEMP"
while true; do
	case $1 in
		--charactername)
			charactername="$2"; shift 2; continue
		;;
		--creator)
			creator="$2"; shift 2; continue
		;;
		--owner)
			owner="$2"; shift 2; continue
		;;
		--templatename)
			templatename="$2"; shift 2; continue
		;;
		--csvfilename)
			csvfilename="$2"; shift 2; continue
		;;
		--textoutlinecolor)
			textoutlinecolor="$2"; shift 2; continue
		;;
		--)
			break
		;;
		*)
			printf "Unknown option %s\n" "$1"
			exit 1
		;;
	esac
done

#eval set -- "$@"

echo "Testing file output\n">>testoutput.log

## Below are traces of my attempt to use docopt to write a parser.
## REMOVE THIS BEFORE RELEASE..
## This automatically reevaluates the parser based on the help message at the start of this file.
## Prior to release, the parser within this file should itself be updated to keep the script portable.
#eval "$(docopt.sh --parser "$0")"

#eval "$(docopt "$@")"
#if $charactername; then
# printf "character name: $__charactername"
#fi

echo "Hello again!"
echo "Character: $charactername"
echo "Creator: $creator"
echo "Owner: $owner"
echo "TemplateName: $templatename"
echo "CSVFileName: $csvfilename"


## Character Creation
##
## 1. If a CSV file was NOT supplied, create one.
##    Someday this will probably be reorganized to use an actual data structure...
##    But not this day.
##
## Card Entry
##
## 2. The card entry "UI" is just a mechanism for adding records to the CSV created above.
##
##  a. Check File -> link to current CSV file (or possibly an in-browser display of the contents?)
##     Yes, it is a bit silly to handle this by reading and writing from a file instead of using data structures.
##     I'm designing the application "backwards". I expect to build a sensible foundation later, but I need the rest intact first.
##     Without a fully-assembled house, it's much harder for me to figure out what the foundation needs to be.
##
##  b. Add Card -> Validate data, add record to CSV, return to this page
##     Ideally, if the data validation fails, retain those values in their fields and then return to this page.
##
##  c. Append File -> Append records from CSV to existing CSV, return to this page
##     Lower priority feature. Mainly just saves some spreadsheet organization steps for folks exporting multiple characters.
##
##  d. Delete Card (beside Card Name) -> attempt to delete appropriate record from CSV, return to this page
##     Lower priority feature. After all, if you botch, you can just not import the final image.
##
##  e. Finish Character
##     -> Create one image per card
##     -> Organize Specials and Ultras into sheets
##     -> Create a .zip file containing the finalized images
##     -> Download the file

##
## 1. Create a properly formatted CSV file from the supplied values.
#echo CardName,TextBox,Owner,Copies,CardType,Cost > suppliedvalues.csv
#echo "$cardname","$
#| sed -e 's/"/""/' >>suppliedvalues.csv

## 2. If a CSV file was supplied, update it with the supplied values.
##   a. Use "csvtool namedcol" to reorder the columns.
##   b. Use "csvtool pastecol" to update the columns.

## 3. Use "csvtool call" to execute the card generation script for each record in the final CSV file.

csvtool namedcol card_number,armor_BlurColor,armor_BlurDistance,armor_BlurOpacity,armor_BlurRadius,armor_BlurSigma,armor_FontFamily,armor_FontStyle,armor_FontWeight,armor_OffsetX,armor_OffsetY,armor_OutlineColor,armor_OutlineWidth,armor_PointSize,armor_Rotation,armor_StatColor,armor_value,cost_BlurColor,cost_BlurDistance,cost_BlurOpacity,cost_BlurRadius,cost_BlurSigma,cost_FontFamily,cost_FontStyle,cost_FontWeight,cost_OffsetX,cost_OffsetY,cost_OutlineColor,cost_OutlineWidth,cost_PointSize,cost_Rotation,cost_StatColor,cost_value,drive_BlurColor,drive_BlurDistance,drive_BlurOpacity,drive_BlurRadius,drive_BlurSigma,drive_FontFamily,drive_FontStyle,drive_FontWeight,drive_OffsetX,drive_OffsetY,drive_OutlineColor,drive_OutlineWidth,drive_PointSize,drive_Rotation,drive_StatColor,drive_value,guard_BlurColor,guard_BlurDistance,guard_BlurOpacity,guard_BlurRadius,guard_BlurSigma,guard_FontFamily,guard_FontStyle,guard_FontWeight,guard_OffsetX,guard_OffsetY,guard_OutlineColor,guard_OutlineWidth,guard_PointSize,guard_Rotation,guard_StatColor,guard_value,layer_armor_patch,layer_art,layer_art_over_all,layer_art_over_armor_patch,layer_art_over_cost_patch,layer_art_over_drive_patch,layer_art_over_guard_patch,layer_art_over_owner_mark_patch,layer_art_over_power_patch,layer_art_over_range_patch,layer_art_over_secondarycost_patch,layer_art_over_secondaryframe,layer_art_over_secondarysubtype_patch,layer_art_over_secondarytitle,layer_art_over_speed_patch,layer_art_over_tertiarycost_patch,layer_art_over_tertiaryframe,layer_art_over_tertiarysubtype_patch,layer_art_over_title,layer_background,layer_cost_patch,layer_drive_patch,layer_frame,layer_frame_over_background,layer_guard_patch,layer_owner_mark_patch_background,layer_owner_mark_patch_foreground,layer_power_patch,layer_range_patch,layer_secondarycost_patch,layer_secondaryframe,layer_secondarysubtype_patch,layer_speed_patch,layer_tertiarycost_patch,layer_tertiaryframe,layer_tertiarysubtype_patch,owner_mark_art,owner_mark_Height,owner_mark_OffsetX,owner_mark_OffsetY,owner_mark_Width,power_BlurColor,power_BlurDistance,power_BlurOpacity,power_BlurRadius,power_BlurSigma,power_FontFamily,power_FontStyle,power_FontWeight,power_OffsetX,power_OffsetY,power_OutlineColor,power_OutlineWidth,power_PointSize,power_Rotation,power_StatColor,power_value,range_BlurColor,range_BlurDistance,range_BlurOpacity,range_BlurRadius,range_BlurSigma,range_FontFamily,range_FontStyle,range_FontWeight,range_OffsetX,range_OffsetY,range_OutlineColor,range_OutlineWidth,range_PointSize,range_Rotation,range_StatColor,range_value,secondarycost_BlurColor,secondarycost_BlurDistance,secondarycost_BlurOpacity,secondarycost_BlurRadius,secondarycost_BlurSigma,secondarycost_FontFamily,secondarycost_FontStyle,secondarycost_FontWeight,secondarycost_OffsetX,secondarycost_OffsetY,secondarycost_OutlineColor,secondarycost_OutlineWidth,secondarycost_PointSize,secondarycost_Rotation,secondarycost_StatColor,secondarycost_value,secondarytextbox_critical_icon_file,secondarytextbox_critical_icon_height,secondarytextbox_critical_icon_textScaling,secondarytextbox_critical_icon_width,secondarytextbox_font,secondarytextbox_outlinecolor_armor,secondarytextbox_outlinecolor_effect,secondarytextbox_outlinecolor_flavor,secondarytextbox_outlinecolor_guard,secondarytextbox_outlinecolor_passive,secondarytextbox_outlinecolor_power,secondarytextbox_outlinecolor_range,secondarytextbox_outlinecolor_reminder,secondarytextbox_outlinecolor_speed,secondarytextbox_outlinecolor_trigger,secondarytextbox_outlinedensity_effect,secondarytextbox_outlinedensity_flavor,secondarytextbox_outlinedensity_passive,secondarytextbox_outlinedensity_reminder,secondarytextbox_outlinedensity_stats,secondarytextbox_outlinedensity_trigger,secondarytextbox_outlinewidth_effect,secondarytextbox_outlinewidth_flavor,secondarytextbox_outlinewidth_passive,secondarytextbox_outlinewidth_reminder,secondarytextbox_outlinewidth_stats,secondarytextbox_outlinewidth_trigger,secondarytextbox_paragraphspacing,secondarytextbox_textBlurDistance,secondarytextbox_textBlurOpacity,secondarytextbox_textBlurRadius,secondarytextbox_textBlurSigma,secondarytextbox_textcolor_armor,secondarytextbox_textcolor_effect,secondarytextbox_textcolor_flavor,secondarytextbox_textcolor_guard,secondarytextbox_textcolor_passive,secondarytextbox_textcolor_power,secondarytextbox_textcolor_range,secondarytextbox_textcolor_reminder,secondarytextbox_textcolor_speed,secondarytextbox_textcolor_trigger,secondarytextbox_textOffsetX,secondarytextbox_textOffsetY,secondarytextbox_textRotation,secondarytextbox_textTextHeight,secondarytextbox_textTextWidth,secondarytextbox_textvalue,secondarytitle_Alignment,secondarytitle_BlurColor,secondarytitle_BlurDistance,secondarytitle_BlurOpacity,secondarytitle_BlurRadius,secondarytitle_BlurSigma,secondarytitle_FontFamily,secondarytitle_FontStyle,secondarytitle_FontWeight,secondarytitle_OffsetX,secondarytitle_OffsetY,secondarytitle_OutlineColor,secondarytitle_OutlineWidth,secondarytitle_PointSize,secondarytitle_Rotation,secondarytitle_StatColor,secondarytitle_value,speed_BlurColor,speed_BlurDistance,speed_BlurOpacity,speed_BlurRadius,speed_BlurSigma,speed_FontFamily,speed_FontStyle,speed_FontWeight,speed_OffsetX,speed_OffsetY,speed_OutlineColor,speed_OutlineWidth,speed_PointSize,speed_Rotation,speed_StatColor,speed_value,subtitle_Alignment,subtitle_BlurColor,subtitle_BlurDistance,subtitle_BlurOpacity,subtitle_BlurRadius,subtitle_BlurSigma,subtitle_FontFamily,subtitle_FontStyle,subtitle_FontWeight,subtitle_OffsetX,subtitle_OffsetY,subtitle_OutlineColor,subtitle_OutlineWidth,subtitle_PointSize,subtitle_Rotation,subtitle_StatColor,subtitle_value,tertiarycost_BlurColor,tertiarycost_BlurDistance,tertiarycost_BlurOpacity,tertiarycost_BlurRadius,tertiarycost_BlurSigma,tertiarycost_FontFamily,tertiarycost_FontStyle,tertiarycost_FontWeight,tertiarycost_OffsetX,tertiarycost_OffsetY,tertiarycost_OutlineColor,tertiarycost_OutlineWidth,tertiarycost_PointSize,tertiarycost_Rotation,tertiarycost_StatColor,tertiarycost_value,tertiarytextbox_critical_icon_file,tertiarytextbox_critical_icon_height,tertiarytextbox_critical_icon_textScaling,tertiarytextbox_critical_icon_width,tertiarytextbox_font,tertiarytextbox_outlinecolor_armor,tertiarytextbox_outlinecolor_effect,tertiarytextbox_outlinecolor_flavor,tertiarytextbox_outlinecolor_guard,tertiarytextbox_outlinecolor_passive,tertiarytextbox_outlinecolor_power,tertiarytextbox_outlinecolor_range,tertiarytextbox_outlinecolor_reminder,tertiarytextbox_outlinecolor_speed,tertiarytextbox_outlinecolor_trigger,tertiarytextbox_outlinedensity_effect,tertiarytextbox_outlinedensity_flavor,tertiarytextbox_outlinedensity_passive,tertiarytextbox_outlinedensity_reminder,tertiarytextbox_outlinedensity_stats,tertiarytextbox_outlinedensity_trigger,tertiarytextbox_outlinewidth_effect,tertiarytextbox_outlinewidth_flavor,tertiarytextbox_outlinewidth_passive,tertiarytextbox_outlinewidth_reminder,tertiarytextbox_outlinewidth_stats,tertiarytextbox_outlinewidth_trigger,tertiarytextbox_paragraphspacing,tertiarytextbox_textBlurDistance,tertiarytextbox_textBlurOpacity,tertiarytextbox_textBlurRadius,tertiarytextbox_textBlurSigma,tertiarytextbox_textcolor_armor,tertiarytextbox_textcolor_effect,tertiarytextbox_textcolor_flavor,tertiarytextbox_textcolor_guard,tertiarytextbox_textcolor_passive,tertiarytextbox_textcolor_power,tertiarytextbox_textcolor_range,tertiarytextbox_textcolor_reminder,tertiarytextbox_textcolor_speed,tertiarytextbox_textcolor_trigger,tertiarytextbox_textOffsetX,tertiarytextbox_textOffsetY,tertiarytextbox_textRotation,tertiarytextbox_textTextHeight,tertiarytextbox_textTextWidth,tertiarytextbox_textvalue,tertiarytitle_Alignment,tertiarytitle_BlurColor,tertiarytitle_BlurDistance,tertiarytitle_BlurOpacity,tertiarytitle_BlurRadius,tertiarytitle_BlurSigma,tertiarytitle_FontFamily,tertiarytitle_FontStyle,tertiarytitle_FontWeight,tertiarytitle_OffsetX,tertiarytitle_OffsetY,tertiarytitle_OutlineColor,tertiarytitle_OutlineWidth,tertiarytitle_PointSize,tertiarytitle_Rotation,tertiarytitle_StatColor,tertiarytitle_value,textbox_critical_icon_file,textbox_critical_icon_height,textbox_critical_icon_textScaling,textbox_critical_icon_width,textbox_font,textbox_outlinecolor_armor,textbox_outlinecolor_effect,textbox_outlinecolor_flavor,textbox_outlinecolor_guard,textbox_outlinecolor_passive,textbox_outlinecolor_power,textbox_outlinecolor_range,textbox_outlinecolor_reminder,textbox_outlinecolor_speed,textbox_outlinecolor_trigger,textbox_outlinedensity_effect,textbox_outlinedensity_flavor,textbox_outlinedensity_passive,textbox_outlinedensity_reminder,textbox_outlinedensity_stats,textbox_outlinedensity_trigger,textbox_outlinewidth_effect,textbox_outlinewidth_flavor,textbox_outlinewidth_passive,textbox_outlinewidth_reminder,textbox_outlinewidth_stats,textbox_outlinewidth_trigger,textbox_paragraphspacing,textbox_textBlurDistance,textbox_textBlurOpacity,textbox_textBlurRadius,textbox_textBlurSigma,textbox_textcolor_armor,textbox_textcolor_effect,textbox_textcolor_flavor,textbox_textcolor_guard,textbox_textcolor_passive,textbox_textcolor_power,textbox_textcolor_range,textbox_textcolor_reminder,textbox_textcolor_speed,textbox_textcolor_trigger,textbox_textOffsetX,textbox_textOffsetY,textbox_textRotation,textbox_textTextHeight,textbox_textTextWidth,textbox_textvalue,title_Alignment,title_BlurColor,title_BlurDistance,title_BlurOpacity,title_BlurRadius,title_BlurSigma,title_FontFamily,title_FontStyle,title_FontWeight,title_OffsetX,title_OffsetY,title_OutlineColor,title_OutlineWidth,title_PointSize,title_Rotation,title_StatColor,title_value test.cards.csv | csvtool drop 1 - | csvtool call ./csvrecord-to-image.sh -
