FROM ubuntu:18.10
RUN apt-get update
RUN apt-get -y install sudo curl apt-transport-https build-essential git gcc g++ pkg-config libstdc++6
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn
RUN apt-get clean

RUN curl https://get.parity.io -L > ~/parity.sh
RUN chmod +x ~/parity.sh
RUN ~/parity.sh



COPY package.json .
COPY package-lock.json .
RUN yarn install

COPY . .
RUN node_modules/.bin/truffle compile
RUN bash test.sh

