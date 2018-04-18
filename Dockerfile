FROM node:6

RUN groupadd --gid 501 jenkins \
  && useradd --uid 501 --gid node --shell /bin/bash --create-home jenkins
  
USER 501:20

RUN git config --global user.email "aburdajewicz@cloudbees.com" 
RUN git config --global user.name "dohbedoh" 
RUN git config --global push.default matching
RUN git config --global core.sshCommand "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
