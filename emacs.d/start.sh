#!/bin/bash
# EMACSPATH=/Applications/Emacs.app/Contents/MacOS
EMACSPATH=/usr/local/Cellar/emacs-mac/emacs-25.1-rc1-mac-5.90/Emacs.app/Contents/MacOS


# Check if an emacs server is available
# (by checking to see if it will evaluate a lisp statement)

if ! (${EMACSPATH}/bin/emacsclient --eval "t"  2> /dev/null > /dev/null )
then
    # There is no server available so,
    # Start Emacs.app detached from the terminal
    # and change Emac's directory to PWD

    nohup ${EMACSPATH}/Emacs --chdir "${PWD}" "${PWD}/${@}" 2>&1 > /dev/null &
else
    # The emacs server is available so use emacsclient

    if [ -n "${@}" ]
    then
        # There are no arguments, so
        # tell emacs to open a new window

        ${EMACSPATH}/bin/emacsclient --eval "(list-directory \"${PWD}\")"
    else
        # There are arguments, so
        # tell emacs to open them

        ${EMACSPATH}/bin/emacsclient --no-wait "${PWD}/${@}"
    fi

    # Bring emacs to the foreground

    ${EMACSPATH}/bin/emacsclient --eval "(x-focus-frame nil)"
fi
