FROM alpine@sha256:a75afd8b57e7f34e4dad8d65e2c7ba2e1975c795ce1ee22fa34f8cf46f96a3be

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
ENV GITEA_VERSION="${BUILD_VERSION:-1.13.2}"
# renovate: datasource=github-releases depName=hairyhenderson/gomplate
ENV GOMPLATE_VERSION="${GOMPLATE_VERSION:-v3.8.0}"
# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION="${WAIT_FOR_VERSION:-v0.1.0}"

ADD overlay /
WORKDIR /opt/app/data

RUN apk --update --no-cache add bash ca-certificates gettext asciidoc \
    git git-lfs gnupg openssh-keygen

RUN addgroup -g 1001 -S app && \
    adduser -S -D -H -u 1001 -h /opt/app -s /bin/bash -G app -g app app

RUN apk --update add --virtual .build-deps curl tar && \
    curl -SsL -o /usr/local/bin/gomplate "https://github.com/hairyhenderson/gomplate/releases/download/${GOMPLATE_VERSION}/gomplate_linux-amd64-slim" && \
    curl -SsL -o /usr/local/bin/wait-for "https://github.com/thegeeklab/wait-for/releases/download/${WAIT_FOR_VERSION}/wait-for" && \
    chmod 755 /usr/local/bin/gomplate && \
    chmod 755 /usr/local/bin/wait-for && \
    mkdir -p /opt/app/config && \
    mkdir -p /opt/app/data && \
    GITEA_VERSION="${GITEA_VERSION##v}" && \
    echo "Installing Gitea version '${GITEA_VERSION}' ..." && \
    curl -SsL -o /usr/local/bin/gitea "https://github.com/go-gitea/gitea/releases/download/v${GITEA_VERSION}/gitea-${GITEA_VERSION}-linux-amd64" && \
    chmod 755 /usr/local/bin/gitea && \
    chown -R app:app /opt/app && \
    chmod 0750 /opt/app /opt/app/config /opt/app/data && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

EXPOSE 2222 3000

USER app

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD []
