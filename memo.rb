require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1
  
  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  
  puts "メモの内容を記述してください。"
  puts "記述が終わったらCtrl + Dを押してください。"
  
  memo = readlines
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << memo
  end
  
  puts "---メモの作成が完了しました。---"
  
end 

if memo_type == 2
  
  puts "追記したいファイル名を拡張子を除いて入力してください。"
  import_file_name = gets.chomp
  
  CSV.foreach("#{import_file_name}.csv") do |row|
    
  end
  
  puts "追記内容を入力してください。メモの最後に追記されます。"
  puts "記述が終わったらCtrl + Dを押してください。"
  
  edit_memo = readlines
  
  CSV.open("#{import_file_name}.csv","a") do |csv|
    csv << ["#{edit_memo}"]
  end
  
  puts "---追記が完了しました。---"
  
end 

