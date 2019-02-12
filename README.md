#BC Docker image

Pretty much what it says on the tin :
- Latest Alpine
- Latest BC package from apk
- Default CMD using the -l flag, since it is used more often that not

#Usage
```
echo 1+1 | docker run --rm -i toindev/bc
2
```