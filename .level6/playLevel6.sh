#!/bin/bash

initNextFiles() {
    touch ../level2/note
    echo "This looks like a good place to try next" >> ../level2/note
    echo "Try playing the level, and while Mr. Game is distracted, I'll snoop around in the code" >> ../level2/note
}

while :
do
    read -p "Enter the password: "
    if [ "$REPLY" = "exit" ]; then
        return
    elif [ $REPLY = "cookies" ]; then
        # in here change the main note to something else
        # maybe chage the name of that note to indicate its updated
        if [ -f note ]; then 
            echo "Dont forget: you can run any .sh file by typing: . [filename]" > note
        fi
        
        echo "Level has been overwritten. Congratulations, you won level 6" 
        echo "Mr Game: Hmm, that's odd. I dont even remember you playing the level...." 
        echo "Mr Game: maybe I just forgot" && break
    else 
        echo "That's deffinately not it"
    fi

done

initNextFiles
echo -e "\e[91m~:~: great job, that's one level finished"
echo -e "\e[91m~:~: in order to escape, you're going to need to \"finish\" all the levels"
echo -e "\e[91m~:~: trust me, the only way you can get out of here is by hacking each level"
echo -e "\e[91m~:~: lets try and find the next clue"
























































# If I were you I'd stay away from trying to cheat me
#                       - Mr Game