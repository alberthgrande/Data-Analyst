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

That means Git is still receiving either:

* your normal GitHub password
* or an incorrect/expired token

Make sure you are using the PAT token itself as the password.

Do this carefully:

1. Generate a new token from:

[GitHub Token Settings](https://github.com/settings/tokens?utm_source=chatgpt.com)

Choose:

* **Generate new token (classic)**
* Enable:

  * `repo`

Copy the token immediately.

It looks like:

```text
ghp_xxxxxxxxxxxxxxxxxxxx
```

2. Clear old cached credentials in Termux

```bash
git config --global --unset credential.helper
rm ~/.git-credentials
```

3. Configure credential storage again

```bash
git config --global credential.helper store
```

4. Push again

```bash
git push -u origin master
```

5. IMPORTANT

When it asks:

```text
Password for 'https://alberthgrande@github.com':
```

Paste the PAT token, NOT your GitHub password.

In Termux, pasted text will not show characters. That's normal.

Then press Enter.

If it still fails, test using the token directly in URL form:

```bash
git remote set-url origin https://YOUR_TOKEN@github.com/alberthgrande/Data-Analyst.git
```

Example:

```bash
git remote set-url origin https://ghp_xxxxxxxx@github.com/alberthgrande/Data-Analyst.git
```

Then:

```bash
git push -u origin master
```

After successful push, remove token from remote for security:

```bash
git remote set-url origin https://github.com/alberthgrande/Data-Analyst.git
```

That happens because Android shared storage (`/storage/emulated/0`) is owned differently than normal Linux folders, and Git treats it as “dubious ownership”.

Add the folder as safe:

```bash id="sx8v9a"
git config --global --add safe.directory /storage/emulated/0/Data-Analyst
```

Then rename the branch again:

```bash id="f5k1mz"
git branch -M master
```

Or if you prefer the modern default:

```bash id="w7c2qe"
git branch -M main
```

You can check with:

```bash id="r4m8dn"
git branch
```
