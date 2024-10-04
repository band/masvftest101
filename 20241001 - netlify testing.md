# 20241001 - netlify testing

- ASSERT:
	1. site rebuilds automatically (no intervention needed)
	2. this page shows up at the top of the recent pages list

### 2024-10-04:
- where does Netlify store and find the cache?

```shell
echo "$NETLIFY_BUILD_BASE"  # returns
/opt/build
```

