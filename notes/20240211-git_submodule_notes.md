# 20240211 git submodule notes

- this shell output reflects the steps taken to change the MWB
  submodule branch to test `mwb.py` fix to MWB Github issue 54.[^1]   

```shell
cd ~/Documents/myWikis/masvftest101  
(venv) $ git submodule status
 0cbd1e2ee91ccd60155e419a0eb74557ee7a82d0 .massivewikibuilder/massivewikibuilder (v3.1.0-31-g0cbd1e2)
#
(venv) $ git config -f .gitmodules -l
submodule..massivewikibuilder/massivewikibuilder.path=.massivewikibuilder/massivewikibuilder
submodule..massivewikibuilder/massivewikibuilder.url=https://github.com/Massive-Wiki/massivewikibuilder.git
#
(venv) $ git submodule set-branch -b wla-issue54-20240209 .massivewikibuilder/massivewikibuilder 
(venv) $ git config -f .gitmodules -l
submodule..massivewikibuilder/massivewikibuilder.path=.massivewikibuilder/massivewikibuilder
submodule..massivewikibuilder/massivewikibuilder.url=https://github.com/Massive-Wiki/massivewikibuilder.git
submodule..massivewikibuilder/massivewikibuilder.branch=wla-issue54-20240209

(venv) $ git submodule sync
Synchronizing submodule url for '.massivewikibuilder/massivewikibuilder'

(venv) $ git submodule update --init --recursive --remote
Submodule path '.massivewikibuilder/massivewikibuilder': checked out '9c2e7d9a3d59065f485948ff0c92f7f8c257f8bd'

(venv) $ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   .gitmodules
	modified:   .massivewikibuilder/massivewikibuilder (new commits)

no changes added to commit (use "git add" and/or "git commit -a")
(venv) $ git commit -am "change submodule branch" 
[main 60c73f4] change submodule branch
 2 files changed, 2 insertions(+), 1 deletion(-)
(venv) $ git push -v
Pushing to https://github.com/band/masvftest101.git
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 412 bytes | 412.00 KiB/s, done.
Total 4 (delta 3), reused 0 (delta 0), pack-reused 0
POST git-receive-pack (585 bytes)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/band/masvftest101.git
   367980b..60c73f4  main -> main
updating local tracking ref 'refs/remotes/origin/main'
(venv) $ git status
On branch main
Your branch is up to date with 'origin/main'.
nothing to commit, working tree clean

(venv) $ git submodule status
 9c2e7d9a3d59065f485948ff0c92f7f8c257f8bd .massivewikibuilder/massivewikibuilder (v3.1.0-32-g9c2e7d9)
(venv) $
```

-----
References:  
[^1] This is the up-to-date example of how to change the branch on an existing
  submodule that I followed:
    <https://stackoverflow.com/questions/29882960/changing-an-existing-submodules-branch/73474931#73474931>  
	

Note: this note is almost identical to a similar note I posted 10 months ago on the Massive Wiki developer wiki: [2023-04-06 Bill submodule mishigas - Developer Wiki (Massive Wiki)](https://developer.massive.wiki/2023-04-06_bill_submodule_mishigas)  
