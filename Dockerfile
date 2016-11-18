FROM arizonatribe/centosredis
MAINTAINER David Nunez <arizonatribe@gmail.com>

ENV APP_NAME centosredissupervisor

CMD ["/usr/bin/start"]

# Overlay, containing supervisord configs and other shell scripts
COPY docker /

