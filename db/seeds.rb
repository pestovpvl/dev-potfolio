10.times do |blog|
    Blog.create!(
        title: "My Blog Post: #{blog}",
        body: "text"
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


9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}",
        body: "Lorem",
        main_image: "img",
        thumb_image: "th_img"
    )
end

puts "9 Portfolio create"