# 5 File Operations

1. '>' redirect the output to a file
    ```
    $ ./reader.sh names.txt > output.txt
    ```
    ```
    LINE 1: Abel
    LINE 2: Maria
    LINE 3: Richard
    LINE 4: Tom
    LINE 5: Rene
    ```
2. '>>' is the same as '>' but it doesn't erase the contents of the output file
    ```
    $ ./reader.sh names.txt >> output.txt
    ```
    ```
    LINE 1: Abel
    LINE 2: Maria
    LINE 3: Richard
    LINE 4: Tom
    LINE 5: Rene
    LINE 1: Abel
    LINE 2: Maria
    LINE 3: Richard
    LINE 4: Tom
    LINE 5: Rene
    ```
3. to validate the integrity of the file
    ```
    $ cksum names.txt
    ```