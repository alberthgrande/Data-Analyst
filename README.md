Your Android/MIUI storage layer is blocking Git from creating even the tiny `.git` pointer file inside shared storage. This is common on newer Android versions.

The reliable fix is:

1. Keep the Git repo inside Termux home
2. Access Android files through symlinks or copy/sync them

Do this instead:

```bash id="2h0x2h"
cd ~

mkdir -p projects
cd projects

mkdir Data-Analyst
cd Data-Analyst

git init
```

Now link your Android folder into the repo:

```bash id="pn6b9w"
ln -s ~/storage/shared/'Data Analyst' android-files
```

Result:

```text id="g1x3gf"
~/projects/Data-Analyst/        ← real git repo
~/projects/Data-Analyst/android-files → shared storage link
```

Then:

```bash id="m3k6xh"
git status
```

will work normally.

Alternative approach (cleaner for coding/data work):

```bash id="x89g6t"
cp -r ~/storage/shared/'Data Analyst' ~/projects/
```

Work entirely inside `~/projects/Data Analyst`, then sync back to shared storage only when needed.

Android shared storage (`/storage/emulated/0`) is not a real Linux filesystem, so tools like Git, npm, Python venvs, etc. often break there.

