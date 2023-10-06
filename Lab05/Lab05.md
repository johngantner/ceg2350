## Lab 05

- Name: John Gantner
- Email: gantner.6@wright.edu

## Example of usage:
* `Usage: namechange -f find -r replace "string to modify"
 -f The text to find in the filename
 -r The replacement text for the new filename`

## Examples:
* `./namechange.sh -f "\s" -r "-" "hello world.md"
Renamed "hello world.md" to hello-world.md`

*  `./namechange.sh -f "er+" -r "error" "spellingerrrrrr.txt"
Renamed "spellingerrrrrr.txt" to spellingerror.txt`
## bulkrenamer Usage Guide - Remove if not doing extra credit

## Example of usage:
* `Usage: namechange -f find -r replace "string to modify"
 -f The text to find in the filename
 -r The replacement text for the new filename`

## Examples:
Renames all files with jpg to jgp: 
`1. ./bulkrenamer.sh -f '.jgp' -r '.jpg'  1-pic.jgp  2-pic.jgp  3-pic.jgp
    - Renamed "1-pic.jgp" to "1-pic.jpg"
    - Renamed "2-pic.jgp" to "2-pic.jpg"
    - Renamed "3-pic.jgp" to "3-pic.jpg"`
`2. ./bulkrenamer.sh -f '.foo' -r '.bar' 1-foo.txt 2-foo.txt 3-foo.txt
    - Renamed "1-foo.txt" to "1.bar.txt"
    - Renamed "2-foo.txt" to "2.bar.txt"
    - Renamed "3-foo.txt" to "3.bar.txt"`
