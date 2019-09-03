puts "Deleting all"
Opcao.delete_all
Faculdade.delete_all
Curso.delete_all

puts "Creating all"
require 'csv'

path = "/home/guillaume/code/guifl2001/InVest/db/universidade_cursos_updated.csv"

# Seed para cadastrar todas as Faculdade sem repetidas
CSV.foreach(path) do |row|
    faculdade_existante = Faculdade.where(name: row[1])
    faculdade = Faculdade.new
    if faculdade_existante.empty? == false
      "qaui"
    else
      p faculdade.name = row[1]
      p faculdade.sigla = row[2]
      faculdade.save
    end
  end

# Seed para cadastrar todos os Cursos
CSV.foreach(path) do |row|
  curso = Curso.new
  curso_existante = Curso.where(name: row[4])
  if curso_existante.empty? == false
    "qsd"
  else
    p curso.name = row[4]
    p curso.OCDE_geral = row[11]
    curso.save
  end
end

CSV.foreach(path) do |row|
  opcao = Opcao.new
  faculdade = Faculdade.where(name: row[1])
  faculdade
  curso = Curso.where(name: row[4])
  curso
  opcao_existante = Opcao.where(faculdade: faculdade).where(curso: curso)

  if opcao_existante.empty? == false
    "sdf"
  else
    p opcao.faculdade = faculdade[0]
    p opcao.curso = curso[0]
    p opcao.grau = row[5]
    p opcao.modalidade = row[6]
    p opcao.ano_criacao = row[10]
    p opcao.CC = row[7]
    p opcao.vagas = row[9]
    p opcao.ENADE = row[8]
    p opcao.name =
    p opcao.save
  end
end
