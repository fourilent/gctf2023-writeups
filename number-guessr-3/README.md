# Number Guessr 3

## Summary

- Web challenge with WebSockets
- Web challenge with psuedo-random seed cracking

## Files

- [app.py](app.py)

## Steps

1. Examine the server source code to see that the issues with [Number Guessr](/number-guessr/README.md) and [Number Guessr 2](/number-guessr-2/README.md) has been fixed
2. Identify that the number is being generated with `random.getrandbits(32)` which is a psuedo-random bit generator that uses a set seed
   - Number is calculated by getting a 32-bit integer and performing `(32-bit integer % 1,000,000) + 1` to get a number between 1 - 1,000,000
3. Use a seed cracker like [randcrack](https://github.com/tna0y/Python-random-module-cracker) to crack the seed of the server at runtime
4. Predict the number that will be computed and send it to the server 100 times
5. Refer to [solver script](solver.py) to do this programatically
