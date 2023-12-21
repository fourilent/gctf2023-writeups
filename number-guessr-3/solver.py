import json

from randcrack import RandCrack
from tqdm import tqdm
from websockets.sync.client import connect

N = 1_000_000
HOST = "chal1.gryphons.sg"
PORT = 8005
PATH = "/ws"


def main():
    rc = RandCrack()
    message = {"type": "guess", "number": 1}

    with connect(f"ws://{HOST}:{PORT}/{PATH}") as websocket:
        for _ in tqdm(range(624), desc="Unrandomizing seed"):
            websocket.send(json.dumps(message))
            response = json.loads(websocket.recv())
            randbits = response.get("guess_id")
            rc.submit(randbits)

        for _ in tqdm(range(101), desc="Solving challenge"):
            randbits = rc.predict_getrandbits(32)
            num = (randbits % N) + 1
            message["number"] = num

            websocket.send(json.dumps(message))
            response = json.loads(websocket.recv())

        print(response.get("flag"))


if __name__ == "__main__":
    main()
