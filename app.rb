require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'

CONNECTION = SQLite3::Database.new("products.db")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS products (id INTEGER PRIMARY KEY, general_info TEXT, technical_specs TEXT, where_to_buy TEXT);")
