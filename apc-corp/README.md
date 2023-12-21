# APC Corp

## Summary

- Failed Pwn challenge with plaintext flag on filesystem

## Files

- [APC org windows server 2019 (final completed).tar.xz](https://drive.google.com/file/d/1RbcNmCo1IvePIj_FVRE1NdG6g9ieYJKz/view)

## Steps

1. Load the VM into VMware 17.x or higher on an x86_64 machine (rip macbook users)
2. Add any Linux liveboot ISO to CD drive of VM (e.g. Kali Linux)
3. Boot into the ISO at startup
4. In a terminal, mount the disk

    ```shell
    sudo mkdir /mnt/windows && sudo mount /dev/nvme0n1p3 /mnt/windows
    ```

5. Search the whole disk with the flag prefix

   ```shell
    grep -ir "GCTF23" /mnt/windows
   ```
