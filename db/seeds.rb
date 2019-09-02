puts "Creating Faculdades"

Faculdade.create(name: "USP")
Faculdade.create(name: "UNICAMP")
Faculdade.create(name: "INSPER")
Faculdade.create(name: "UNIFESP")

puts "Faculdades created"


puts "Creating Cursos"

p1 = Curso.create(name: "Administração")
p2 =Curso.create(name: "Engenharia de Computação")
p3 = Curso.create(name: "Arquitetura")
p4 = Curso.create(name: "Direito")
p5 = Curso.create(name: "Nutrição")

puts "Cursos Created"

puts "Creating Opcaos"

p1 = Opcao.create(faculdade_id: "1", curso_id: "1", data_inscricao: "07/03/2001", data_prova: "01/04/2001", ranking: 5)
p2 = Opcao.create(faculdade_id: "2", curso_id: "2", data_inscricao: "07/03/2001", data_prova: "01/04/2001", ranking: 4)
p3 = Opcao.create(faculdade_id: "3", curso_id: "3", data_inscricao: "07/03/2001", data_prova: "01/04/2001", ranking: 5)
p4 = Opcao.create(faculdade_id: "4", curso_id: "4", data_inscricao: "07/03/2001", data_prova: "01/04/2001", ranking: 3)
p5 = Opcao.create(faculdade_id: "1", curso_id: "5", data_inscricao: "07/03/2001", data_prova: "01/04/2001", ranking: 5)

puts "Opcaos Created"
