#!/bin/bash

echo "=================================================================="
echo "                     USER MANAGEMENT MENU                        "
echo "=================================================================="

show_menu() {
    echo
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. Check User"
    echo "4. List Users"
    echo "5. Exit"
    echo
}

get_user_info() {

    while true
    do
        show_menu

        read -r -p "Choose an option: " enter

        case $enter in

        1)
            echo
            read -r -p "Give me a Username: " Username

            if id "$Username" &>/dev/null; then
                echo "Error: User already exists."
            else
                sudo adduser "$Username"

                if [ $? -eq 0 ]; then
                    echo "Username was created successfully!"
                else
                    echo "Error: Could not create user."
                fi
            fi
            ;;

        2)
            echo
            read -r -p "Give me your Username: " Username

            if id "$Username" &>/dev/null; then
                sudo deluser "$Username"

                if [ $? -eq 0 ]; then
                    echo "Username was deleted successfully!"
                else
                    echo "Error: Could not delete user."
                fi
            else
                echo "Error: User does not exist."
            fi
            ;;

        3)
            echo
            read -r -p "Give me your Username: " Username

            if id "$Username" &>/dev/null; then
                echo "User found!"
                echo
                id "$Username"
            else
                echo "Username not found."
            fi
            ;;

        4)
            echo
            echo "==================== USER LIST ===================="

            cut -d: -f1 /etc/passwd

            echo "===================================================="
            ;;

        5)
            echo
            echo "Exiting User Management Menu..."
            exit 0
            ;;

        *)
            echo
            echo "Invalid option. Please choose between 1 and 5."
            ;;

        esac

    done
}

get_user_info
