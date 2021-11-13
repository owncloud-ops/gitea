FROM alpine:3.14@sha256:635f0aa53d99017b38d1a0aa5b2082f7812b03e3cdb299103fe77b5c8a07f1d2

LABEL maintainer="ownCloud DevOps <devops@owncloud.com>"
LABEL org.opencontainers.image.authors="ownCloud DevOps <devops@owncloud.com>"
LABEL org.opencontainers.image.title="Gitea"
LABEL org.opencontainers.image.url="https://github.com/owncloud-ops/gitea"
LABEL org.opencontainers.image.source="https://github.com/owncloud-ops/gitea"
LABEL org.opencontainers.image.documentation="https://github.com/owncloud-ops/gitea"

ARG BUILD_VERSION
ARG GOMPLATE_VERSION
ARG WAIT_FOR_VERSION

# renovate: datasource=docker depName=gitea/gitea
ENV GITEA_VERSION="${BUILD_VERSION:-1.15.6}"
# renovate: datasource=github-releases depName=hairyhenderson/gomplate
ENV GOMPLATE_VERSION="${GOMPLATE_VERSION:-v3.10.0}"
# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION="${WAIT_FOR_VERSION:-v0.2.0}"

ADD overlay /

RUN apk --update --no-cache add bash ca-certificates gettext asciidoc \
    git git-lfs gnupg openssh-keygen

RUN addgroup -g 1001 -S git && \
    adduser -S -D -H -u 1001 -h /opt/app -s /bin/bash -G git -g git git

RUN apk --update add --virtual .build-deps curl tar && \
    curl -SsL -o /usr/local/bin/gomplate "https://github.com/hairyhenderson/gomplate/releases/download/${GOMPLATE_VERSION}/gomplate_linux-amd64-slim" && \
    curl -SsL -o /usr/local/bin/wait-for "https://github.com/thegeeklab/wait-for/releases/download/${WAIT_FOR_VERSION}/wait-for" && \
    chmod 755 /usr/local/bin/gomplate && \
    chmod 755 /usr/local/bin/wait-for && \
    mkdir -p /opt/app/config && \
    mkdir -p /opt/app/data && \
    mkdir -p /opt/app/data/secrets && \
    GITEA_VERSION="${GITEA_VERSION##v}" && \
    echo "Installing Gitea version '${GITEA_VERSION}' ..." && \
    curl -SsL -o /usr/bin/gitea "https://github.com/go-gitea/gitea/releases/download/v${GITEA_VERSION}/gitea-${GITEA_VERSION}-linux-amd64" && \
    chmod 755 /usr/bin/gitea && \
    chown -R git:git /opt/app && \
    chmod 0750 /opt/app /opt/app/config /opt/app/data && \
    chmod 0700 /opt/app/data/secrets && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

EXPOSE 2222 3000

USER git

ENTRYPOINT ["/usr/bin/entrypoint"]
HEALTHCHECK --interval=10s --timeout=5s --retries=3 CMD /usr/bin/healthcheck
WORKDIR /opt/app/data
CMD []
