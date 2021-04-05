class CreateBook1s < ActiveRecord::Migration[6.1]
  def change
    create_table :book1s do |t|
      t.string :ma_book
      t.string :ten
      t.string :nam
      t.references :nxb, null: false, foreign_key: true
      t.references :tacgia, null: false, foreign_key: true
      t.references :the_loai_sach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
