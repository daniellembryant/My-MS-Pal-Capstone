User.create!([
  {name: "Jackson Samuel", email: "sam_1999@yahoo.com", age_group: "36-50", password: "password", location: "Milwaukee, WI", diagnosis_date: "1988-10-03", image_url: "https://images.unsplash.com/photo-1484516396415-4971641de8e0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2662&q=80", admin: false},
  {name: "Alex Jay", email: "alex99@gmail.com", age_group: "18-35", password: "password", location: "Portland, OR", diagnosis_date: "2018-01-23", image_url: "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80", admin: false},
  {name: "John Bradford", email: "bradfordj@yahoo.com", age_group: "36-50", password: "password", location: "Atlanta, GA", diagnosis_date: nil, image_url: "https://images.unsplash.com/photo-1521886243261-7fc82ca5cb60?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1373&q=80", admin: true},
  {name: "Maggie Jones", email: "Mj2@gmail.com", age_group: "36-50", password: "password", location: "Phoenix, AZ", diagnosis_date: "2020-01-31", image_url: "https://images.pexels.com/photos/4063530/pexels-photo-4063530.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", admin: true},
  {name: "Sophia Gia", email: "sg@gmail.com", age_group: "18-35", password: "password", location: "Phoenix, AZ", diagnosis_date: "2021-04-28", image_url: "https://images.unsplash.com/photo-1531986733711-de47444e8cd8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80", admin: false},
  {name: "Jim Booker", email: "jb80@yahoo.com", age_group: "51+", password: "password", location: "Des Moines, IA", diagnosis_date: "1981-02-24", image_url: "https://images.pexels.com/photos/1139743/pexels-photo-1139743.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", admin: false},
  {name: "Taylor Anderson", email: "taylor@gmail.com", age_group: "18-35", password: "password", location: "Raleigh, NC", diagnosis_date: "2021-01-19", image_url: "https://images.pexels.com/photos/1820919/pexels-photo-1820919.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", admin: false},
  {name: "Blue Smith", email: "blue_s@gmail.com", age_group: "18-35", password: "password", location: "Miami, FL", diagnosis_date: "2021-04-28", image_url: "https://images.unsplash.com/flagged/photo-1595514191830-3e96a518989b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80", admin: true},
  {name: "Henry Green", email: "hg@gmail.com", age_group: "36-50", password: "password", location: "Sunrise, FL", diagnosis_date: "2018-11-01", image_url: "https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80", admin: false},
  {name: "Sharon Cooper", email: "sc@gmail.com", age_group: "51+", password: "password", location: "Delray Beach, FL", diagnosis_date: "2015-01-01", image_url: "https://images.unsplash.com/photo-1612476929092-26a78fd1ea89?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=763&q=80", admin: false},
  {name: "Brian Anderson", email: "ba@yahoo.com", age_group: "18-35", password: "password", location: "Milwaukee, WI", diagnosis_date: "2018-11-11", image_url: "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", admin: false},
  {name: "Alice Smith", email: "smith.a3_PR@gmail.com", age_group: "51+", password: "password", location: "Pembroke Pines, FL", diagnosis_date: "1989-11-12", image_url: "https://images.pexels.com/photos/6787568/pexels-photo-6787568.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", admin: true}
])

Group.create!([
  {name: "Strong Women With MS", summary: "Group of women with MS supporting other women with MS", location: " Ft. Lauderdale,FL / Virtual", image_url: "https://images.unsplash.com/photo-1582213782179-e0d53f98f2ca?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80", meeting_notes: "Our meetings are held every other Monday at 5:30pm est. at The Drift Hotel located at 3005 Alhambra St, Fort Lauderdale, FL 33304. Our meetings are also held virtually via Zoom. The link can be found our group page.", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"},
  {name: "Rise Above", summary: "Group that's built on positivity and practicing mindful think to help deal with MS", location: "Atlanta, GA/ Virtual", image_url: "https://images.unsplash.com/photo-1580855014124-d1e9d454c6b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80", meeting_notes: "Our meetings are held every other Monday at 6:30pm est. at Hotel Clermont Atlanta, An Original by Oliver Hotels located at 789 Ponce De Leon Ave NE, Atlanta, GA 30306. Our meetings are also held virtually via Zoom. The link is located on our group page.", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"},
  {name: "The Elders", summary: "Group for those over the age of 50", location: "Miami, FL/ Virtual", image_url: "https://images.unsplash.com/photo-1526635090919-b5d79657c5a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1469&q=80", meeting_notes: "Our meetings are held every other Monday at 4:30pm est. at Hampton Inn & Suites by Hilton Miami Brickell Downtown located at 50 SW 12th St, Miami, FL 33130. Our meetings are also held virtually via Zoom. The link can be found our group page.", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"},
  {name: "Parenting with MS", summary: "Group for parents with MS. Join us as we discuss the trials and tribulations of parenting when you have MS and the tool it takes on our families.", location: "Phoenix, AZ/Virtual", image_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", meeting_notes: "We meet every Saturday at 12:00pm GMT at DoubleTree Suites by Hilton Phoenix located 320 North 44th Street, Camelback East, Phoenix, AZ 85008.", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"},
  {name: "MS Won't Keep Me Down", summary: "Group created for people with MS between the ages of 18-35", location: "Portland, OR/Virtual", image_url: "https://images.pexels.com/photos/9826021/pexels-photo-9826021.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", meeting_notes: "Our meetings are held every other Wednesday at 6:00pm est. at The Society Hotel - located at Portland 203 NW 3rd Ave, Portland, OR 97209. Our meetings are also held virtually via Zoom. The link is located on our group page.", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"},
  {name: "Living Life to the Fullest", summary: "Group of people who love life and all that it has to offer", location: "Baton Rouge, LA/Virtual", image_url: "https://images.pexels.com/photos/4880405/pexels-photo-4880405.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", meeting_notes: "We meet the last Thursday of each month at 6:00pm EST at  Best Western LSU/Medical Corridor Inn & Suites located on 7959 Essen Park Ave, Baton Rouge, LA 70809. ", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"},
  {name: "Living Well With MS", summary: "Group of people who enjoy the outdoors and being active as much as possible.", location: "Houston, TX/Virtual", image_url: "https://images.pexels.com/photos/8939885/pexels-photo-8939885.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", meeting_notes: "Welcome to our page! We meet the first Saturday of every month and hold socials once a month. Our group typically meets at Levy Park. Check our page for details about our monthly socials. ", meeting_url: "https://us04web.zoom.us/j/72326776599?pwd=S2pLTU51U0hLS25ZUzdnWWdUenNYUT09"}
])

UserGroup.create!([
  {user_id: 6, group_id: 1},
  {user_id: 4, group_id: 1},
  {user_id: 5, group_id: 7},
  {user_id: 4, group_id: 8},
  {user_id: 6, group_id: 8},
  {user_id: 13, group_id: 7},
  {user_id: 6, group_id: 18},
  {user_id: 2, group_id: 7},
  {user_id: 6, group_id: 7},
  {user_id: 22, group_id: 25},
  {user_id: 23, group_id: 18},
  {user_id: 23, group_id: 8},
  {user_id: 1, group_id: 26},
  {user_id: 1, group_id: 27},
  {user_id: 13, group_id: 8}
])

Message.create!([
  {user_id: 5, group_id: 1, body: "I'm so happy to be a part of this gorup. It's so nice having a support team who understands what I'm going through."},
  {user_id: 5, group_id: 7, body: "Good afternoon everyone! Happy to be here!"},
  {user_id: 6, group_id: 8, body: "Hello!"},
  {user_id: 6, group_id: 18, body: "I hope everyone is doing well!"},
  {user_id: 22, group_id: 25, body: "Hello everyone! I started this group for parents and I'm excited to see where this goes!"},
  {user_id: 23, group_id: 18, body: "Hello everyone! I'm looking forward to the next meeting."},
  {user_id: 6, group_id: 7, body: "Welcome Sophia! Welcome to the group!"},
  {user_id: 4, group_id: 8, body: "Hi everyone! I'm excited to see everyone at our next meeting!"},
  {user_id: 4, group_id: 1, body: "Who's going to be at next Monday's meeting?"},
  {user_id: 1, group_id: 26, body: "Good morning all!"},
  {user_id: 13, group_id: 8, body: "Today WILL be a great day!"}
])
# Notification.create!([
#   {body: "Hello everyone! Unfortunately we had to cancel this weeks meeting. We'll see you next meeting.", user_id: 6, group_id: 2},
#   {body: "Hello everyone! We are pushing back the meeting to 5:45pm. I'm currently stuck in traffic.", user_id: 6, group_id: 1},
#   {body: "Hi everyone! We are canceling tonights meeting.", user_id: 6, group_id: 7},
#   {body: nil, user_id: 6, group_id: 2},
#   {body: "Hello", user_id: 6, group_id: 2},
#   {body: "Hello", user_id: 6, group_id: 2}
# ])


