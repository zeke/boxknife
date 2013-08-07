# Boxknife

Cut open local package.json files and see what versions of node they're using.

## Usage

Install boxknife as a global module, then give it a directory to recursively scan
for package.json files. If no directory argument is given, your current directory
will be used.

```
npm install boxknife -g
boxknife ~/projects
```
