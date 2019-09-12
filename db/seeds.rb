# puts "----------------------------------"
# puts "Deleting all"
# puts "----------------------------------"
# Review.delete_all
# Opcao.delete_all
# Faculdade.delete_all
# Curso.delete_all

# puts "----------------------------------"
# puts "Creating all"
# puts "----------------------------------"
# require 'csv'
# regex = /(?<name>(.+))[(\[\]](?<sigla>(.+))[)\[\]]/

# endereco = "db/updated_endereco.csv"
# ranking = "db/datas50.csv"
# infos = "db/todasfacul.csv"
# opcaos = "db/cursos_facul.csv"

# puts "----------------------------------"
# puts "Creating Cursos"
# puts "----------------------------------"
# #Seed para cadastrar todos os Cursos
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

# puts "----------------------------------"
# puts "Creating Faculdades"
# puts "----------------------------------"
# #Seed para cadastrar todas as Faculdade sem repetidas
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

# puts "----------------------------------"
# puts "Creating Opcaos"
# puts "----------------------------------"
# # Seed para cadastrar todos as Opcaos
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
#     opcao.ocde_curso = row[8]
#     p opcao.save
#   end
# end

# puts "----------------------------------"
# puts "Creating Datas de Provas"
# puts "----------------------------------"
# #Seed para cadastrar as datas de provas
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

# puts "----------------------------------"
# puts "Creating Endereços"
# puts "----------------------------------"
# # Seed para cadastrar os endereços
# CSV.foreach(infos) do |row|
#   f = Faculdade.find_by("sigla ILIKE ?", row[1])
#   if f
#     p f.location = row[2]
#     f.save
#   end
# end


# puts "----------------------------------"
# puts "Creating Chats"
# puts "----------------------------------"
# #Seed para cadastrar os chats
# Curso.all.each do |curso|
#   chat = Chat.new
#   chat.curso = curso
#   chat.save
#   p chat
# end


# # puts "Creating Falsos Comentarios"
# #Seed para gerar falsos comentarios
# # require 'faker'
# # curso = Curso.find(2)
# # User.all.each do |user|
# #   userch = UserChat.new
# #   userch.user = user
# #   userch.chat = curso.chat
# #   userch.save
# #   mess = Message.new
# #   mess.user_chat = userch
# #   mess.content = Faker::Educator.subject
# #   mess.save
# #   p mess
# # end


# puts "----------------------------------"
# puts "Creating Imagens dos Cursos"
# puts "----------------------------------"

# Curso.all.each do |c|
#   o = c.ocde_geral
#   case o
#   when "Ciências sociais, negócios e direito"
#     c.photo = "Ciencias-sociais-negocios-direito.jpg"
#   when "Agricultura e veterinária"
#     c.photo = "agricultura-e-veterinaria.jpg"
#   when "Humanidades e artes"
#     c.photo = "Artes-humanas.jpg"
#   when "Ciências, matemática e computação"
#     c.photo = "Ciencias-matematica-computacao.jpg"
#   when "Engenharia, produção e construção"
#     c.photo = "Engenharia-producao-construcao.jpg"
#   when "Educação"
#     c.photo = "Educacao.jpg"
#   when "Saúde e bem estar social"
#     c.photo = "Saude-e-bem-estar-social.jpg"
#   when "Serviços"
#     c.photo = "Servicos.png"
#   end
#     p c.save
# end

# puts "----------------------------------"
# puts "Creating Imagens das Opcaos"
# puts "----------------------------------"

# Opcao.all.each do |o|
#   ranking = o.faculdade.ranking
#   case ranking
#   when 1...25
#     o.photo = "econo-direito.jpg"
#   when 25...50
#     o.photo = "estudando.jpg"
#   when 50...75
#     o.photo = "livros.jpg"
#   when 75...100
#     o.photo = "mat.jpg"
#   when 100...125
#     o.photo = "computa.jpg"
#   when 125...150
#     o.photo = "sozinho.jpg"
#   when 150...175
#     o.photo = "estudando.jpg"
#   when 175..200
#     o.photo = "servi.jpg"
#   end
#     p o.save
# end

puts "----------------------------------"
puts "Creating Imagens das Faculdades"
puts "----------------------------------"

Faculdade.all.each do |f|
  ranking = f.ranking
  case ranking
  when 1...25
    f.photo = "facul.jpg"
  when 25...50
    f.photo = "auditorio.jpg"
  when 50...75
    f.photo = "campus.jpg"
  when 75...100
    f.photo = "escada.jpg"
  when 100...125
    f.photo = "grande.jpg"
  when 125...150
    f.photo = "mesas.jpg"
  when 150...175
    f.photo = "vidros.jpg"
  when 175..200
    f.photo = "lousas.jpg"
  end
    p f.save
end

puts "----------------------------------"
puts "Database created and ready to work"
puts "----------------------------------"
