user1 = User.create!(username: 'fan', password: 123456)

Feed.create!([
{name: "MacRumors", website: "http://www.macrumors.com/", url: "http://feeds.macrumors.com/MacRumors-All", description: "Apple, iPhone, iPad, Mac News and Rumors."},
{name: "Bike EXIF", website: "http://www.bikeexif.com/", url: "http://www.bikeexif.com/feed", description: "Bike EXIF is a showcase for the world's most exciting custom motorcycles."},
{name: "The Verge", website: "http://www.theverge.com/", url: "http://www.theverge.com/rss/group/features/index.xml", description: "Covering the intersection of technology, science, art, and culture."},
{name: "TechCrunch", website: "https://techcrunch.com/", url: "http://feeds.feedburner.com/TechCrunch/", description: "TechCrunch is a leading technology media property, dedicated to obsessively profiling startups, reviewing new Internet products, and breaking tech news."},
{name: "Digital Trends", website: "http://www.digitaltrends.com/", url: "http://www.digitaltrends.com/feed/", description: "Digital Trends is your premier source for technology news and unbiased expert product reviews of HDTVs, laptops, smartphones and more."},
{name: "Wired", website: "https://www.wired.com/", url: "http://www.wired.com/feed/", description: "Get in-depth coverage of current and future trends in technology, and how they are shaping business, entertainment, communications, science, politics, and culture."},
{name: "Lifehacker", website: "http://lifehacker.com/", url: "http://lifehacker.com/rss", description: "Tips and downloads for getting things done."}
])

Category.create!([
  {name: 'Mac'},
  {name: 'Tech'},
  {name: 'Car'}
])


CategoryFeed.create!([
  {feed_id: Feed.find_by(name: "MacRumors").id, category_id: Category.find_by(name: "Mac").id},
  {feed_id: Feed.find_by(name: "Lifehacker").id, category_id: Category.find_by(name: "Tech").id},
  {feed_id: Feed.find_by(name: "Wired").id, category_id: Category.find_by(name: "Tech").id},
  {feed_id: Feed.find_by(name: "Digital Trends").id, category_id: Category.find_by(name: "Tech").id},
  {feed_id: Feed.find_by(name: "TechCrunch").id, category_id: Category.find_by(name: "Tech").id},
  {feed_id: Feed.find_by(name: "The Verge").id, category_id: Category.find_by(name: "Tech").id},
  {feed_id: Feed.find_by(name: "Bike EXIF").id, category_id: Category.find_by(name: "Car").id}
  ])


Collection.create!([
  {name: 'Cool Car', user_id: User.find_by(username: 'fan').id},
  {name: 'My Tech', user_id: User.find_by(username: 'fan').id}
  ])

CollectionFeed.create!([
  {collection_id: Collection.find_by(name: 'My Tech').id, feed_id: Feed.find_by(name: 'MacRumors').id},
  {collection_id: Collection.find_by(name: 'My Tech').id, feed_id: Feed.find_by(name: 'Wired').id},
  {collection_id: Collection.find_by(name: 'My Tech').id, feed_id: Feed.find_by(name: 'TechCrunch').id},
  {collection_id: Collection.find_by(name: 'My Tech').id, feed_id: Feed.find_by(name: 'The Verge').id},
  {collection_id: Collection.find_by(name: 'My Tech').id, feed_id: Feed.find_by(name: 'Lifehacker').id},
  {collection_id: Collection.find_by(name: 'Cool Car').id, feed_id: Feed.find_by(name: 'Bike EXIF').id}
  ])


Article.create!([
  {title: "Mac yeah1", feed_id: 1, url: "mac_url1"},
  {title: "Mac yeah2", feed_id: 1, url: "mac_url2"},
  {title: "code1", feed_id: 2, url: "code_url1"},
  {title: "code2", feed_id: 2, url: "code_url2"},
  {title: "code3", feed_id: 3, url: "code_url3"},
  {title: "code4", feed_id: 3, url: "code_url4"}
  ])
