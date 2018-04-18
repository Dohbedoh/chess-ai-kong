FROM node:6

USER 1000:1000

RUN git config --global user.email "aburdajewicz@cloudbees.com" 
RUN git config --global user.name "dohbedoh" 
RUN git config --global push.default matching
