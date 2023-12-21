# Number Guessr

## Summary

- Web challenge with WebSockets
- Web challenge with improper client-side validation

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
          "number": 40, 
          "result": "incorrect", 
          "score": 0, 
          "type": "guess_result"
        }
        ```

3. Identify the JavaScript code that handles this ([main.js](main.js))
4. On L47:L53, identify that the client sends a message with `get_flag` when score has reached 100 and above on the client

    ```javascript
    if (score >= 100) {
      ws.send(
        JSON.stringify({
          type: 'get_flag',
        })
      );
    }
    ```

5. Send a websocket message to the endpoint with that data
6. Refer to [solver script](solver.py) to do this programatically
