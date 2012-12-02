# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121202001438) do
=======
ActiveRecord::Schema.define(:version => 20121202030256) do
<<<<<<< HEAD
>>>>>>> 2cce9408a613095eb36ed01099c824c2e59e7db4
=======
>>>>>>> master
>>>>>>> eaf6743f31a442c902dcb553db1723a51f2686c6

  create_table "meals", :force => true do |t|
    t.string   "category"
    t.string   "description"
    t.string   "photo"
    t.string   "title"
    t.decimal  "price",       :precision => 8, :scale => 2
    t.integer  "user_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "portion"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "image_url"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
