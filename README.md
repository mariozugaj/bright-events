# BrightEvents

BrightEvents is an Eventbrite clone built with the power of Ruby on rails. View the [demo](https://brightevents.mariozugaj.com/).

You can sign in using **prepopulated account**:

```
email: john.doe@example.com
password: Qw1ITlgILwyWgfWbPhK9vNeVofGKnDC8
```

### Technical notes
* Backend built with Ruby on Rails
* Using devise for authentication
* Frontend interaction written in Javascript
* Using Datetime picker Javascript plugin
* Postgres database seeded with Faker gem and real locations (for geocoding's sake)
* Styled from ground up, using SASS and CSS Grid
* Using Carrierwave with Cloudinary as an image storage/transformation service
* Using 'gmaps4rails' gem for map services
* Using 'geocoder' gem for event geocoding
* Sending thank-you-for-attending email using SendGrid

### Features

* Sign up / log in to create or attend events
![Start screen](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/1_landing.png)

* Search events by location, category, date, title and description
![Search](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/3_search_events.png)

* Pick events from a map
![Pick events from map](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/4_events_on_a_map.png)

* See events near you on a home page
![Near events](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/5_near_events.png)

* Create, edit or delete events
![Create event](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/2_create_events.png)

* Attend events
![Attend event](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/6_attend_events.png)

* See your created, past and attending events on a profile page
![Profile](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/7_profile.png)

* See attendees list
![Attendees list](https://s3.eu-central-1.amazonaws.com/github-readme-screenshots/bright_events/8_attendees_list.png)
