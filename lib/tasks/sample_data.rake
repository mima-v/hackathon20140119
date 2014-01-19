namespace :sample_data do
  desc "サンプルデータ作成"

  task :add_events => :environment do |task, args|
    Event.create!({
      description: "アジャイルに、生きる。",
      image:       "https://dzpp79ucibp5a.cloudfront.net/groups_logos/731_normal_1371632373_スクリーンショット_2012-08-10_0.30.52.jpg",
      location_id: "5",
      max_member:  "10",
      now_member:  "0",
      name:        "アジャイルに生きる",
      opened_at:   "2014/01/20 19:30",
      closed_at:   "2014/01/20 21:30",
      tag_list:    "エンジニア,アジャイル,DevLOVE",
      url:         "http://devlove.doorkeeper.jp/events/7816"
    })

    Event.create!({
      description: "Ruby, Rails 等、技術や世間話などを語り会います。",
      image:       "http://lh5.ggpht.com/kIJ6rJY8n9Nep8mxxXqv7nfDzK5IADzrSVHa22sAO7Bp3qXKvgZxOs0D7PGf81wIWzvv2T3syc9qGVsxtPXZSu0=s610",
      location_id: "5",
      max_member:  "10",
      now_member:  "0",
      name:        "Shinjuku.rb",
      opened_at:   "2014/01/22 19:30",
      closed_at:   "2014/01/22 21:30",
      tag_list:    "エンジニア,アジャイル,DevLOVE",
      url:         "http://www.zusaar.com/event/3247003"
    })

    Event.create!({
      description: "気軽に相談できるもくもく会",
      image:       "https://connpass-tokyo.s3.amazonaws.com/thumbs/fe/63/fe63278dff5ce1c417b81b2bfb76ab29.png",
      location_id: "5",
      max_member:  "11",
      now_member:  "8",
      name:        "第36回 デザイナー向けプログラム部",
      opened_at:   "2014/01/23 19:30",
      closed_at:   "2014/01/23 21:30",
      tag_list:    "エンジニア,アジャイル,DevLOVE",
      url:         "http://connpass.com/event/4829/"
    })

  end
end
