# Presence-Absence-Matrix


[![DOI](https://zenodo.org/badge/86084328.svg)](https://zenodo.org/badge/latestdoi/86084328)


This script creates a presence/absence matrix from two files--one containing all possible values (simple return-delimited list) and one containing a fasta-ish format that looks like this (values are tab-delimited):

    >dataset1-name  
    value1 value2 value3 value5  
    >dataset2-name  
    value2 value5  
    >dataset3-name  
    value1 value3 value5 value6  

Output will be of format (also tab-delimited):  

    Matrix  value1  value2  value3  value4  value5  value6  
    dataset1  1 1 1 0 1 0  
    dataset2  0 1 0 0 1 0  
    dataset3  1 0 1 0 1 1  


Execute with command "Presence_absence_matrix.pl List_of_all_values.txt List_of_data.txt". Cite this script using the DOI above.

