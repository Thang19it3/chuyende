class CreateTacgia < ActiveRecord::Migration[6.1]
  def change
    create_table :tacgia do |t|
      t.string :ma_tg
      t.string :ten_tg
      t.string :website
      t.string :ghichu

      t.timestamps
    end
  end
end
