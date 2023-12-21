# Password Server

## Summary

- Remote challenge with netcat interface
- Timing-based attack to brute-force a passphrase

## Files

- [password_server.py](password_server.py)

## Steps

1. Examine the server source code and identify the flaw in the `str_cmp()` function
   1. Checks if length of both strings (input and password) are the same
   2. Check letter by letter if the first string matches the second string
   3. `time.sleep(0.1)` delay at the start of every check
2. Exploit the time delay that it takes to check subsequent letters e.g.:
   1. Password is `abcdef`
   2. Function delays for 0.1 second before checks if input[0] equals to "a". If it's correct, repeat the loop
   3. Function delays for another 0.1 second before checking if input[1] equals to "b"; there is now 0.2 seconds of delay
   4. If the first letter is not correct, it will break the loop and there would only be 0.1 second of overall delay
3. Run through every character of the character set and determine the character that took the longest to return a response
4. Do this for every character of the password
5. Refer to [solver script](solver.py) to do this programatically with annotations
