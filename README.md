# CTFd-docker-deploy
Repository to deploy CTFd using docker.

Brief instructions follow but you can also refer [to a blogpost](https://joshcgrossman.com/2018/03/15/setting-up-an-owasp-juice-shop-ctf/) about how I used this setup .

## How to use this repository to start a CTFd instance without TLS

1. Clone this repository by running `git clone https://github.com/tghosth/CTFd-docker-deploy.git`.
2. Go into the directory which the repository was cloned into (`CTFd-docker-deploy` by default)
3. Either:
    1. Install `docker` based on the instructions [here](https://docs.docker.com/install/).
    2. Install `docker-compose` based on the instructions [here](https://docs.docker.com/compose/install/#install-compose).
    3. Copy the contents of the https://github.com/CTFd/CTFd repository into this `CTFd-docker-deploy` folder.
4. Or:
    1. Run the `setupenv.sh` script from this folder.
5. Run `run.sh` or `docker-compose up`.

## How to use this repository to start a CTFd instance with TLS

1. Follow steps 1 to 4 from the previous section.
2. Setup your DNS records to point to the server where you are starting CTFd.
3. Get a TLS certificate and private key from a Certificate Authority and save them as `ctfd.crt` and `ctfd.key` respectively in the `ssl` directory in your cloned repository.
4. Edit the `hostname` line in the `docker-compose-production.yml` file to match the hostname you have defined to point to this server.
5. Run `run-tls.sh` or `docker-compose -f docker-compose.yml -f docker-compose-production.yml up`.
