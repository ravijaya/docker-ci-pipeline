docker container run --rm -it \
-v $(pwd):/usr/src/app \
-w /usr/src/app \
python:3.7.4-alpine python stats.py sample.txt

