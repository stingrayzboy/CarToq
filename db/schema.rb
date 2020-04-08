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

ActiveRecord::Schema.define(version: 20_200_408_175_735) do
  create_table 'vehicles', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin', force: :cascade do |t|
    t.string 'vin'
    t.float 'grade'
    t.integer 'stocknumber'
    t.string 'make'
    t.string 'model'
    t.string 'series'
    t.integer 'year'
    t.float 'price'
    t.string 'body'
    t.integer 'cylinders'
    t.float 'displacement'
    t.string 'exterior'
    t.string 'interior'
    t.float 'mileage'
    t.string 'transmission'
    t.string 'upholstery'
    t.date 'enddate'
    t.string 'abglocation'
    t.date 'buydate'
    t.string 'buyername'
    t.string 'watchedby'
    t.string 'dealershipname'
    t.string 'drive_train'
    t.text 'condition_report'
    t.string 'sales_rep'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
