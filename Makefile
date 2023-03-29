import-lorawan-devices:
	docker-compose run --rm --entrypoint bash --user root chirpstack -c '\
		apt-get update && \
		apt-get install -y make git && \
		git clone https://github.com/brocaar/lorawan-devices /tmp/lorawan-devices && \
		chirpstack -c /etc/chirpstack import-legacy-lorawan-devices-repository -d /tmp/lorawan-devices'
