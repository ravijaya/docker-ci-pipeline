docker container run --rm -it \
-v $(pwd):/usr/src/app \
-w /usr/src/app \
perl:slim sh -c "cat sample.txt | perl -lpe 's/^\s*//'"

