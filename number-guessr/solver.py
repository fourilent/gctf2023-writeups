import json

from websockets.sync.client import connect

HOST = "chal1.gryphons.sg"
PORT = 8003
PATH = "/ws"


def main():
    with connect(f"ws://{HOST}:{PORT}/{PATH}") as websocket:
        message = {"type": "get_flag"}
        websocket.send(json.dumps(message))
        response = json.loads(websocket.recv())
        print(response.get("flag"))


if __name__ == "__main__":
    main()
