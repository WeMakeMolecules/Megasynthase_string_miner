# A simple script to convert PKSs and NRPS from antismash outputs into parseable text strings
Created by Pablo Cruz-Morales
pcruzm@biosustain.dtu.dk

Updated: july 2023

This is  A simple parser to extract all the antismash annotated files in a tab separated table 
Just copy it into the folder with folders of antismash 5,6 or 7 outputs and obtain a parseable table 

    wget  https://github.com/WeMakeMolecules/Megasynthase_string_miner/raw/main/antismash_domain_parser.pl
    use:  perl AS_domain_parser_folder.pl foldername

output goes into the STDOUT
Output structure: 
Folder name locus_tag region_product  AA_seq Domain monomers
# VIVA LA PERL!!!

    example using other scripts from **https://github.com/WeMakeMolecules**
    download genomes: 
    wget https://github.com/WeMakeMolecules/fun-git/raw/main/download_bacterial_genomes.sh
    sh download_bacterial_genomes.sh 'Streptomyces yokosukanensis'
    annotate with antsmash
    antismash --taxon bacteria Streptomyces_yokosukanensis_DSM_40224_GCF001514035.fna
    repeat...

    Then, in a folder containing the following antismash output folders:
    
    ./Streptomyces_yokosukanensis_DSM_40224_GCF001514035/
    ./Rhodococcus_sp_14_2470_1a_GCF002259425/
    ./Streptomyces_sp_NBRC_110030_GCF001417675/
    ./Streptomyces_sp_PAN_FS17_GCF900105465/
    ./Kitasatospora_azatica_KCTC_9699_GCF000744785/
    ./Streptomyces_himastatinicus_ATCC_53653_GCF000158915/
    ./Streptomyces_sp_KS_5_GCF900105275/

    run
    AS_domain_parser_folder.pl foldername |grep "KS-AT-KR-ACP-KS-AT-ACP-TE"

    resuls in STDOUT:

    ./Streptomyces_yokosukanensis_DSM_40224_GCF001514035/NZ_KQ948269.1.final.gbk	361315..365178	6666666.306876.peg.990	t1pks	mal	t1pks	 KS AT ACP Thioesterase
    ./Rhodococcus_sp_14_2470_1a_GCF002259425/NZ_NPFZ01000003.final.gbk	complement(141368..150217)	6666666.305111.peg.647	t1pks	ccmal-mal	t1pks	 KS AT DH KR ACP KS AT ACP Thioesterase
    ./Streptomyces_sp_NBRC_110030_GCF001417675/NZ_BBOK01000021.final.gbk	complement(309919..319254)	6666666.306647.peg.4633	t1pks	ccmal-mal	t1pks	 KS AT DH KR ACP KS AT ACP Thioesterase
    ./Streptomyces_sp_PAN_FS17_GCF900105465/NZ_FNTN01000002.final.gbk	9271485..9280169	6666666.306756.peg.8226	t1pks	ohmal-mal	t1pks	 KS AT DHt KR ACP KS AT ACP Thioesterase
    ./BGC0000080_jerangolid_A_jerangolid_D_Sorangium_cellulosum/BGC0000080.1.final.gbk	46671..55280	6666666.297074.peg.19	t1pks	ohmal-pk	t1pks	 KS AT KR ACP KS AT ACP Thioesterase
    ./Kitasatospora_azatica_KCTC_9699_GCF000744785/NZ_JQMO01000003.final.gbk	complement(1416062..1424557)	6666666.300889.peg.3570	t1pks	ohmal-pk	t1pks	 KS AT KR ACP KS AT ACP Thioesterase
    ./Streptomyces_himastatinicus_ATCC_53653_GCF000158915/NZ_GG657755.1.final.gbk	complement(554640..562682)	6666666.305862.peg.4225	t1pks	ohmal-mal	t1pks	 KS AT KR ACP KS AT ACP Thioesterase
    ./Streptomyces_sp_KS_5_GCF900105275/NZ_FNTE01000002.final.gbk	complement(1159957..1168641)	6666666.306174.peg.9131	t1pks	ohmal-mal	t1pks	 KS AT KR ACP KS AT ACP Thioesterase


