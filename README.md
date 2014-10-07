## Alfred Google Music Shuffle

#### Alfred workflow to shuffle music on Google Music in Chrome.

Trigger: `shuffle`

![The Alfred window](http://imgur.com/UBo4UsI.png)

If Google Music is already open in Chrome, it will shuffle the music immediately. If not, it will open a new tab, wait for the page to load, and then shuffle the music.

The workflow also supports the "I'm feeling lucky" radio by adding the `lucky` or `radio` argument after `shuffle`:

![Shuffle radio](http://imgur.com/C545hPD.png)



### Download

Download the `google-music-shuffle.alfredworkflow` file and open it to import into Alfred 2.

You'll need to have the Powerpack to use this workflow.

### Changelog

#### 1.0.2

* Added support for the "I'm feeling lucky" radio

#### 1.0.1

* Bug fix ([a67e38623](https://github.com/jayj/alfred-google-music-shuffle/commit/a67e38623b8c2ceed10624bf45365f880d1fa270)): Fix load detection as it broke after a recent Google Music update. Fixes [#1](https://github.com/jayj/alfred-google-music-shuffle/issues/1)