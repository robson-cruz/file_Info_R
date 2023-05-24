diretorio <- "./data/flona_atm/atm_umf_4/"

# Lista todos os arquivos CSV no diretório
arquivos_csv <- list.files(
        path = diretorio, pattern = ".csv", full.names = TRUE, recursive = TRUE
)

# Inicializa o contador de registros
total_linhas <- 0

# Percorre cada arquivo CSV e conta o número de registros
for (arquivo in arquivos_csv) {
        dados <- read.csv2(arquivo)
        total_linhas <- total_linhas + nrow(dados)
}

# Exibe o total de registros
print(paste("O número total de linhas em todas as planilhas é:", total_linhas))
