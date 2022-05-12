library(dplyr)

lstFiles <- list.files(all.files = TRUE, full.names = TRUE, recursive = TRUE)


file_info <- file.info(lstFiles)
file_info <- file_info %>% tibble::rownames_to_column(var = 'Name')


#file_info$size <- sort(file_info$size, decreasing = TRUE)

file_info %>%
        mutate(Size_MB = size / 1e6) %>%
        mutate(size_GB = Size_MB / 1024) %>%
        arrange(desc(size)) %>%
        as_tibble()
