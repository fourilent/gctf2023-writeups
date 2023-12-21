# Chain

## Summary

- Cryptography with chained common classical ciphers

## Files

- [Chain.txt](Chain.txt)

## Steps

1. Convert the string into Base64

    ```text
    key:DONTUSEVIGENERE message: Zvrky svz irp glv vdwy yyfgza or Fmekddbky? A fpzoiq xyi vspkyl mi wti. JÂ·cÂ·WEDCVKMLKztver,KK2{-LL-TPIYKM-JPT}pyhT3GQ-V-AB
    ```

2. Decode the Vigenere cipher

    ```text
    Where are all the rail fences in Singapore? I buried the secret in one. W·y·FAAOIRSTGelpae,GT2{-HI-FCPESI-OHN}lldC3CN-H-NI
    ```

3. Decode the Rail Fence cipher

    ```text
    Well·played,·GCTF23{A-CHAIN-OF-CIPHERS-IS-NOTHING}
    ```

4. [CyberChef recipe](https://gchq.github.io/CyberChef/#recipe=From_Base64('A-Za-z0-9%2B/%3D',true,false)Find_/_Replace(%7B'option':'Regex','string':'.%2B:%20'%7D,'',true,false,true,false)Vigen%C3%A8re_Decode('DONTUSEVIGENERE')Find_/_Replace(%7B'option':'Regex','string':'.%2Bone.%20'%7D,'',true,false,true,false)Rail_Fence_Cipher_Decode(3,0)&input=YTJWNU9rUlBUbFJWVTBWV1NVZEZUa1ZTUlNCdFpYTnpZV2RsT2lCYWRuSnJlU0J6ZG5vZ2FYSndJR2RzZGlCMlpIZDVJSGw1Wm1kNllTQnZjaUJHYldWclpHUmlhM2svSUVFZ1puQjZiMmx4SUhoNWFTQjJjM0JyZVd3Z2JXa2dkM1JwTGlCS3dyZGp3cmRYUlVSRFZrdE5URXQ2ZEhabGNpeExTeko3TFV4TUxWUlFTVmxMVFMxS1VGUjljSGxvVkROSFVTMVdMVUZD) to do this
