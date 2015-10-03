## Alfred Google Music Shuffle

#### Alfred workflow to shuffle music on Google Music in Chrome.


#### Shuffle all songs

Trigger: `shuffle`

![Shuffle all songs](http://i.imgur.com/9KtZlnR.png)

If Google Music is already open in Chrome, it will shuffle the music immediately. If not, it will open a new tab, wait for the page to load, and then shuffle the music.

#### Shuffle the "Last added" playlist

Trigger: `shuffle latest`

![Shuffle Last added playlist](http://i.imgur.com/MOeSEaL.png)

#### Play "I'm feeling lucky" radio

Trigger: `shuffle lucky` or `shuffle radio`

![Play I'm lucky radio radio](http://i.imgur.com/b8dbvyK.png)

### Download

Download the `google-music-shuffle.alfredworkflow` file and open it to import into Alfred 2.

You'll need to have the Powerpack to use this workflow.

### Changelog

#### 1.1 – October 3, 2015

* Added support for the "Last added" playlist

#### 1.0.2

* Added support for the "I'm feeling lucky" radio

#### 1.0.1

* Bug fix ([a67e38623](https://github.com/jayj/alfred-google-music-shuffle/commit/a67e38623b8c2ceed10624bf45365f880d1fa270)): Fix load detection as it broke after a recent Google Music update. Fixes [#1](https://github.com/jayj/alfred-google-music-shuffle/issues/1)