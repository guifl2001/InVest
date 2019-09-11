# puts "Deleting all"
# Opcao.delete_all
# Faculdade.delete_all
# Curso.delete_all

# User.create(email: "bru@estudante.com", password: "estudante")
# User.create(email: "guif@estudante.com", password: "estudante")
# User.create(email: "guiz@estudante.com", password: "estudante")
# User.create(email: "edu@estudante.com", password: "estudante")

# puts "Creating all"
# require 'csv'
# regex = /(?<name>(.+))[(\[\]](?<sigla>(.+))[)\[\]]/
# endereco = "db/updated_endereco.csv"
#path = 'db/universidade_cursos_updated.csv'
# ranking = "db/datas50.csv"
# infos = "db/todasfacul.csv"
# opcaos = "db/cursos_facul.csv"

# Seed para cadastrar todos os Cursos
# CSV.foreach(opcaos) do |row|
#   curso = Curso.new
#   curso_existante = Curso.where(name: row[2])
#   if curso_existante.empty? == false
#     "qsd"
#   else
#     p curso.name = row[2]
#     curso.ocde_geral = row[7]
#     p curso.save
#   end
# end

# Seed para cadastrar todas as Faculdade sem repetidas
# CSV.foreach(path) do |row|
#     faculdade_existante = Faculdade.where(name: row[0])
#     faculdade = Faculdade.new
#     if faculdade_existante.empty? == false
#       "qaui"
#     else
#       faculdade.name = row[0]
#       faculdade.sigla = row[1]
#       p faculdade.save
#     end
#   end


# CSV.foreach(ranking) do |row|
#   faculdade_existante = Faculdade.where("sigla ILIKE ?", row[1])
#   match_data = row[1].match(regex)
#   a = Faculdade.new
#   # f = Faculdade.find_by("sigla ILIKE ?", row[1])
#   if faculdade_existante.empty? == false
#     "No tienes"
#   else
#     if match_data && match_data[:sigla]
#       a.ranking = row[0]
#       a.name = match_data[:name]
#       p a.sigla = match_data[:sigla]
#       a.nota = row[4]
#       p a.save
#     end
#   end
# end


# # # Seed para cadastrar todos os Cursos
# # CSV.foreach(path) do |row|
# #   curso = Curso.new
# #   curso_existante = Curso.where(name: row[2])
# #   if curso_existante.empty? == false
# #     "qsd"
# #   else
# #     curso.name = row[2]
# #     curso.ocde_geral = row[9]
# #     p curso.save
# #   end
# # end

# CSV.foreach(opcaos) do |row|
#   opcao = Opcao.new
#   match_data = row[1].match(regex)
#   faculdade = Faculdade.where(sigla: row[1])
#   faculdade
#   curso = Curso.where(name: row[2])
#   curso
#   opcao_existante = Opcao.where(faculdade: faculdade).where(curso: curso)

#   if opcao_existante.empty? == false
#     "sdf"
#   else
#     opcao.faculdade = faculdade[0]
#     opcao.curso = curso[0]
#     opcao.grau = row[3]
#     opcao.cc = row[4]
#     opcao.enade = row[5]
#     opcao.vagas = row[6]
#     opcao.ocde_curso = row[9]
#     p opcao.save
#   end
# end

# CSV.foreach(ranking) do |row|
#   match_data = row[1].match(regex)
#   faculdade = Faculdade.where(sigla: match_data[:sigla])
#   opcaos = Opcao.where(faculdade: faculdade)
#   opcaos.each do |opcao|
#     p opcao.data_prova = row[3]
#     p opcao.data_inscricao = row[2]
#     opcao.save
#   end
# end

# # Seed para cadastrar os endereços
# CSV.foreach(infos) do |row|
#   f = Faculdade.find_by("sigla ILIKE ?", row[1])
#   if f
#     p f.location = row[2]
#     f.save
#   end
# end

# Curso.all.each do |curso|
#   chat = Chat.new
#   chat.curso = curso
#   chat.save
#   p chat
# end

require 'faker'
curso = Curso.find(2)
User.all.each do |user|
  userch = UserChat.new
  userch.user = user
  userch.chat = curso.chat
  userch.save
  mess = Message.new
  mess.user_chat = userch
  mess.content = Faker::Educator.subject
  mess.save
  p mess
end
