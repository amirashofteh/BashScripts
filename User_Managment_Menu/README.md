# User Management Menu

A Bash script that provides an interactive menu for managing Linux users.

The script allows the user to create, delete, check, and list users directly from the terminal.

## Features

* Create a new Linux user
* Delete an existing Linux user
* Check whether a user exists
* Display user information
* List all users on the system
* Interactive menu
* Input validation
* Error handling
* Uses Linux user-management commands

## Requirements

* Linux operating system
* Bash
* `sudo` privileges
* `adduser`
* `deluser`
* `id`

## Project Structure

```text
User_Management_Menu/
│
├── user_management_menu.sh
└── README.md
```

## How to Run

First, make the script executable:

```bash
chmod +x user_management_menu.sh
```

Then run it:

```bash
./user_management_menu.sh
```

You can also run it with Bash:

```bash
bash user_management_menu.sh
```

## Menu Options

When the script starts, it displays:

```text
==================================================================
                     USER MANAGEMENT MENU
==================================================================

1. Create User
2. Delete User
3. Check User
4. List Users
5. Exit
```

### 1. Create User

Select option `1` to create a new Linux user.

The script asks for a username and then uses:

```bash
sudo adduser "$Username"
```

The `adduser` command creates the account and interactively asks for the user's password and additional information.

The script also checks whether the username already exists before creating it.

### 2. Delete User

Select option `2` to delete a Linux user.

The script first checks whether the user exists:

```bash
id "$Username"
```

If the user exists, it uses:

```bash
sudo deluser "$Username"
```

### 3. Check User

Select option `3` to check whether a specific user exists.

The script uses:

```bash
id "$Username"
```

If the command succeeds, the user exists.

The script also displays information about the user, such as:

```text
uid=1001(username) gid=1001(username) groups=1001(username)
```

### 4. List Users

Select option `4` to display the users stored in `/etc/passwd`.

The script uses:

```bash
cut -d: -f1 /etc/passwd
```

The `-d:` option tells `cut` that `:` is the delimiter, while `-f1` selects the first field.

For example:

```text
root
daemon
bin
sys
sync
...
username
```

### 5. Exit

Select option `5` to exit the program.

The script uses:

```bash
exit 0
```

to terminate successfully.

## Important Commands Used

### `adduser`

Creates a new Linux user:

```bash
sudo adduser username
```

### `deluser`

Deletes a Linux user:

```bash
sudo deluser username
```

### `id`

Checks whether a user exists and displays their account information:

```bash
id username
```

### `cut`

Extracts specific fields from text:

```bash
cut -d: -f1 /etc/passwd
```

### `/etc/passwd`

This file contains information about local user accounts on a Linux system.

Each line contains several fields separated by `:`.

Example:

```text
username:x:1001:1001:User Name:/home/username:/bin/bash
```

The first field is the username.

## Bash Concepts Practiced

This project demonstrates several important Bash concepts:

* Functions
* `while` loops
* `case` statements
* User input with `read`
* `if / else` statements
* Command exit statuses
* `$?`
* Redirecting output to `/dev/null`
* Linux system commands
* `sudo`
* Variables
* Command substitution and command execution
* Basic error handling

## Example

```text
==================================================================
                     USER MANAGEMENT MENU
==================================================================

1. Create User
2. Delete User
3. Check User
4. List Users
5. Exit

Choose an option: 3

Give me your Username: amir

User found!

uid=1000(amir) gid=1000(amir) groups=1000(amir)
```

## Notes

Creating and deleting Linux users requires appropriate privileges.

The script uses `sudo` for operations that require administrative permissions.

Be careful when deleting users, especially on systems containing important accounts or data.

## Author

Amir Hossein Ashofteh

## License

This project is created for educational and learning purposes.
