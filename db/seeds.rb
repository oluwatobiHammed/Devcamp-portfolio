
3.times do |topic|
  Topic.create!(
    title: "My Blog Post #{topic}",
    
  )

end 
puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem Ipsum is simply dummy text 
    of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard 
    dummy text ever since the 1500s, when an unknown
     printer took a galley of type and scrambled it 
     to make a type specimen book. It has survived 
     not only five centuries, but also the leap into 
     electronic typesetting, remaining essentially unchanged. 
     It was popularised in the 1960s with the release of Letraset 
     sheets containing Lorem Ipsum passages, and more recently with 
     desktop publishing software like Aldus PageMaker including versions 
     of Lorem Ipsum.",
    topic_id: Topic.last.id
  )

end 

puts "10 blog posts created"
5.times do |skill|
  Skill.create!(
    title:"Rails #{skill}",
    percent_utilized: 20
  )
end 

puts "5 skills posts created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle:"Ruby On Rails",
    body:"It is a long established fact that a reader 
    will be distracted by the readable content of a page when
     looking at its layout. The point of using Lorem Ipsum is 
     that it has a more-or-less normal distribution of letters, 
     as opposed to using 'Content here, content here', making 
     it look like readable English. Many desktop publishing packages
      and web page editors now use Lorem Ipsum as their default model 
      text, and a search for 'lorem ipsum' will uncover many web sites 
      still in their infancy. Various versions have evolved over the years,
       sometimes by accident, sometimes on purpose (injected humour and the like)",
    main_image:"https://via.placeholder.com/600x400?text=Visit+Blogging.com+Now

    C/O https://placeholder.com/",
    thumb_image:"https://via.placeholder.com/350x200?text=Visit+Blogging.com+Now

    C/O https://placeholder.com/" 

  )
end
puts "8 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name:"Technology: #{technology}"
  )
end 

puts "5 skills posts created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle:"Angular",
    body:"It is a long established fact that a reader 
    will be distracted by the readable content of a page when
     looking at its layout. The point of using Lorem Ipsum is 
     that it has a more-or-less normal distribution of letters, 
     as opposed to using 'Content here, content here', making 
     it look like readable English. Many desktop publishing packages
      and web page editors now use Lorem Ipsum as their default model 
      text, and a search for 'lorem ipsum' will uncover many web sites 
      still in their infancy. Various versions have evolved over the years,
       sometimes by accident, sometimes on purpose (injected humour and the like)",
    main_image:"https://via.placeholder.com/600x400?text=Visit+Blogging.com+Now

    C/O https://placeholder.com/",
    thumb_image:"https://via.placeholder.com/350x200?text=Visit+Blogging.com+Now

    C/O https://placeholder.com/" 

  )
end
puts "1 portfolio items created"