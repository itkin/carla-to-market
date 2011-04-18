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

ActiveRecord::Schema.define(:version => 20110418135121) do

  create_table "actions", :force => true do |t|
    t.date     "date"
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actions_contacts", :id => false, :force => true do |t|
    t.integer "action_id"
    t.integer "contact_id"
  end

  add_index "actions_contacts", ["contact_id", "action_id"], :name => "index_actions_contacts_on_contact_id_and_action_id"

  create_table "actions_entities", :id => false, :force => true do |t|
    t.integer "action_id"
    t.integer "entity_id"
  end

  add_index "actions_entities", ["entity_id", "action_id"], :name => "index_actions_entities_on_entity_id_and_action_id"

  create_table "actions_users", :id => false, :force => true do |t|
    t.integer "action_id"
    t.integer "user_id"
  end

  add_index "actions_users", ["user_id", "action_id"], :name => "index_actions_users_on_user_id_and_action_id"

  create_table "addresses", :force => true do |t|
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.text     "street"
    t.string   "zip_code"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressable_id"], :name => "index_addresses_on_addressable_id"

  create_table "answers", :force => true do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "answerable_id"
    t.string   "answerable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["answerable_id"], :name => "index_answers_on_answerable_id"

  create_table "civilities", :force => true do |t|
    t.string "name"
  end

  create_table "contacts", :force => true do |t|
    t.integer  "civility_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comment"
  end

  create_table "contacts_entities", :id => false, :force => true do |t|
    t.integer "contact_id"
    t.integer "entity_id"
  end

  add_index "contacts_entities", ["entity_id", "contact_id"], :name => "index_contacts_entities_on_entity_id_and_contact_id"

  create_table "entities", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
    t.integer  "ancestry_depth",      :default => 0
    t.string   "registration_number"
    t.date     "registered_on"
  end

  create_table "entities_tags", :id => false, :force => true do |t|
    t.integer "entity_id"
    t.integer "tag_id"
  end

  add_index "entities_tags", ["entity_id"], :name => "index_entities_tags_on_entity_id"
  add_index "entities_tags", ["tag_id"], :name => "index_entities_tags_on_tag_id"

  create_table "financial_data", :force => true do |t|
    t.integer  "entity_id"
    t.integer  "year"
    t.integer  "turnover"
    t.float    "profit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ebe"
    t.integer  "nb_employees"
  end

  create_table "phones", :force => true do |t|
    t.string   "fix"
    t.string   "fax"
    t.string   "cell"
    t.string   "phonable_type"
    t.integer  "phonable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phonable_id"], :name => "index_phones_on_phonable_id"

  create_table "tags", :force => true do |t|
    t.string   "label"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
