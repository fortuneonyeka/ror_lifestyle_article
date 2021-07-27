

Category.create(name: "Yatch Life", priority: "1")
Category.create(name: "Fast cars", priority: "2")
Category.create(name: "Sports", priority: "3")
Category.create(name: "Business", priority: "4")
Category.create(name: "Tech", priority: "5")
Category.create(name: "Jet Life", priority: "6")
Category.create(name: "Real Estate", priority: "7")
Category.create(name: "Africa", priority: "8")
Category.create(name: "Fashion", priority: "9")
Category.create(name: "Motor Bikes", priority: "10")
Category.create(name: "Politics", priority: "11")

# Seeds for 'users' table
User.create([{ name: 'User1' }, { name: 'User2' }, { name: 'User3' }, { name: 'User4' }, { name: 'User5' })


# creating article on the console
uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/goldenyatch.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Yatch', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 1)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/most.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Yatch', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 1)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/RR.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: '2021 RR', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 2)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/lambo.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Green lambo', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 2)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/sky-sports.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Sky Sports', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 3)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/CR7.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Yatch', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 3)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/business.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Ecommerce', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 4)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/Africa.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Yatch', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 4)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/tech.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Tech', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 5)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/tech.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Yatch', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 5)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/luxury jet.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Luxury jet', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 6)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/golden.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Golden jet', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 6)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/tower.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Real Estate', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 7)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/tower.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'High Rising', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 7)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/gold.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Africa Gold', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 8)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/gold.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Africa', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 8)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/fashion.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Male fashion', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 9)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/rolex.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Rolex', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 9)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/moto bike.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'BMW', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 10)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/red-bike.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'Red BMW', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 10)
article2.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/obama.jpeg'))
uploaded_file = uploader.upload(file)
article1 = Article.new(title: 'Obama', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article1.categories = Category.where(id: 11)
article1.save

uploader = ImageUploader.new(:store)
file = File.new(Rails.root.join('app/assets/images/USA.jpeg'))
uploaded_file = uploader.upload(file)
article2 = Article.new(title: 'USA', body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,', image_data: uploaded_file.to_json, author_id: 1)
article2.categories = Category.where(id: 11)
article2.save