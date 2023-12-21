# Number Guessr 2

## Summary

- Web challenge with WebSockets
- Web challenge with improper server response sanitisation

## Files

N.A.

## Steps

1. Go to the website and input any number
2. Identify websocket messages to and from the server
   - Client sends

        ```json
        {
          "type":"guess",
          "number":"1"
        }
        ```

   - Server responds with

        ```json
        {
          "next_number": 46,
          "number": 21,
          "result": "incorrect",
          "score": 0,
          "type": "guess_result"
        }
        ```

3. Input `next_number` as the guess and see it is correct that score increments
4. Do this for 99 more times
5. Refer to [solver script](solver.py) to do this programatically
