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

```shell
ls -al "$NETLIFY_BUILD_BASE"
total 8
drwxr-xr-x  5 buildbot root       48 Oct  4 12:43 .
drwxr-xr-x  1 root     root       36 Oct  4 12:43 ..
drwxr-xr-x 24 buildbot root     4096 Oct  4 12:43 cache
drwxr-xr-x  2 buildbot buildbot   18 Oct  4 12:43 env_store
drwxr-xr-x  9 buildbot root     4096 Oct  4 12:43 repo
```

- observation: git index problem does not seem to be happening
  - check with other Netlify builds

## 2024-10-06:
- problem solved and behavior understood  
	- specifying branch "main" in the git log subprocess command returned empty strings for git log commands on latest commit  
	- removing the branch specification fixes the problem  
	- the branch name "main" does not match the name of the branch netlify is building from (is this true?)  
	- Test this updated file  
		- ASSERT: will be at the top of the recent files list  
