cd really_final_outputs/spilling
for FILE in `ls *.sql_cstw10`;
do
	tail -n +3 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
	sed 's/+//g' "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
	head -n -2 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
done