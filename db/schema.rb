
ActiveRecord::Schema.define(version: 2019_06_10_181052) do

  create_table "emissions", force: :cascade do |t|
    t.integer "student_id"
    t.integer "food_id"
    t.float "amount"
    t.string "unit"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
