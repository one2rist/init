#!/bin/sh

echo >&2 "Running pre-commit hook"
srcpattern='.*\.(c|cc|cpp|cxx|h|hh|hpp|hxx)$'
cmkpattern='(CMakeLists\.txt|*\.cmake)$'
excpattern='(?!3rdParty|build/)'
root=$(git rev-parse --show-toplevel)
scope="git diff-index --cached --name-only HEAD"
# scope="find . -type f"
cd ${root}
for file in `${scope} | grep -vE ${excpattern} | grep -iE ${srcpattern}` ; do
    f=${root}/${file}
    clang-format-10 -i ${f}
    echo >&2 "CLANG-FORMAT: ${f}"
    git add ${f}
done
for file in `${scope} | grep -vE ${excpattern} | grep -iE ${cmkpattern}` ; do
    f=${root}/${file}
    cmake-format -i ${f}
    echo >&2 "CMAKE-FORMAT: ${f}"
    git add ${f}
done
