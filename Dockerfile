FROM node:6

RUN groupadd --gid 20 jenkins \
  && useradd --uid 501 --gid node --shell /bin/bash --create-home jenkins
  
USER 501:20

RUN git config --global user.email "aburdajewicz@cloudbees.com" 
RUN git config --global user.name "dohbedoh" 
RUN git config --global push.default matching
