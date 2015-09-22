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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150922045444) do

  create_table "admins", force: :cascade do |t|
    t.string   "nama",       limit: 255
    t.string   "instansi",   limit: 255
    t.string   "level",      limit: 255
    t.string   "username",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "agamas", force: :cascade do |t|
    t.string   "nama_agama", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "golongan_darahs", force: :cascade do |t|
    t.string   "golongan_darah", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "kabupatens", force: :cascade do |t|
    t.integer  "admin_id",          limit: 4
    t.string   "nama_kabupaten",    limit: 255
    t.string   "kode_pos",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "penduduks_counter", limit: 4
  end

  create_table "kecamatans", force: :cascade do |t|
    t.integer  "admin_id",          limit: 4
    t.integer  "kabupaten_id",      limit: 4
    t.string   "nama_kecamatan",    limit: 255
    t.string   "kode_pos",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "penduduks_counter", limit: 4
  end

  create_table "kelurahans", force: :cascade do |t|
    t.integer  "admin_id",          limit: 4
    t.integer  "kecamatan_id",      limit: 4
    t.string   "nama_kelurahan",    limit: 255
    t.string   "alamat_kel",        limit: 255
    t.string   "kode_pos",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "penduduks_counter", limit: 4
  end

  create_table "pekerjaans", force: :cascade do |t|
    t.string   "jenis_pekerjaan", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "pendidikans", force: :cascade do |t|
    t.string   "jenjang",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "penduduks", force: :cascade do |t|
    t.integer  "nik",                limit: 4
    t.integer  "no_kk",              limit: 4
    t.string   "nama",               limit: 255
    t.integer  "golongan_darah_id",  limit: 4
    t.integer  "status_keluarga_id", limit: 4
    t.string   "tempat_lahir",       limit: 255
    t.date     "tanggal_lahir"
    t.string   "jenis_kelamin",      limit: 255
    t.integer  "pekerjaan_id",       limit: 4
    t.string   "kewarganegaraan",    limit: 255
    t.integer  "agama_id",           limit: 4
    t.integer  "pendidikan_id",      limit: 4
    t.integer  "kelurahan_id",       limit: 4
    t.string   "rt",                 limit: 255
    t.string   "rw",                 limit: 255
    t.string   "alamat",             limit: 255
    t.integer  "penghasilan_id",     limit: 4
    t.string   "status",             limit: 255
    t.integer  "kabupaten_id",       limit: 4
    t.integer  "kecamatan_id",       limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "penghasilans", force: :cascade do |t|
    t.string   "penghasilan", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "keyword",            limit: 255
    t.integer  "agama_id",           limit: 4
    t.integer  "penghasilan_id",     limit: 4
    t.integer  "pekerjaan_id",       limit: 4
    t.integer  "kelurahan_id",       limit: 4
    t.integer  "kecamatan_id",       limit: 4
    t.integer  "kabupaten_id",       limit: 4
    t.integer  "golongan_darah_id",  limit: 4
    t.integer  "pendidikan_id",      limit: 4
    t.integer  "status_keluarga_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "status_keluargas", force: :cascade do |t|
    t.string   "status_keluarga", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
