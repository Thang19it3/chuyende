# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_05_101505) do

  create_table "book1s", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_book"
    t.string "ten"
    t.string "nam"
    t.bigint "nxb_id", null: false
    t.bigint "tacgia_id", null: false
    t.bigint "the_loai_sach_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nxb_id"], name: "index_book1s_on_nxb_id"
    t.index ["tacgia_id"], name: "index_book1s_on_tacgia_id"
    t.index ["the_loai_sach_id"], name: "index_book1s_on_the_loai_sach_id"
  end

  create_table "nxbs", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_nxb"
    t.string "ten"
    t.string "diachi"
    t.string "email"
    t.string "thongtin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tacgia", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_tg"
    t.string "ten_tg"
    t.string "website"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "the_loai_saches", charset: "utf8mb4", force: :cascade do |t|
    t.integer "ma_the_loai"
    t.string "ten_the_loai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "book1s", "nxbs"
  add_foreign_key "book1s", "tacgia", column: "tacgia_id"
  add_foreign_key "book1s", "the_loai_saches"
end
