puts "Deleting all"
Opcao.delete_all
Faculdade.delete_all
Curso.delete_all
User.delete_all

User.create(email: "bru@estudante.com", password: "estudante")
User.create(email: "guif@estudante.com", password: "estudante")
User.create(email: "guiz@estudante.com", password: "estudante")
User.create(email: "edu@estudante.com", password: "estudante")


puts "Creating all"
require 'csv'


path = 'db/universidade_cursos_updated.csv'


# Seed para cadastrar todas as Faculdade sem repetidas
CSV.foreach(path) do |row|
    faculdade_existante = Faculdade.where(name: row[0])
    faculdade = Faculdade.new
    if faculdade_existante.empty? == false
      "qaui"
    else
      faculdade.name = row[0]
      faculdade.sigla = row[1]
      p faculdade.save
    end
  end

# Seed para cadastrar todos os Cursos
CSV.foreach(path) do |row|
  curso = Curso.new
  curso_existante = Curso.where(name: row[2])
  if curso_existante.empty? == false
    "qsd"
  else
    curso.name = row[2]
    curso.ocde_geral = row[9]
    p curso.save
  end
end

CSV.foreach(path) do |row|
  opcao = Opcao.new
  faculdade = Faculdade.where(name: row[0])
  faculdade
  curso = Curso.where(name: row[2])
  curso
  opcao_existante = Opcao.where(faculdade: faculdade).where(curso: curso)

  if opcao_existante.empty? == false
    "sdf"
  else
    opcao.faculdade = faculdade[0]
    opcao.curso = curso[0]
    opcao.grau = row[3]
    opcao.modalidade = row[4]
    opcao.ano_criacao = row[8]
    opcao.cc = row[5]
    opcao.vagas = row[7]
    opcao.enade = row[6]
    opcao.ocde_curso = row[10]
    p opcao.save
  end
end
