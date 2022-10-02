
### DE between Sexes

- Number of differentially expressed transcripts between sexes: **76**
- Number of differentially expressed and annotated transcripts: **37**
- Number of differentially expressed transcripts annotated and related to venom production: **19**

This results are avilible at Results_DE/Transcriptome_Spider/Results_DE/DE_trancripts(76).xlsx
Supplementary Table S2 have 26087 unique transcript in the contign name column. 
Supplementary Table S3 now contains just 32 transcripts DE and annotated.
Suppermentary table S$ now contains just the number counts through 76 DE transcripts
Figure 3 was edited to improve readability.
Figure 2 was edited according to the new results.
### DE between diets

There is no differential expression when comparing diets taking into
account the sex variable (model: \~ SEX + DIET)

-   "wide"

| Diet 1 | Diet 2 |
|--------|--------|
| G      | mix    |
| G      | T      |
| mix    | T      |

**DE_Diets_wide.xlsx**: this file contains the results of the
differential expression between diets, no transcript in any of the
previous three comparisons is differentially expressed. In an attempt to
delve deeper into the results with Yuri, the following comparisons were
made:

-   "granulate"

| Diet 1 | Diet 2 |
|--------|--------|
| FG     | Fmix   |
| FG     | FT     |
| FG     | MG     |
| FG     | Mmix   |
| FG     | MT     |
| Fmix   | FT     |
| Fmix   | MG     |
| Fmix   | Mmix   |
| Fmix   | MT     |
| FT     | MG     |
| FT     | Mmix   |
| FT     | MT     |
| MG     | Mmix   |
| MG     | MT     |
| Mmix   | MT     |

As a result (model: \~ Grupo_intra), the following tables are generated
but despite the fact that some differentially expressed transcripts are
found, these are subject to the expression between sexes. Furthermore,
significance is affected when making comparisons with a small number of
samples, since the differential expression is not consistent among
multiple comparisons.

#### DE_transcripts_counts(624).xlsx

Contains the differentially expressed transcript counts (including those
that failed to be annotated and therefore are not known to be related to
venom production), the "Comparation" column indicates that in which
comparison determined transcript was found differentially expressed,
such comparisons were taken from the column "Grupo_intra" in the
database "Samples_information.csv" or Coldata ;since a transcript may be
differentially expressed in multiple comparisons there are only 55
unique transcripts in the "Contig_Name" column.

At same time, this database contains the basemean values for each
transcript/compararison ("baseMean" column)

-   Differentially expressed transcript count between diets: 624
-   Differentially expressed single transcripts between diets: 195
-   Unique transcripts differentially expressed and noted between diets:
    55 (*turn out to be the same as those achieved when comparing the
    differential expression between diets*)

#### raw_counts_DE_annoted_and_venom_related_diets.xlsx

Contains raw counts of differentially expressed transcripts annotated
and related to venom production (55)

#### raw_counts_DE_annoted_diets.xlsx

Contains raw counts of differentially expressed and annotated
transcripts, regardless of whether or not they are related to venom
production (101)
