# syntax=docker/dockerfile:1

FROM python:3.10.7-bullseye

COPY requirements.txt requirements.txt 
#first is file on our local system and second is the file on our computer

RUN pip install -r requirements.txt 
#-r means we're giving a package

WORKDIR /lab2
#naming the larger folder we're working in

EXPOSE 8888
# don't need to know too much about ports, but this does not interfere with ports on the computer
# because we will be in a container

CMD ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
# this is what I would type in the command line: 
# jupyter lab --ip=0.0.0.0 --allow-root