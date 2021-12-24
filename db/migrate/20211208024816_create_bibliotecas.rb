class CreateBibliotecas < ActiveRecord::Migration[5.2]
  def change
    create_table :bibliotecas do |t|
      t.string :title
      t.string :author
      t.string :status
      t.string :date

      t.timestamps
    end
  end
end
