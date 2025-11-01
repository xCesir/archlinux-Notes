function scrcp --wraps='scrcpy --audio-source=playback --turn-screen-off --stay-awake >> /dev/null 2> /dev/null &disown' --description 'alias scrcp=scrcpy --audio-source=playback --turn-screen-off --stay-awake >> /dev/null 2> /dev/null &disown'
    scrcpy --audio-source=playback --turn-screen-off --stay-awake >> /dev/null 2> /dev/null &disown $argv
end
