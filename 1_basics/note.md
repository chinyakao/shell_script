# 1. Basics

## Chmod

- Files by default don't have the execute permission.
- `$ ./hello.sh` We might get error message. Permission denied.
- If we would like to make a file executable, we must change mode. 
- `$ chmod 755 hello.sh` This give everyone the permission to read and execute the script but only the owner permission to write it.
- Linux systems look for commands on the path, not in the current directory.
- If the command is not in the path, they report that it is not found. e.g., `$ hello.sh`
- When we put the `./` we tell the system don't bother with the path, here is the location of the command.

## The shebang
- If someone tried to run  the script on other shells, the results are unpredictable and that's not good.
- We need to make sure that our script only runs on Bash.
- Therefore, every shell script should be begin with the interpreter line colorfully known as shebang.
- This line tells the system which command processor should handle this script.
- The shebang must be the first line of the file or it will simply e ignored like a comment
    ```
    #!/usr/bin/env bash
    #!/bin/bash
    #!/usr/bin/env python
    #!/usr/bin/env node
    ```

- If we run the script on the wrong system, e.g., `#!/usr/bin/env bashxxx`, it will show `/usr/bin/env: ‘bashxxx’: No such file or directory`.
- The default shell in most Linux systems is Bash, so you may never see the ill effects from not using it.