library(openxlsx)

SRA_metadata <-  read.xlsx("Data/metadate_SRA_libraries_template.xlsx",sheet = 2)
colnames <- colnames(SRA_metadata)
sample_file_names <- list.files(path = "~/Escritorio/Anexos objetivo 04/R_Transcriptome/Transcriptome/Raw_reads/Raw_reads_UI/") 

sample_file_names[25] <- "AraBANMG4_1.fastq.gz"
SRA_metadata <- data.frame(matrix(NA, nrow = length(sample_file_names)/2, ncol = length(colnames)))
colnames(SRA_metadata) <- colnames
SRA_metadata$sample_name <- sample_file_names |> str_remove_all(regex("_\\d\\.\\w+\\.\\w+")) |> as.factor() |> levels()
SRA_metadata$library_ID <- sample_file_names |> str_remove_all(regex("_\\d\\.\\w+\\.\\w+")) |> as.factor() |> levels()
SRA_metadata$title <- ifelse(str_detect(sample_file_names,"F"), "RNA-Seq of Phoneutria depilata: Venom gland of an adult female","RNA-Seq of Phoneutria depilata: Venom gland of an adult male")
SRA_metadata$library_strategy <- factor("RNA-Seq")
SRA_metadata$library_source <- factor("TRANSCRIPTOMIC")
SRA_metadata$library_selection <- factor("cDNA")
SRA_metadata$library_layout <- factor("paired")
SRA_metadata$platform <- factor("ILLUMINA")
SRA_metadata$instrument_model <- factor("Illumina NovaSeq 6000")
SRA_metadata$design_description <- factor("RNA was extracted using TRIzol reagent, RNA integrity was assessed using an Agilent 2100 Bioanalyzer with the RNA 6000 Nano assay, cDNA library was generated following the standard TruSeq RNA Sample Prep Kit protocol, cDNA fragments generated were purified with QIAquick PCR extraction kit,Sequencing of the amplified samples library was achieved in a single lane on the Illumina NovaSeq™ 6000 platform")
SRA_metadata$filetype <- factor("fastq")
paired_01 <- sample_file_names |> str_detect("_1")
paired_02 <- sample_file_names |> str_detect("_2")
filenames_paired <- data.frame(a = sample_file_names[paired_01],
                               b = sample_file_names[paired_02])
SRA_metadata$filename <- filenames_paired$a
SRA_metadata$filename2 <- filenames_paired$b
SRA_metadata$title <- ifelse(str_detect(filenames_paired$a,"F"), "RNA-Seq of Phoneutria depilata: Venom gland of an adult female","RNA-Seq of Phoneutria depilata: Venom gland of an adult male")

write.xlsx(SRA_metadata,"Data/metadate_SRA_libraries_filled.xlsx")

