require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya2"のデータを cgi['goya2']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya3']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>品質がfalseのゴーヤ</p>
      <p>#{get}</p>
    </body>
  </html>"
}
