cd really_final_outputs/without_index/with_mj_without_filters
for FILE in `ls *.sql`;
do
	tail -n +3 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
	sed 's/+//g' "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
	head -n -2 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
done