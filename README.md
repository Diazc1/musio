# MUSIO App
An app to share music on and be able to leave comments
![](/app/assets/images/MUSIO.png)

*Quick logo that I created*
## Installation

```bash
run rails new
```
You can run rails new to create a new project. I started mine off in that way and then went on to create my models, controllers and views. A more convinient way to do this is by running "rails generate resource User name username email".

Running this line of code generated a User table/model with its columns of name, username, and email. It also generated its controller and views file. 
And always

```
run bundle install to make sure all gems are up to date.

```

Here is preview of the login route:
![](/app/assets/images/login.png)


And this is a part of the app where you are allowed to add a song if it has not yet been added. 
![](/app/assets/images/add_a_song.png)

Once the song is created, if you have an account you are allowed to see that new song and are allowed to comment on it.

Basically an app to interact with music lovers through music. 
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

