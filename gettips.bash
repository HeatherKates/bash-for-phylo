#Print out the tips from a tree
sed 's/(/\n(/g' Input.tree | sed 's/,/\n/g' | cut -d ":" -f 1 |sed -E -e 's/\(|\)//g'|sed '/^$/d'> Input.tree.tips
#Extract the matching sequences from an alignment
while read file; do grep -A1 $file Input_alignment.fasta >> Alignment_subtree.fasta; done < Input.tree.tips
