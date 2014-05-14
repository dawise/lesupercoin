# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

titles = ["stylo", "maison", "GSM", "cahier Clairefontaine",
  "jus d'orange"]
images = ["http://www.objets-publicitaires-senator.com/images/objets-publicitaires/produit/large/stylo-publicitaire-noir.jpg","http://upload.wikimedia.org/wikipedia/commons/b/b7/Maison_Communale_de_Jurbise.jpg","http://4.bp.blogspot.com/_1UpYFlfWGJo/S-hN6b7kF2I/AAAAAAAADoI/WdLH5BK6DQQ/s1600/First+mobile+phone.jpg","http://www.papeterie-gambetta.fr/laboutique/1339-2416-thickbox/cahier-48-pages-seyes.jpg","http://s3images.coroflot.com/user_files/individual_files/original_127836_R5_HuWSlEcBfMqsqPFMVFO4Hd.png"]
authors = ["John", "Bob", "Ringo", "Diego", "Albert le cinquième mousquetaire"]
for i in 0..4
  Listing.create(title: titles[i],
    price: rand(10..1000),
    author: authors[i],
    telephone: '0647280374',
    picture_url: images[i])
end


