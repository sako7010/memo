require "csv"
puts "１(新規でメモを作成)２(既存のメモ編集する)"
memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.to_s
  puts "メモしたい内容を入力してください"
  puts "完了したらCtrl+Dを押してください"

  memo_type = $stdin.read    

  CSV.open("#{file_name}.csv",'w') do |memo|   #CSVは大文字　　wで新規作成
    memo << ["#{memo_type}"]
  end

elsif memo_type == "2"
  puts "編集するファイルを入力してください"
  file_name = gets.to_s
  puts "編集したい内容を入力してください"
  puts "完了したらCtrl+Dを押してください"

  memo_type = $stdin.read

  CSV.open("#{file_name}.csv",'a') do |memo|   # aで追加書き込み
    memo << ["#{memo_type}"]
  end
  
end
