sed 's/(/\n(/g' Input.tree | sed 's/,/\n/g' | cut -d ":" -f 1 |sed -E -e 's/\(|\)//g'|sed '/^$/d'> Input.tree.tips
