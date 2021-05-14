require "csv" # csvファイル読み込み

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.to_s # ユーザーに入力してもらった値をmemo_typeに代入

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets
  file = File.open("#{file_name}.csv", "w") # wにすると、もともとファイルに書かれていたテキストは上書きされる
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押してください"
  memo_message = STDIN.read
  file.puts ("#{memo_message}") 
  
else memo_type = "2"
  puts "編集したいファイル名(拡張子を除いた)を入力してください"
  file_name = gets
  file = File.open("#{file_name}.csv", "a")
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + D押してください"
  memo_message = STDIN.read
  file.puts ("#{memo_message}")
  
end
