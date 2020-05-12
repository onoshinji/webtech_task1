require 'pg'
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin

  result = connection.exec("select quality ,weight from crops where quality = 'false';")
  result.each do |record|
      # 各行を取り出し、putsでターミナル上に出力する
      puts "品質：#{record["quality"]} 重さ#{record["weight"]}"
  end
ensure
  # 最後に.finishでデータベースへのコネクションを切断する
  connection.finish
end
