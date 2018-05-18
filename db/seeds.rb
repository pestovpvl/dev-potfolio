3.times do |topic|
    Topic.create!(
        title: "Topic: #{topic}"
    )
end

puts "3 Top good"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post: #{blog}",
        body: "text",
        topic_id: Topic.last.id
    )
end

puts "10 blogs created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 Skils create"


8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}",
        body: "Ruby on Rails",
        main_image: "img",
        thumb_image: "th_img"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}",
        body: "Angular",
        main_image: "img",
        thumb_image: "th_img"
    )
end

3.times do |technology|
   Portfolio.last.technologies.create!(
       name: "Technology #{technology}"
    )
end


puts "3 technology"