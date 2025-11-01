function kleo --wraps='export QT_QPA_PLATFORM=XCB && kleopatra' --description 'alias kleo=export QT_QPA_PLATFORM=XCB && kleopatra'
    export QT_QPA_PLATFORM=XCB && kleopatra $argv
end
