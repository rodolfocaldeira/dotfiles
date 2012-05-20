#!/bin/bash

PWD="$(pwd)"

echo "Installing dotfiles..."

for s in $(find ${PWD} -name \*.symlink)
do
	BASENAME="$(basename ${s} .symlink)"
	DEST="${HOME}/.${BASENAME}"

 	if [ -f "${DEST}" ]; then
 		echo "[Warning] File already exists, mv ${DEST} ${DEST}.orig"
        mv "${DEST}" "${DEST}".orig
    fi

 	if [ -d "${DEST}" ]; then
 		echo "[Warning] Directory already exists, mv ${DEST} ${DEST}.orig"
 		if [ -d "${DEST}".orig ]; then
 			rm -i "${DEST}".orig
 		fi    		
		
		if [ -d "${DEST}".orig ]; then
 			echo "[Error] Backup folder already exists ${DEST}.orig, please remove it first !!!!"
 			exit 1 		
 		else
			mv "${DEST}" "${DEST}".orig
 		fi    		
		
    fi    
	$(ln -s ${s} ${DEST})
done

echo "Done .dotfiles installed"