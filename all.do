# This fails with errors like:
# redo-log: [/home/cwarden/git/redo-parallel-bug] '544489.html': not known to redo ("No file with name='544489.html'").
jot -r 1000 1 1000000 | parallel -P1 redo-ifchange out/{}.txt

# This works:
# jot -r 1000 1 1000000 | parallel -P1 echo out/{}.txt | xargs redo-ifchange

# This also works, when no subdirectory is used for the target
# jot -r 1000 1 1000000 | parallel -P1 redo-ifchange {}.txt
