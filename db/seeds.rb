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
# infosFacus = "db/infos_facus.csv"


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
#     o.photo = "mat.jpg"
#   when 125...150
#     o.photo = "sozinho.jpg"
#   when 150...175
#     o.photo = "estudando.jpg"
#   when 175..200
#     o.photo = "servi.jpg"
#   end
#     p o.save
# end

# puts "----------------------------------"
# puts "Creating Imagens das Faculdades"
# puts "----------------------------------"

# f = Faculdade.find(1)
# f.photo = "https://ogimg.infoglobo.com.br/in/23749432-3da-a25/FT1086A/652/x59570119_PA-Sao-PauloSP-09-06-2016Alunos-e-funcionarios-da-USP-fecham-entradas-do-campus-do-But.jpg.pagespeed.ic.zPj3N701F8.jpg"
# f.save
# f = Faculdade.find(2)
# f.photo = "https://asemananews.com.br/wp-content/uploads/2019/02/6750988_x720.jpg"
# f.save
# f = Faculdade.find(3)
# f.photo = "https://farm5.staticflickr.com/4529/25007898168_34b5b392c9_z.jpg"
# f.save
# f = Faculdade.find(4)
# f.photo = "https://imgsapp2.correiobraziliense.com.br/app/noticia_127983242361/2019/03/20/744289/20190320204720223136o.JPG"
# f.save
# f = Faculdade.find(5)
# f.photo = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSST5QIAq0p4QWO37CzU9AuOtyNNVRAIK7K2Rv6b4Qq-LowqJxZ"
# f.save
# f = Faculdade.find(6)
# f.photo = "http://eneac2013.ufsc.br/files/2012/04/centro-de-cultura-e-eventos-ufsc.jpg"
# f.save
# f = Faculdade.find(7)
# f.photo = "https://blog-static.infra.grancursosonline.com.br/wp-content/uploads/2019/08/21145241/residencia-UFPR.jpg"
# f.save
# f = Faculdade.find(8)
# f.photo = "https://www2.unesp.br/Home/unesp40anos/unesp_marilia.jpg"
# f.save
# f = Faculdade.find(9)
# f.photo = "https://www.pragmatismopolitico.com.br/wp-content/uploads/2018/10/professores-da-unb-eleicoes-de-2018.jpg"
# f.save
# f = Faculdade.find(10)
# f.photo = "https://imagens1.ne10.uol.com.br/blogsjconline/havagas/2016/08/ufpe-arnaldo-carvalho-jc.jpg"
# f.save
# f = Faculdade.find(11)
# f.photo = "https://farm1.staticflickr.com/974/40388334200_78082d90ea_z.jpg"
# f.save
# f = Faculdade.find(12)
# f.photo = "https://live.staticflickr.com/7448/12485555015_a42b877793_b.jpg"
# f.save
# f = Faculdade.find(13)
# f.photo = "https://diariodorio.com/wp-content/uploads/2019/05/uerj.jpg"
# f.save
# f = Faculdade.find(14)
# f.photo = "https://correio-cdn1.cworks.cloud/fileadmin/_processed_/8/1/csm_ufba_97c3c75d96.jpg"
# f.save
# f = Faculdade.find(15)
# f.photo = "https://www.vestibulandoweb.com.br/educacao/wp-content/uploads/2019/01/campus-ufv-1280x720.jpg"
# f.save
# f = Faculdade.find(16)
# f.photo = "http://4.bp.blogspot.com/-7VEEszJZOKc/VVPxD3ofSqI/AAAAAAAAGuo/bg-WE6ks39A/s1600/uff.jpg"
# f.save
# f = Faculdade.find(17)
# f.photo = "https://abrilveja.files.wordpress.com/2016/05/unifesp-original.jpeg"
# f.save
# f = Faculdade.find(18)
# f.photo = "https://www.rbsdirect.com.br/imagesrc/23624042.jpg?w=700"
# f.save
# f = Faculdade.find(19)
# f.photo = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE__PEG1k2PEXTzuQV94e-op0pPTYOP1PXeS5LbhnHExkjSB0e"
# f.save
# f = Faculdade.find(20)
# f.photo = "https://s2.glbimg.com/83cBP-N4nYGaWwI5D4BmltiycAw=/0x0:1700x1065/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/E/Z/qW0JHtSxahOxhzhqazGw/morto-montana.jpg"
# f.save
# faculdade  = Faculdade.find(21)
# faculdade.photo = 'https://concursos.pontua.com/wp-content/uploads/2019/07/ufsm-concurso-superior.jpg'
# faculdade.save
# faculdade  = Faculdade.find(22)
# faculdade.photo = 'https://ufmg.br/thumbor/N0BCK-JFKEN1jBlF8HSwpP-Gu8Q=/0x0:600x299/600x299/https://ufmg.br/storage/1/2/d/8/12d802116e7fb9886c7f92de08011023_15217445860116_1901451504.png'
# faculdade.save
# faculdade  = Faculdade.find(23)
# faculdade.photo = 'http://www2.ufjf.br/ufjf/wp-content/uploads/sites/3/2015/12/12681365814_aefe2bcaf3_z.jpg'
# faculdade.save
# faculdade  = Faculdade.find(24)
# faculdade.photo = 'http://www.uel.br/ccs/clinicamedica/portal/pages/arquivos/HUMed(1).jpg'
# faculdade.save
# faculdade  = Faculdade.find(25)
# faculdade.photo = 'https://s2.glbimg.com/GoQnpU3OxDpWUZJp79QR8WiWSdU=/0x0:2100x1045/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/o/9/KecY8MSa6z7BM3AdRVEQ/uem.jpg'
# faculdade.save
# faculdade  = Faculdade.find(26)
# faculdade.photo = 'https://blog.grancursosonline.com.br/wp-content/uploads/2018/08/UFES-imagem.jpg'
# faculdade.save
# faculdade  = Faculdade.find(27)
# faculdade.photo = 'https://portugaldigital.com.br/wp-content/uploads/2017/09/ufpa.jpg'
# faculdade.save
# faculdade  = Faculdade.find(28)
# faculdade.photo = 'https://www.hojeemdia.com.br/polopoly_fs/1.680137!/image/image.jpg_gen/derivatives/landscape_653/image.jpg'
# faculdade.save
# faculdade  = Faculdade.find(29)
# faculdade.photo = 'https://www.lavras24horas.com.br/portal/wp-content/uploads/2017/10/20171019191017296630u-820x420.jpg'
# faculdade.save
# faculdade  = Faculdade.find(30)
# faculdade.photo = 'http://www.defrayfire.com/wp-content/uploads/2017/11/images-10.jpg'
# faculdade.save
# faculdade  = Faculdade.find(31)
# faculdade.photo = 'https://media.gazetadopovo.com.br/2018/12/a6b78883d14394de816810d87f584f5b-gpMedium.jpg'
# faculdade.save
# faculdade  = Faculdade.find(32)
# faculdade.photo = 'https://www.estudopratico.com.br/wp-content/uploads/2017/01/conheca-a-universidade-federal-de-pelotas-ufpel-1-1200x675.jpg'
# faculdade.save
# faculdade  = Faculdade.find(33)
# faculdade.photo = 'https://www.mackenzie.br/fileadmin/user_upload/190118-VSR-Faculdade-Presbiteriana-Mackenzie-031.jpg'
# faculdade.save
# faculdade  = Faculdade.find(34)
# faculdade.photo = 'https://www.estudopratico.com.br/wp-content/uploads/2016/11/conheca-a-universidade-federal-do-mato-grosso-ufmt-1200x675.jpg'
# faculdade.save
# faculdade  = Faculdade.find(35)
# faculdade.photo = 'https://www.estudopratico.com.br/wp-content/uploads/2016/12/conheca-a-universidade-federal-rural-do-rio-de-janeiro-ufrrj-1200x675.jpg'
# faculdade.save
# faculdade  = Faculdade.find(36)
# faculdade.photo = 'https://vestibularhoje.com.br/wp-content/uploads/2017/08/74de592d6e962cca3aa212f6be361c7b.png'
# faculdade.save
# faculdade  = Faculdade.find(37)
# faculdade.photo = 'https://www.bigmenu.com.br/arquivos/83/conteudo/posts/807350.jpg'
# faculdade.save
# faculdade  = Faculdade.find(38)
# faculdade.photo = 'https://expressaosergipana.com.br/wp-content/uploads/2017/04/UFS.jpg'
# faculdade.save
# faculdade  = Faculdade.find(39)
# faculdade.photo = 'https://ufop.br/sites/default/files/styles/topo_da_not_cia/public/ufop_1_1.jpg?itok=Jx5Nd8wZ'
# faculdade.save
# faculdade  = Faculdade.find(40)
# faculdade.photo = 'http://www.energiaconcursos.com.br/wp-content/uploads/2018/05/udesc1.jpg'
# faculdade.save
# faculdade  = Faculdade.find(41)
# faculdade.photo = 'https://s3.portalt5.com.br/imagens/ufcg-1.jpg?mtime=20171123071718'
# faculdade.save
# faculdade  = Faculdade.find(42)
# faculdade.photo = 'https://www.estudopratico.com.br/wp-content/uploads/2017/01/conheca-a-universidade-federal-de-pelotas-ufpel-1-1200x675.jpg'
# faculdade.save
# faculdade  = Faculdade.find(43)
# faculdade.photo = 'http://www.uenf.br/portal/cache/c/1cd65400310c4092bbfec52e9e6bd529.jpg'
# faculdade.save
# faculdade  = Faculdade.find(44)
# faculdade.photo = 'https://media.licdn.com/dms/image/C4E1BAQH4Rz00Hu8dlQ/company-background_10000/0?e=2159024400&v=beta&t=PPozoXpt1yE6Ce6Af0rwDtuJmwmx7zgoKGI8nSnN_Gc'
# faculdade.save
# faculdade  = Faculdade.find(45)
# faculdade.photo = 'https://uploads.metropoles.com/wp-content/uploads/2019/04/19210737/UCB.jpg'
# faculdade.save
# faculdade  = Faculdade.find(46)
# faculdade.photo = 'https://especiais.gazetadopovo.com.br/wp-content/uploads/sites/22/2019/03/25201120/gazeta-do-povo-blog-concurseiros-uepg-1024x595.jpg'
# faculdade.save
# faculdade  = Faculdade.find(47)
# faculdade.photo = 'http://portalamazonia.com/uploads/pics/ufam_g1_03.jpg'
# faculdade.save
# faculdade  = Faculdade.find(48)
# faculdade.photo = 'https://www.estudopratico.com.br/wp-content/uploads/2016/11/conheca-a-universidade-federal-do-piaui-ufpi-e1479305363572-1200x675.jpg'
# faculdade.save
# faculdade  = Faculdade.find(49)
# faculdade.photo = 'https://www.enfoquems.com.br/media/images/3750/61094/5cf6559dea66c0bda6e73886729a9947a6cb600fd4ef0.jpg'
# faculdade.save
# faculdade  = Faculdade.find(50)
# faculdade.photo = 'https://s2.glbimg.com/Ilu2ajYemKGcGcNza2CCTARSX7Q=/0x0:1024x617/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2018/M/t/VnKT0GRlAOiQVuyQJ5hg/24697023338-6f648ca907-b.jpg'
# faculdade.save
# faculdade  = Faculdade.find(51)
# faculdade.photo = 'http://www.uesc.br/noticias/imagens/uesc__jonildo_gloria.jpg'
# faculdade.save
# faculdade  = Faculdade.find(52)
# faculdade.photo = 'https://www.ufsj.edu.br/portal2-repositorio/Image/ascom/noticias/ufsj_ctan_site.jpg'
# faculdade.save
# faculdade  = Faculdade.find(53)
# faculdade.photo = 'https://www.furg.br/arquivos/nossos-campi/carreiros-aerea-furg.png'
# faculdade.save
# faculdade  = Faculdade.find(54)
# faculdade.photo = 'https://www.estudopratico.com.br/wp-content/uploads/2016/12/conheca-a-pontificia-universidade-catolica-de-sao-paulo-pucsp.jpg'
# faculdade.save
# faculdade  = Faculdade.find(55)
# faculdade.photo = 'https://www.cgu.gov.br/noticias/2018/03/operacao-14-bis-apura-desvios-em-contratos-da-universidade-tecnologica-federal-do-parana/utfpr-site.png/@@images/bf799d80-e66f-4a34-aebb-b7244aaea7c2.png'
# faculdade.save
# faculdade  = Faculdade.find(56)
# faculdade.photo = 'https://upload.wikimedia.org/wikipedia/commons/9/95/Puc-minas.gif'
# faculdade.save
# faculdade  = Faculdade.find(57)
# faculdade.photo = 'https://static.tribunadoceara.com.br/wp-content/uploads/sites/4/2015/11/uece1.jpg'
# faculdade.save
# faculdade  = Faculdade.find(58)
# faculdade.photo = 'https://comunidade.f7noticias.com/wp-content/uploads/2019/05/images-2019-05-13T092453.071.jpeg'
# faculdade.save
# faculdade  = Faculdade.find(59)
# faculdade.photo = 'https://i.ytimg.com/vi/xmR3RQWclLc/maxresdefault.jpg'
# faculdade.save
# faculdade  = Faculdade.find(60)
# faculdade.photo = 'https://www.todabahia.com.br/wp-content/uploads/2015/09/650x375_uefs-feira-de-santana-bahia_1561745-1000x530.jpg'
# faculdade.save
# f = Faculdade.find(61)
# f.photo = "https://www.assufrgs.org.br/wp-content/uploads/2017/12/24796339_1756178517747897_6092167289558725211_n-800x445.jpg"
# f.save
# f = Faculdade.find(62)
# f.photo = "https://www.diariodosudoeste.com.br/fl/normal/1540904170-5bd8552b205bb_unioeste.jpg"
# f.save
# f = Faculdade.find(63)
# f.photo = "https://d3q93wnyp4lkf8.cloudfront.net/revista/post_images/6904/21d938fa05d9a2d0df0299950966cb8958e48abb.png?1519914449"
# f.save
# f = Faculdade.find(64)
# f.photo = "https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2016/10/28/672450/20161028172406921397a.gif"
# f.save
# f = Faculdade.find(65)
# f.photo = "http://gujsp.com.br/wp-content/uploads/2017/05/puc-campinas-vestibular-2017.jpg"
# f.save
# f = Faculdade.find(66)
# f.photo = "http://www.ufrpe.br/sites/www.ufrpe.br/files/perfil_menor_0.jpg"
# f.save
# f = Faculdade.find(67)
# f.photo = "https://i.ytimg.com/vi/frI3_tTwXoU/maxresdefault.jpg"
# f.save
# f = Faculdade.find(68)
# f.photo = "https://marciatravessoni.com.br/wp-content/uploads/2018/10/1.jpg"
# f.save
# f = Faculdade.find(69)
# f.photo = "https://d176ag6w8jsbr9.cloudfront.net/posts/6112-post-saiu-edital-2019-para-area-de-apoio-da-unirio.png"
# f.save
# f = Faculdade.find(70)
# f.photo = "http://www.novacidade.com/wnoticias/img_noticias/geral_cruzeiro-do-sul-unifr.jpg"
# f.save
# f = Faculdade.find(71)
# f.photo = "https://www.upf.br//_uploads/Conteudo/DIREITO.jpg"
# f.save
# f = Faculdade.find(72)
# f.photo = "http://guaiba.com.br/wp-content/uploads/2018/01/ulbra.jpg"
# f.save
# f = Faculdade.find(73)
# f.photo = "http://www.meon.com.br/files/media/originals/portaria_central.jpg"
# f.save
# f = Faculdade.find(74)
# f.photo = "https://www.colegioweb.com.br/wp-content/uploads/2017/06/Confira-a-lista-de-aprovados-do-vestibular-2017_2-da-Feevale.jpg"
# f.save
# f = Faculdade.find(75)
# f.photo = "http://osoldiario.rbsdirect.com.br/imagesrc/17001474.jpg?w=620"
# f.save
# f = Faculdade.find(76)
# f.photo = "https://s1.static.brasilescola.uol.com.br/be/vestibular/campus-i-5398751dee7b6.jpg"
# f.save
# f = Faculdade.find(77)
# f.photo = "https://omunicipioblumenau.com.br/wp-content/uploads/2018/02/furb.jpg"
# f.save
# f = Faculdade.find(78)
# f.photo = "https://www.estudopratico.com.br/wp-content/uploads/2017/03/unipampa-divulgado-o-resultado-da-chamada-por-nota-enem-1200x675.jpg"
# f.save
# f = Faculdade.find(79)
# f.photo = "https://www.unip.br/presencial/img/interna/campus.jpg"
# f.save
f = Faculdade.find(4)
f.photo = "https://abrilveja.files.wordpress.com/2016/05/unicamp-620-original6.jpeg?quality=70&strip=info&resize=680,453"
f.save

# puts "----------------------------------"
# puts "Creating Infos Facus"
# puts "----------------------------------"
# # Seed para cadastrar os endereços
# CSV.foreach(infosFacus) do |row|
#   f = Faculdade.find_by("sigla ILIKE ?", row[0])
#   if f
#     p f.phone = row[1]
#     p f.site = row[2]
#     p f.email = row[3]
#     p f.tipo = row[4]
#     p f.enem = row[5]
#     p f.cotas = row[6]
#     p f.prouni = row[7]
#     p f.fies = row[8]
#     p f.Nalunos = row[9]
#     p f.Ncursos = row[10]
#     p f.ano = row[11]
#     p f.cidades = row[12]
#     p f.relacao = row[13]
#     p f.ideia = row[14]
#     p f.intro = row[15]
#     p f.historia = row[16]
#     p f.geral = row[17]
#     f.save
#   end
# end

# puts "----------------------------------"
# puts "Database created and ready to work"
# puts "----------------------------------"
