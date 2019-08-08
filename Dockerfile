FROM frolvlad/alpine-glibc
LABEL maintainer="nandordocker"

COPY rootfs /

ENV UID=991 GID=991

RUN apk add -U \
				npm \
				git \
				su-exec\
				s6 \
				binutils \
		&& mkdir -p /opt \
		&& cd /opt \
		&& git clone https://github.com/UnicornTranscoder/UnicornTranscoder \
		&& cd UnicornTranscoder \
		&& npm install grunt \
		&& npm install --production \
		&& npm run install \
		&& chmod a+x /usr/local/bin/* /etc/s6.d/*/* \
		&& apk del git \
		&& rm -rf /tmp/* /var/cache/apk/*

EXPOSE 3000

CMD ["run.sh"]
