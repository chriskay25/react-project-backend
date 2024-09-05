# React Project Backend

This is the backend of my final project for Flatiron School, though I've changed a lot since its first iteration. It's a simple game - control the player using arrow keys and try not to get hit by the incoming enemies.

The frontend is available at https://github.com/chriskay25/react-project-frontend.git.

### Installation
Clone or fork the repository from https://github.com/chriskay25/react-project-backend.

Change directory in your terminal:
    
    $ cd react-project-backend

Make sure bundler is installed and then run:

    $ bundle install

Because the front-end of this app is controlled via a different repository, that repo must also be cloned/forked. Further instructions are included in the frontend repo's README.

### Database Setup

Create and migrate the database:

```
rails db:create
rails db:migrate
```
### Running the Server

Start the Rails server: 
`rails s`

## Usage

This backend is responsible for handling data processing, business logic, and serving the API to the frontend built with React. This is where things like user login information as well as information on the games they have played is stored. User interaction takes place in the frontend repo.

## Contributing

1. Fork the repository
2. Create a new branch (git checkout -b feature-branch)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin feature-branch)
5. Create a new Pull Request

Bug reports and pull requests are welcome on GitHub at https://github.com/chriskay25/react-project-backend. 

## License

The web-app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Contact

Chris Kay - chriskay25@gmail.com

Link to frontend repo: https://github.com/chriskay25/react-project-frontend.git