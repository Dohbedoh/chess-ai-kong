FROM node:6

# Install Google Chrome 
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \ 
&& sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \ 
&& apt-get update && apt-get install -y google-chrome-stable

RUN git config --global user.email "aburdajewicz@cloudbees.com" 
RUN git config --global user.name "dohbedoh" 
RUN git config --global push.default matching
