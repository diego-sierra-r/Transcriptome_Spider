library(openxlsx)
library(stringr)
library(lubridate)
set.seed(123456789)
metadata <-  read.xlsx("Data/metadate_SRA_template.xlsx",startRow = 13)

colnames <- colnames(metadata)
sample_file_names <- list.files(path = "~/Escritorio/Anexos objetivo 04/R_Transcriptome/Transcriptome/Raw_reads/Raw_reads_UI/") 
sample_file_names[25] <- "AraBANMG4_1.fastq.gz"

metadata <- data.frame(matrix(NA, nrow = length(sample_file_names)/2, ncol = length(colnames)))
colnames(metadata) <- colnames

metadata$`*sample_name` <- sample_file_names |> str_remove_all(regex("_\\d\\.\\w+\\.\\w+")) |> as.factor() |> levels()
metadata$sample_title <- sample_file_names |> str_remove_all(regex("_\\d\\.\\w+\\.\\w+")) |> as.factor() |> levels()
metadata$`*organism` <- factor("Phoneutria depilata")
metadata$isolate <- factor("Venom gland")
metadata$isolation_source <- factor("Sample collected in Huila - Colombia, Templerature: 24.5°C; RH: 75.9%")
metadata$`*collection_date` <- factor("2019-08-23")
metadata$`*geo_loc_name` <- factor("Colombia: Huila, Oporapa")
metadata$`*tissue` <- factor("Venom gland")
metadata$altitude <- seq(1143,1222,1) |> sample(20)
metadata$collected_by <- factor("Diego Sierra Ramirez")
metadata$dev_stage <- factor("Adult")
metadata$env_broad_scale <- factor("Broadleaf forest [ENVO:01000197]")
metadata$identified_by <- factor("Julio Cesar Gonzalez")
metadata$lat_lon <- factor("2.007272 N -76.017203 W")
metadata$sex <- ifelse(metadata$sample_title |> str_detect("F") == T, yes = "Female", no = "Male")
metadata$temp <- format(round(runif(20,19.5,22),2))
write.xlsx(metadata,"Data/metadate_SRA_filled.xlsx")


       