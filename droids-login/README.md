# Droid's Login

## Summary

- Reverse Engineering with APK files

## Files

- [droid-toolbox.apk](droid-toolbox.apk)

## Steps

1. Decompile the APK file with [Apktool](https://apktool.org/)
2. All the main logic is stored under [`smali/dev/czlucius/gctf23challenge/`](decompiled/droid-toolbox/smali/dev/czlucius/gctf23challenge/)
3. Find [MainActivity.smali](decompiled/droid-toolbox/smali/dev/czlucius/gctf23challenge/MainActivity.smali)
4. Username and password are stored in plaintext

   ```smali
   const-string p3, "@dmin"

   .line 29
   invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

   move-result p0

   const/4 p3, 0x1

   if-eqz p0, :cond_0

   const-string p0, "f62264b387396e88b28766bbf5bbe8ec5623"

   invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z>
   ```

5. Password is the flag
