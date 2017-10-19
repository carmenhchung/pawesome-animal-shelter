# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20171019042528) do
=======
ActiveRecord::Schema.define(version: 20171019023339) do
>>>>>>> d127f24285e53acd26ee8f6cd996c97ca7df25b5

  create_table "favorite_puppies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "puppy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["puppy_id"], name: "index_favorite_puppies_on_puppy_id"
    t.index ["user_id"], name: "index_favorite_puppies_on_user_id"
  end

  create_table "puppies", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "breed"
    t.string "size"
    t.string "gender"
    t.text "bio"
    t.boolean "desexed"
    t.boolean "vaccinated"
    t.integer "adoption_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_data"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
