# cheat sheet

## Files
### Recursively find and replace in files
```bash
find . -type f -name "*.txt" -print0 | xargs -0 sed -i -e 's/foo/bar/g'
```

## SSH
### generate key:
```bash
ssh-keygen -t ed25519 -C "me@gmail.com" 
eval "$(ssh-agent -s)" 
ssh-add ~/.ssh/id_ed25519
cat ssh-add ~/.ssh/id_ed25519.pub
```

## Git
### Cleaning Ignored Files
```bash
git rm -r --cached . 
git add . 
git commit -m "Clean up ignored files" 
```

## Vim
### Cleaning Swap Files
```bash
find . -name ".*.swp" -type f -delete 
```
