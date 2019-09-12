class AddInfosToFaculdade < ActiveRecord::Migration[5.2]
  def change
    add_column :faculdades, :phone, :string
    add_column :faculdades, :site, :string
    add_column :faculdades, :email, :string
    add_column :faculdades, :tipo, :string
    add_column :faculdades, :enem, :string
    add_column :faculdades, :cotas, :string
    add_column :faculdades, :prouni, :string
    add_column :faculdades, :fies, :string
    add_column :faculdades, :Nalunos, :string
    add_column :faculdades, :Ncursos, :string
    add_column :faculdades, :ano, :integer
    add_column :faculdades, :cidades, :string
    add_column :faculdades, :relacao, :float
    add_column :faculdades, :ideia, :string
    add_column :faculdades, :intro, :string
    add_column :faculdades, :historia, :string
    add_column :faculdades, :geral, :string
  end
end
