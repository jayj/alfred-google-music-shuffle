#!/usr/bin/env osascript

-- Open Google Music in a new or existing tab
on gmusicOpenTab()
    tell application "/Applications/Google Chrome.app"
        -- Google Music is open, focus on the tab
        repeat with w in windows
            set i to 1
            repeat with t in tabs of w
                if URL of t contains "play.google.com/music" then
                    set active tab index of w to i
                    set index of w to 1
                    return
                end if
                set i to i + 1
            end repeat
        end repeat

        -- Google Music is not open, open new tab
        open location "https://play.google.com/music/listen#/ap/queue"
    end tell
end gmusicOpenTab

-- Shuffle the music
on gmusicSendAction()
    tell application "/Applications/Google Chrome.app"

        -- Check if the Google Music is loaded
        set is_loaded to false

        repeat while is_loaded is false
            tell active tab of first window to execute javascript "
                var loading = document.getElementById('loading-progress'),
                    button = document.querySelector('[data-id=\"shuffle-my-library\"]' );

                if (button && ! loading) { 'loaded' }"

            -- The loading screen is gone, the page is loaded
            if result is "loaded" then set is_loaded to true

            -- Wait a bit before checking again
            delay 0.5
        end repeat

        -- Click the shuffle or "I'm feeling lucky" button
        if ("lucky" is equal to "{query}" or "radio" is equal to "{query}") then
            tell active tab of first window to execute javascript "document.querySelector('[data-id=\"im-feeling-lucky\"]' ).click();"
        else
            tell active tab of first window to execute javascript "document.querySelector('[data-id=\"shuffle-my-library\"]' ).click();"
        end if

    end tell
end gmusicSendAction

on run {}
    gmusicOpenTab()
    gmusicSendAction()
end run
