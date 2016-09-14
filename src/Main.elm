module Main exposing (..)

import Story exposing (..)
import Items exposing (..)
import Locations exposing (..)
import Characters exposing (..)
import Knowledge exposing (..)
import Scenes exposing (..)
import Scene1 exposing (..)
import Scene2 exposing (..)


main : Program Never
main =
    Story.load info elements scenes setup


info : Info
info =
    { title = "The curse of the tech demo"
    , byline = "Jeff Schomay"
    , prologue = prologue
    }


elements : Elements MyItem MyLocation MyCharacter
elements =
    storyWorld Items.items Locations.locations Characters.characters


setup : Setup MyItem MyLocation MyCharacter MyScene MyKnowledge
setup =
    { startingScene = Scene1
    , startingLocation = Kitchen
    , startingNarration = startingNarration
    , setupCommands =
        [ addInventory Envelope
        , addLocation Kitchen
        , addLocation Hallway
        , addCharacter Moderator Auditorium
        , addCharacter AnxiousMan Hallway
        , addProp ExitSign Kitchen
        , addProp Podium Auditorium
        ]
    }


scenes : MyScene -> Scene MyItem MyLocation MyCharacter MyScene MyKnowledge
scenes scene =
    case scene of
        Scene1 ->
            scene1

        Scene2 ->
            scene2


prologue : String
prologue =
    """![](img/audience.jpg)

**Only two weeks left.**

You've been practicing hard, running through your presentation over and over, trying to remember all the pieces.  You want to be ready when the time comes.

You must have fallen asleep, because *something definitely doesn't seem right...*"""


startingNarration : String
startingNarration =
    """You find yourself standing in the middle of a dark, cavernous commercial kitchen.  The lights are all off, save for the glowing green emergency exit sign glinting off the polished stainless steel counter tops, and a shaft of warm light through the small windows of the double doors leading out to a hallway.

You stand there, butterflies in your stomach, but you can't remember how you got there, or even why you are there.  All you know is that you feel nervous of what awaits you just outside.
"""
