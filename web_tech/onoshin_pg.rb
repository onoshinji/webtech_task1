require 'pg'
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin

  result = connection.exec("select give_for ,weight from crops where give_for != '自家消費';")
  result.each do |record|
      # 各行を取り出し、putsでターミナル上に出力する
      puts "譲渡先：#{record["give_for"]} 重さ#{record["weight"]}"
  end
ensure
  # 最後に.finishでデータベースへのコネクションを切断する
  connection.finish
end
