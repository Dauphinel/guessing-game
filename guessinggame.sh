#!/usr/bin/zsh

get_file_count() {
    local file_count=$(ls -1 | wc -l)
    echo "$file_count"
}

play_game() {
    correct_count=$(get_file_count) 
    while true; do
        echo "Devinez le nombre de fichiers dans le répertoire actuel :"
        read user_guess

        if [[ $user_guess -lt $correct_count ]]; then
            echo "Votre réponse est trop basse. Essayez encore !"
        elif [[ $user_guess -gt $correct_count ]]; then
            echo "Votre réponse est trop haute. Essayez encore !"
        else
            echo "Félicitations ! Votre réponse est correcte."
            break
        fi
    done
}


play_game

