#!/bin/bash
#This script is used to search for all assemblies for a given set of samples across many folders. This helps when files are not organized
#By sample or by gene. It could be modified to search for all genes given a set of assemblies, etc.
while read file
do cp /path/to/plates/Plate_root_`echo $file|cut -d "_" -f 1`/4_Assemble/Assemblies_Func*/*${file}*Medtr5g019040*filtered* <Destination>
done < List_of_wells.txt
