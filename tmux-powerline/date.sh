# Print the current date.

day=$(date '+%d')
suffix=""
case $day in
  1[123]) suffix="th";;
  *1) suffix="st";;
  *2) suffix="nd";;
  *3) suffix="rd";;
  *) suffix="th";;
esac
formatted_date=$(date "+%a, $day$suffix %b")

# TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT="%d-%b %a"
 TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT="$formatted_date"

generate_segmentrc() {
	read -d '' rccontents  << EORC
# date(1) format for the date. If you don't, for some reason, like ISO 8601 format you might want to have "%D" or "%m/%d/%Y".
export TMUX_POWERLINE_SEG_DATE_FORMAT="${TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT}"
EORC
	echo "$rccontents"
}

__process_settings() {
	if [ -z "$TMUX_POWERLINE_SEG_DATE_FORMAT" ]; then
		export TMUX_POWERLINE_SEG_DATE_FORMAT="${TMUX_POWERLINE_SEG_DATE_FORMAT_DEFAULT}"
	fi
}

run_segment() {
        __process_settings
	date +"$TMUX_POWERLINE_SEG_DATE_FORMAT"
	return 0
}
