import json

from tqdm import tqdm
from websockets.sync.client import connect

HOST = "chal1.gryphons.sg"
PORT = 8004
PATH = "/ws"


def main():
    message = {"type": "guess", "number": 1}
    pbar = tqdm(range(102), desc="Solving challenge")

    with connect(f"ws://{HOST}:{PORT}/{PATH}") as websocket:
        for _ in pbar:
            websocket.send(json.dumps(message))
            response = json.loads(websocket.recv())
            message = {"type": "guess", "number": response.get("next_number")}
            if response.get("next_number") is None:
                pbar.close()
                print(response.get("flag"))


if __name__ == "__main__":
    main()
