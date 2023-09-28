## Lab 04

- Name: John Gantner
- Email: 

## Part 1 Answers

1. `grep -P 'x\d{4}$' grepdata.txt`
2. `grep -P '[Cc][Aa]' grepdata.txt`
3. ``
4. `grep -P '\s2\d{3}' grepdata.txt`

## Part 2 Answers

1. `sed -i 's/<\/[^>]*>//g' sedfile.html`
2. `sed -i 's/\s*<li>/- /g' sedfile.html`
3. `sed -i 's/<h1>/# /g' sedfile.html`
4. `sed -i 's/<h2>/## /g' sedfile.html`
5. `sed -i 's/<ul>//g' sedfile.html sed -i 's/<html>//g' sedfile.html`
6. `sed -i 's/Batches/Matches/g' sedfile.html`

## Part 3 Answers

1. `awk '/^Bi/ {print $1}' records.txt`
2. ``
3. ``
4. ``
5. ``
