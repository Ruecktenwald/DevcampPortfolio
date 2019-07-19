3.times do |topic|
  Topic.create!(
    title: "Topic: #{topic}"
    )
end

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "Latest course update: June 2018 - Added a comprehensive tutorial on how to work with the Rails 5.2 encrypted credentials to securely manage configuration variables such as API and application secret keys.",
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

puts "5 blogs created"

8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio}",
    subtitle: "Ruby on Rails",
    body: "Latest course update: June 2018 - Added a comprehensive tutorial on how to work with the Rails 5.2 encrypted credentials to securely manage configuration variables such as API and application secret keys.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio}",
    subtitle: "Angular",
    body: "Latest course update: June 2018 - Added a comprehensive tutorial on how to work with the Rails 5.2 encrypted credentials to securely manage configuration variables such as API and application secret keys.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"

3.times do |tech|
  Portfolio.last.technologies.create!(
    name: "Technology: #{tech}",
    portfolio_id: Portfolio.last.id
    )
end
puts "3 technologies items created"







