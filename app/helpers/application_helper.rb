module ApplicationHelper

  # ページごとの完全なタイトルを返します。                   # コメント行
  def full_title(page_title = "") # メソッド定義とオプション引数
    base_title = "テレビ電話システム"  # 変数への代入
    if page_title.empty? # 論理値テスト
      base_title                                      # 暗黙の戻り値
    else
      page_title + " | " + base_title                 # 文字列の結合
    end
  end

  def time_format(time)
    format("%.2f", (((time.hour * 60) + time.min).to_d / 60.to_d))
  end
end
