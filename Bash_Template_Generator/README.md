
# Bash Script Template Generator

A lightweight Bash utility that automatically creates a structured shell script template for faster and more organized scripting.

## Description

Writing scripts repeatedly requires creating the same basic structure every time: the Bash shebang, documentation fields, author information, and code sections.

This tool automates that process by generating a ready-to-use `.sh` file with a predefined template.

The script automatically collects:

* The creation date using the `date` command.
* The current user using the `whoami` command.

## Features

* Interactive filename input.
* Automatic `.sh` file creation.
* Adds Bash interpreter declaration (`#!/bin/bash`).
* Automatically records:

  * Script creation date.
  * Script author.
* Provides organized sections for script development.

## Generated Template

```bash
#!/bin/bash

# Purpose:
# Created Date: <generated date>
# Author: <generated username>

# START

# END
```

## Usage

Clone the repository:

```bash
git clone https://github.com/your-username/bash-script-template-generator.git
cd bash-script-template-generator
```

Give execution permission:

```bash
chmod +x script_template.sh
```

Run the generator:

```bash
./script_template.sh
```

Example:

```
Enter script name: backup
```

Generated output:

```
backup.sh created successfully.
```

## Example Generated Script

```bash
#!/bin/bash

# Purpose:
# Created Date: Wed Aug 5 2026
# Author: user

# START

# END
```

## Technologies Used

* Bash Shell Scripting
* Linux Command Line
* File Manipulation
* Automation

## Skills Demonstrated

This project demonstrates practical knowledge of:

* Bash scripting fundamentals.
* Linux shell environment.
* Automation of repetitive tasks.
* Working with user input and system commands.
* Basic script organization and documentation.

## Future Improvements

* Add command-line arguments.
* Add duplicate filename detection.
* Automatically assign executable permissions.
* Support multip# Bash Script Template Generator

A lightweight Bash utility that automatically creates a structured shell script template for faster and more organized scripting.

## Description

Writing scripts repeatedly requires creating the same basic structure every time: the Bash shebang, documentation fields, author information, and code sections.

This tool automates that process by generating a ready-to-use `.sh` file with a predefined template.

The script automatically collects:

* The creation date using the `date` command.
* The current user using the `whoami` command.

## Features

* Interactive filename input.
* Automatic `.sh` file creation.
* Adds Bash interpreter declaration (`#!/bin/bash`).
* Automatically records:

  * Script creation date.
  * Script author.
* Provides organized sections for script development.

## Generated Template

```bash
#!/bin/bash

# Purpose:
# Created Date: <generated date>
# Author: <generated username>

# START

# END
```

## Usage

Clone the repository:

```bash
git clone https://github.com/your-username/bash-script-template-generator.git
cd bash-script-template-generator
```

Give execution permission:

```bash
chmod +x script_template.sh
```

Run the generator:

```bash
./script_template.sh
```

Example:

```
Enter script name: backup
```

Generated output:

```
backup.sh created successfully.
```

## Example Generated Script

```bash
#!/bin/bash

# Purpose:
# Created Date: Wed Aug 5 2026
# Author: user

# START

# END
```

## Technologies Used

* Bash Shell Scripting
* Linux Command Line
* File Manipulation
* Automation

## Skills Demonstrated

This project demonstrates practical knowledge of:

* Bash scripting fundamentals.
* Linux shell environment.
* Automation of repetitive tasks.
* Working with user input and system commands.
* Basic script organization and documentation.

## Future Improvements

* Add command-line arguments.
* Add duplicate filename detection.
* Automatically assign executable permissions.
* Support multiple script templates.
* Add configuration options.

## License

MIT License
* Add configurati
