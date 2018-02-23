## Quick Start

The fastest and easiest way to view this app is by navigating to the deployed version here:
<br /> https://video-retention-viewer.herokuapp.com/videos/1

To access a chart for another video, just change the ID in the URL from 1 to the video of your choosing.

_NOTE: Since the API is hosted on Heroku, its dyno may be asleep if not accessed for over an hour. If you experience this, it should speed up after the initial request._

## Installing & Running Locally

1. Clone or download the repo to your local machine.
   <br /> `git clone https://github.com/dylankershaw/video-retention-viewer.git`

2. Install packages.
   <br /> `bundle install`

3. Create, migrate, and seed database
   * Since the database is PostgreSQL, be sure to run [Postgres](https://www.postgresql.org/) first.
   * _In the terminal:_
     * `rake db:create`
     * `rake db:migrate`
     * `rake db:seed`
4. Start the server.
   <br /> `rails s`

5. Enjoy! And again, remember to access posts by navigating to the appropriate URL (i.e. http://localhost:3001/videos/1).
