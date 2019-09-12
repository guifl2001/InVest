puts "----------------------------------"
puts "Deleting all"
puts "----------------------------------"
Review.delete_all
Opcao.delete_all
Faculdade.delete_all
Curso.delete_all

puts "----------------------------------"
puts "Creating all"
puts "----------------------------------"
require 'csv'
regex = /(?<name>(.+))[(\[\]](?<sigla>(.+))[)\[\]]/

endereco = "db/updated_endereco.csv"
ranking = "db/datas50.csv"
infos = "db/todasfacul.csv"
opcaos = "db/cursos_facul.csv"
infosFacus = "db/infos_facus.csv"


puts "----------------------------------"
puts "Creating Cursos"
puts "----------------------------------"
#Seed para cadastrar todos os Cursos
CSV.foreach(opcaos) do |row|
  curso = Curso.new
  curso_existante = Curso.where(name: row[2])
  if curso_existante.empty? == false
    "qsd"
  else
    p curso.name = row[2]
    curso.ocde_geral = row[7]
    p curso.save
  end
end

puts "----------------------------------"
puts "Creating Faculdades"
puts "----------------------------------"
#Seed para cadastrar todas as Faculdade sem repetidas
CSV.foreach(ranking) do |row|
  faculdade_existante = Faculdade.where("sigla ILIKE ?", row[1])
  match_data = row[1].match(regex)
  a = Faculdade.new
  # f = Faculdade.find_by("sigla ILIKE ?", row[1])
  if faculdade_existante.empty? == false
    "No tienes"
  else
    if match_data && match_data[:sigla]
      a.ranking = row[0]
      a.name = match_data[:name]
      p a.sigla = match_data[:sigla]
      a.nota = row[4]
      p a.save
    end
  end
end

puts "----------------------------------"
puts "Creating Opcaos"
puts "----------------------------------"
# Seed para cadastrar todos as Opcaos
CSV.foreach(opcaos) do |row|
  opcao = Opcao.new
  match_data = row[1].match(regex)
  faculdade = Faculdade.where(sigla: row[1])
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
    opcao.cc = row[4]
    opcao.enade = row[5]
    opcao.vagas = row[6]
    opcao.ocde_curso = row[8]
    p opcao.save
  end
end

puts "----------------------------------"
puts "Creating Datas de Provas"
puts "----------------------------------"
#Seed para cadastrar as datas de provas
CSV.foreach(ranking) do |row|
  match_data = row[1].match(regex)
  faculdade = Faculdade.where(sigla: match_data[:sigla])
  opcaos = Opcao.where(faculdade: faculdade)
  opcaos.each do |opcao|
    p opcao.data_prova = row[3]
    p opcao.data_inscricao = row[2]
    opcao.save
  end
end

puts "----------------------------------"
puts "Creating Endereços"
puts "----------------------------------"
# Seed para cadastrar os endereços
CSV.foreach(infos) do |row|
  f = Faculdade.find_by("sigla ILIKE ?", row[1])
  if f
    p f.location = row[2]
    f.save
  end
end


puts "----------------------------------"
puts "Creating Chats"
puts "----------------------------------"
#Seed para cadastrar os chats
Curso.all.each do |curso|
  chat = Chat.new
  chat.curso = curso
  chat.save
  p chat
end


# puts "Creating Falsos Comentarios"
#Seed para gerar falsos comentarios
# require 'faker'
# curso = Curso.find(2)
# User.all.each do |user|
#   userch = UserChat.new
#   userch.user = user
#   userch.chat = curso.chat
#   userch.save
#   mess = Message.new
#   mess.user_chat = userch
#   mess.content = Faker::Educator.subject
#   mess.save
#   p mess
# end


puts "----------------------------------"
puts "Creating Imagens dos Cursos"
puts "----------------------------------"

Curso.all.each do |c|
  o = c.ocde_geral
  case o
  when "Ciências sociais, negócios e direito"
    c.photo = "Ciencias-sociais-negocios-direito.jpg"
  when "Agricultura e veterinária"
    c.photo = "agricultura-e-veterinaria.jpg"
  when "Humanidades e artes"
    c.photo = "Artes-humanas.jpg"
  when "Ciências, matemática e computação"
    c.photo = "Ciencias-matematica-computacao.jpg"
  when "Engenharia, produção e construção"
    c.photo = "Engenharia-producao-construcao.jpg"
  when "Educação"
    c.photo = "Educacao.jpg"
  when "Saúde e bem estar social"
    c.photo = "Saude-e-bem-estar-social.jpg"
  when "Serviços"
    c.photo = "Servicos.png"
  end
    p c.save
end


puts "----------------------------------"
puts "Database created and ready to work"
puts "----------------------------------"



puts "----------------------------------"
puts "Creating Infos Facus"
puts "----------------------------------"
# Seed para cadastrar os endereços
CSV.foreach(infosFacus) do |row|
  f = Faculdade.find_by("sigla ILIKE ?", row[0])
  if f
    p f.phone = row[1]
    p f.site = row[2]
    p f.email = row[3]
    p f.tipo = row[4]
    p f.enem = row[5]
    p f.cotas = row[6]
    p f.prouni = row[7]
    p f.fies = row[8]
    p f.Nalunos = row[9]
    p f.Ncursos = row[10]
    p f.ano = row[11]
    p f.cidades = row[12]
    p f.relacao = row[13]
    p f.ideia = row[14]
    p f.intro = row[15]
    p f.historia = row[16]
    p f.geral = row[17]
    f.save
  end
end
