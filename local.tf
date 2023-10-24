# Resource = Bloco
# Local = provider
# File = tipo do provider
# Exemplo = é o nome que eu dou (esse eu escolho)
resource "local_file" "exemplo" {
    filename = "src/exemplo.txt"
    content = var.conteudo
}

data "local_file" "datasource" {
    filename = "src/exemplo.txt"
}

output "saidadatasource" {
    value = data.local_file.datasource.content
}

variable "conteudo" {
    type = string
}

output "conteudo" {
    value = var.conteudo
}

output "id-do-arquivo" {
    value = resource.local_file.exemplo.id
}