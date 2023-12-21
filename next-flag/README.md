# NEXT flag

## Summary

- Web challenge with exposed source code
- Web challenge with cookie modification

## Files

N.A.

## Steps

1. Scrape the Website URL
2. Identify any code related to the flag with `grep -ir "flag" website/`
3. Identify L115:L128 in [flag-*.js](flag-a74a87b4951d1474.js)
4. Modify cookie header to `session=ca65fb7e5a62cc4133ea9cb3a486f910` to pass the check and send a GET request to `/api/flag`
5. Refer to [solver script](solver.py) to get the flag programmatically
