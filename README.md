# Rails Scheduling Assignment
To demonstrate comptetence in the concepts, process, and tooling required to develop web applications with Ruby on Rails.

## Deliverables
Github URL: https://github.com/sfarmani/rails-schedule
- Gemfile included in repo
- Ruby version: 2.6.3
- Rails version: 5.2.2
- MySQL as database
- Bootstrap 4.3.1

### Setup
- Install the correct Ruby and Rails versions
- Run `bundle install` to get all required gems
- Create a database on MySQL named: `rails-schedule_development`
- If needed, change the username and password on the `database.yml` config
- Run the first migration with `rake db:migrate` to setup the tables
- After the migration, run the rake task with `rake db:insert` to insert the csv files into the database
- Once the migration is done, its ready to go!
### My Approach
To get started, I had to split the assignment into three phases: planning/research, setup, and implementation
##### Planning/Rearch
- During this part I had to read through the assignment and gather resources that I thought were necessary
- This included finding a suitable Ruby and Rails versions, as well as the gems needed (bootstrap, jquery, etc)
##### Setup
- After the planning, I had to setup my environment
- Its not a hard process, however it does take a while to do
##### Implementation
- During this phase, there are some initial steps to get the database complete and ready to play around with
- Once the database is setup, the next step was to create the MVCs
- From there it was just testing and manuplating the data for the view
### Challenges
1) Finding a suitable Ruby and Rails version that both worked with each other, and didn't have too many incompatiblities with the gems that I selected
2) Figuring out how to make the 'grid'/table described in the assignment. I had thought about using a calendar gem (specifically fullcalendar.io) to achieve that.
However, the calendar gems that were available did not have the functionality that was described. (Fullcalendar.io does have one, but its a paid premium!)
3) The most difficult part of this assigment was trying to implement a popup dialog that stated the available time between the two appointments.
The problem here is that the rows in the table aren't aware of what the scheduled time is above and below them.
### Future Improvements
- Better theme: the colors are a bit plain at the moment
- A way to input new schedulings and edit/delete existing ones
- Maybe utilize a calendar gem that best suits this, but most likely it would be done with some key difference.
- Implement a better popup dialog, maybe with a modal or some other plugin