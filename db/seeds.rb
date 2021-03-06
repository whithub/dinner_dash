amber = Category.find_or_create_by(title: "Amber")
blonde = Category.find_or_create_by(title: "Blonde")
red = Category.find_or_create_by(title: "Red")
brown = Category.find_or_create_by(title: "Brown")
dark = Category.find_or_create_by(title: "Dark")



Item.create(title: "Amsterdam Big Wheel", description: "Full bodied malt aromas with hints of caramel", price: 400, categories: [amber], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/Bigwheelbeerstore%5B1%5D.JPG?itok=Cjw1-TJQ")
Item.create(title: "Creemore Urbock Dark Lager", description: "British type beer with a delicate fruity smell and robust, malty character", price: 500, categories: [dark], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/12231_Cree_urBock_GlassCan_wht.jpg?itok=W84dlBOx")
Item.create(title: "Unibroue La Fin Du Monde", description: "Clear, crisp, and dry, hops aroma and some sweetness from malt", price: 425, categories: [blonde], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/lafinHERO.jpg?itok=NK4bD8dz")
Item.create(title: "Blonde Molson Export's Ale", description: "Clear, crisp, and dry, hops aroma and some sweetness from malt", price: 550, categories: [blonde], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/sbs/brand/EXPORT%20ARRAY_0.JPG?itok=e5tbJGPW")

Item.create(title: "Guinness Draught Dark Stout", description: "British type beer with a delicate fruity smell and robust, malty character", price: 625, categories: [dark], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/2118-l.jpg?itok=KEcAC7gS")
Item.create(title: "Amsterdam Natural Blonde", description: "Clear, crisp, and dry, hops aroma and some sweetness from malt", price: 475, categories: [blonde], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/BlondeBeerStore.jpg?itok=2j77Gxzl")
Item.create(title: "James Ready Original Ale", description: "Clear, crisp, and dry, hops aroma and some sweetness from malt", price: 500, categories: [blonde], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/JR%20ale%20hero%20copy_0.jpg?itok=8TnpA4h6")
Item.create(title: "Wellington County Dark Ale", description: "British type beer with a delicate fruity smell and robust, malty character", price: 475, categories: [dark], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/CountyDarkAle.jpg?itok=J7fkdMt_")

Item.create(title: "Alexander Keith's Red Ale", description: "Moderate to heavy in flavour and contain hints of caramel", price: 525, categories: [red], image_remote_url:"http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/JR%20ale%20hero%20copy_0.jpg?itok=8TnpA4h6")
Item.create(title: "Millennium Buzz Hemp", description: "Moderate to heavy in flavour and contain hints of caramel", price: 450, categories: [red], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/Buzz%20BTL%26amp%3BCan%26amp%3BGlass%20hr.jpg?itok=t7OgZe1Z")
Item.create(title: "Hockley Dark English Ale", description: "British type beer with a delicate fruity smell and robust, malty character", price: 575, categories: [dark], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/sbs/brand/hockley_dark_ale_large.jpg?itok=umh_X0ho")
Item.create(title: "Bavaria 8.6 Strong Red Lager", description: "Moderate to heavy in flavour and contain hints of caramel", price: 425, categories: [red], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/2178-l.jpg?itok=pyHYNaKK")

Item.create(title: "Big Rock Warthog Brown Ale", description: "Caramel and chocolate flavours and may have a slight citrus accent", price: 525, categories: [brown], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/sbs/brand/warthog-bottle-pint-322x344.jpg?itok=pn2oopQ-")
Item.create(title: "Amsterdam Downtown Brown", description: "Caramel and chocolate flavours and may have a slight citrus accent", price: 550, categories: [brown], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/DowntownBrown2.jpg?itok=0huOFrTo")
Item.create(title: "Sleeman Fine Porter Stout ", description: "Caramel and chocolate flavours and may have a slight citrus accent", price: 475, categories: [brown], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/JSP%20beer-glass-RGB.jpg?itok=LDBdmtRK")
Item.create(title: "Big Rock Traditional Ale", description: "Caramel and chocolate flavours and may have a slight citrus accent", price: 575, categories: [brown], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/sbs/brand/trad-bottle-pint-322x344.jpg?itok=YoToV9rI")

Item.create(title: "Hop City Barking Squirrel Lager", description: "Full bodied malt aromas with hints of caramel", price: 500, categories: [amber], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/HC_BarkingS%20Hero%202013_0.jpg?itok=BWmn7oS5")
Item.create(title: "Alexander Keith's Amber Ale", description: "Full bodied malt aromas with hints of caramel", price: 450, categories: [amber], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/AK_RAA_2012_BotPint_R1.jpg?itok=zA3ZD_Jh")
Item.create(title: "Samuel Adams Boston Lager", description: "Full bodied malt aromas with hints of caramel", price: 550, categories: [amber], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/SABL_TBS%20product%20images%202013.jpg?itok=xyYwFJ8y")
Item.create(title: "Mill St. Tankhouse Ale", description: "Moderate to heavy in flavour and contain hints of caramel", price: 475, categories: [red], image_remote_url: "http://www.thebeerstore.ca/sites/default/files/styles/brand_hero/public/brand/hero/mill%20st%20tank%20house.jpg?itok=BT4O1jcK")

rachel = User.create(full_name: "Rachel Warbelow", email: "demo+rachel@jumpstartlab.com", password: "password")
jeff = User.create(full_name: "Jeff Casimir", display_name: "J3", email: "demo+jeff@jumpstartlab.com", password: "password")
jorge = User.create(full_name: "Jorge Tellez", display_name: "novohispano", email: "demo+jorge@jumpstartlab.com", password: "password")
josh = User.create(full_name: "Josh Cheek", display_name: "josh", email: "demo+josh@jumpstartlab.com", password: "password", role: 1)

order_1  = rachel.orders.create(status: 1, total_price: 575, subtotal: 575)
order_2  = jeff.orders.create(status: 2, total_price: 900, subtotal: 900)
order_3  = jorge.orders.create(status: 3, total_price: 1075, subtotal: 1075)
order_4  = rachel.orders.create(status: 0, total_price: 1250, subtotal: 1250)
order_5  = jeff.orders.create(status: 1, total_price: 1425, subtotal: 1425)
order_6  = jorge.orders.create(status: 2, total_price: 475, subtotal: 475)
order_7  = rachel.orders.create(status: 3, total_price: 800, subtotal: 800)
order_8  = jeff.orders.create(status: 0, total_price: 1025, subtotal: 1025)
order_9  = jorge.orders.create(status: 1, total_price: 1700, subtotal: 1700)
order_10 = jeff.orders.create(status: 2, total_price: 2700, subtotal: 2700)

ItemOrder.create(item_id: 16, quantity: 1, order_id: order_1.id)
ItemOrder.create(item_id: 7, quantity: 1, order_id: order_2.id)
ItemOrder.create(item_id: 15, quantity: 1, order_id: order_2.id)
ItemOrder.create(item_id: 6, quantity: 1, order_id: order_3.id)
ItemOrder.create(item_id: 16, quantity: 1, order_id: order_3.id)
ItemOrder.create(item_id: 17, quantity: 2, order_id: order_4.id)
ItemOrder.create(item_id: 15, quantity: 3, order_id: order_5.id)
ItemOrder.create(item_id: 5, quantity: 1, order_id: order_6.id)
ItemOrder.create(item_id: 1, quantity: 2, order_id: order_7.id)
ItemOrder.create(item_id: 9, quantity: 1, order_id: order_8.id)
ItemOrder.create(item_id: 18, quantity: 1, order_id: order_8.id)
ItemOrder.create(item_id: 12, quantity: 4, order_id: order_9.id)
ItemOrder.create(item_id: 3, quantity: 6, order_id: order_10.id)

