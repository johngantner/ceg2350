## Lab 04

- Name: John Gantner
- Email: gantner.6@wright.edu

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

1. `awk '/^Bil/ {print $1}' records.txt`
2. `awk '$4==42 {print $3}' records.txt`
3. `awk '$3~/.wright\.edu/ {print $2,$1, ":", $3}' records.txt`
4. `awk '$6~/1234/ && $3~/.wright\.edu/ {print $2" favorite number is: "$4}' records.txt`
5. `awk '{$4 = "N0T@PL@!NP@$$W0RD"} 1' records.txt > updaterecords.txt`
