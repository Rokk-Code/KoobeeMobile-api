require 'nokogiri'
# URLに簡単にアクセスできるようにするためのライブラリ
require 'open-uri'
# CSV出力をできるようにするためのライブラリ
require 'csv'
# ------------------------KooBeeに掲載されている全部の団体情報をスクレイピングしてcsvに展開するスクリプトです--------
url = 'http://weebee1212.com/sp/dantai/index.php'
charset = "utf-8"

groups = []

html = open(url) do |f|
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath('//div[@class="result_dantai link_box"]').each do |node|
  baseURL = "http://weebee1212.com/sp/dantai/"

  link = baseURL + node.xpath('a/@href').inner_text # URL
  name = node.xpath('div[@class="dantai_name"]/p[not(@class)]').inner_text #団体名前
  cathegory = node.xpath('div[@class="dantai_name"]/p[@class="dantai_genre"]').inner_text #詳細カテゴリ
  thumbURL = baseURL + node.xpath('div/img/@src')[0].inner_text #サムネ

  detail = Nokogiri::HTML(open(link))
  twitterLink = detail.xpath('//li[@class="link_box twi"]/a/@href').inner_text #twitterLink
  fbLink = detail.xpath('//li[@class="link_box face"]/a/@href').inner_text #fbLink
  hpLink = detail.xpath('//li[@class="link_box hp"]/a/@href').inner_text #hpLink


  profileURL = "" #プロフィール画像のURL
  if twitterLink != ""
    begin
      twitter = Nokogiri::HTML(open(twitterLink))
      profileURL = twitter.xpath('//a[@class="ProfileAvatar-container u-block js-tooltip profile-picture"]/@href').inner_text
    rescue  => e
      profileURL = "https://www.biber.com/dta/themes/biber/core/assets/images/no-featured-175.jpg"
    end
  else
      profileURL = "https://www.biber.com/dta/themes/biber/core/assets/images/no-featured-175.jpg"
  end

  group = [name, cathegory, thumbURL , profileURL, detailLink,twitterLink,fbLink,hpLink]
  groupes.push(group)
end

 CSV.open("kobe-groups.csv", "w") do |csv|
    groupes.each do |bo|
      csv << bo
    end
end
