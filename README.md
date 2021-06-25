# gitea

[![Build Status](https://drone.owncloud.com/api/badges/owncloud-ops/gitea/status.svg)](https://drone.owncloud.com/owncloud-ops/gitea/)
[![Docker Hub](https://img.shields.io/badge/docker-latest-blue.svg?logo=docker&logoColor=white)](https://hub.docker.com/r/owncloudops/gitea)

Docker image for Gitea.

## Ports

- 2222
- 3000

## Volumes

- /opt/app/data

## Environment Variables

```Shell
GITEA_APP_NAME="Gitea: Git with a cup of tea"
GITEA_RUN_MODE="prod"

GITEA_REPO_ANSI_CHARSET=
GITEA_REPO_FORCE_PRIVATE=false
GITEA_REPO_DEFAULT_PRIVATE="last"
GITEA_REPO_MAX_CREATION_LIMIT="-1"
GITEA_REPO_MIRROR_QUEUE_LENGTH="1000"
GITEA_REPO_PULL_REQUEST_QUEUE_LENGTH="1000"
GITEA_REPO_PREFERRED_LICENSES="Apache License 2.0,MIT License"
GITEA_REPO_DISABLE_HTTP_GIT=false
GITEA_REPO_ACCESS_CONTROL_ALLOW_ORIGIN=
GITEA_REPO_USE_COMPAT_SSH_URI=false
GITEA_REPO_DEFAULT_CLOSE_ISSUES_VIA_COMMITS_IN_ANY_BRANCH=false

# [repository.editor]
GITEA_REPO_EDITOR_LINE_WRAP_EXTENSIONS=".txt,.md,.markdown,.mdown,.mkd"
GITEA_REPO_EDITOR_PREVIEWABLE_FILE_MODES="markdown"

#[repository.upload]
GITEA_REPO_UPLOAD_ENABLED=true
GITEA_REPO_UPLOAD_ALLOWED_TYPES=
GITEA_REPO_UPLOAD_FILE_MAX_SIZE="3"
GITEA_REPO_UPLOAD_MAX_FILES="5"

# [repository.pull-request]
GITEA_REPO_PULL_REQUEST_WIP_PREFIXES="WIP:,[WIP]"

# [repository.issue]
GITEA_REPO_ISSUE_LOCK_REASONS="Heated,Offtopic,Resolved,Spam"

# [cors]
GITEA_CORS_ENABLED=false
GITEA_CORS_SCHEME="http"
GITEA_CORS_ALLOW_DOMAIN="*"
GITEA_CORS_ALLOW_SUBDOMAIN=false
GITEA_CORS_METHODS="GET,HEAD,POST,PUT,PATCH,DELETE,OPTIONS"
GITEA_CORS_MAX_AGE="10m"
GITEA_CORS_ALLOW_CREDENTIALS=false

# [ui]
GITEA_UI_EXPLORE_PAGING_NUM="20"
GITEA_UI_ISSUE_PAGING_NUM="10"
GITEA_UI_FEED_MAX_COMMIT_NUM="5"
GITEA_UI_GRAPH_MAX_COMMIT_NUM="20"
GITEA_UI_CODE_COMMENT_LINES="4"
GITEA_UI_THEME_COLOR_META_TAG="#6cc644"
GITEA_UI_MAX_DISPLAY_FILE_SIZE="8388608"
GITEA_UI_SHOW_USER_EMAIL=true
GITEA_UI_DEFAULT_THEME="gitea"
GITEA_UI_THEMES="gitea,arc-green"
GITEA_UI_DEFAULT_SHOW_FULL_NAME=false
GITEA_UI_SEARCH_REPO_DESCRIPTION=true

# [ui.admin]
GITEA_UI_ADMIN_USER_PAGING_NUM="50"
GITEA_UI_ADMIN_REPO_PAGING_NUM="50"
GITEA_UI_ADMIN_NOTICE_PAGING_NUM="25"
GITEA_UI_ADMIN_ORG_PAGING_NUM="50"

# [ui.user]
GITEA_UI_USER_REPO_PAGING_NUM="15"

# [ui.meta]
GITEA_UI_META_AUTHOR="Gitea - Git with a cup of tea"
GITEA_UI_META_DESCRIPTION="Gitea (Git with a cup of tea) is a painless self-hosted Git service written in Go"
GITEA_UI_META_KEYWORDS="go,git,self-hosted,gitea"

# [markdown]
GITEA_MARKDOWN_ENABLE_HARD_LINE_BREAK=true
GITEA_MARKDOWN_CUSTOM_URL_SCHEMES=false
GITEA_MARKDOWN_FILE_EXTENSIONS=".md,.markdown,.mdown,.mkd"

# [server]
GITEA_SERVER_DOMAIN="localhost"
GITEA_SERVER_ROOT_URL="http://localhost"
GITEA_SERVER_SSH_CREATE_AUTHORIZED_KEYS_FILE=true
GITEA_SERVER_SSH_SERVER_CIPHERS=
GITEA_SERVER_SSH_SERVER_KEY_EXCHANGES=
GITEA_SERVER_SSH_SERVER_MACS=
GITEA_SERVER_SSH_BACKUP_AUTHORIZED_KEYS=true
GITEA_SERVER_SSH_EXPOSE_ANONYMOUS=false
GITEA_SERVER_MINIMUM_KEY_SIZE_CHECK=false
GITEA_SERVER_OFFLINE_MODE=false
GITEA_SERVER_DISABLE_ROUTER_LOG=false
GITEA_SERVER_ENABLE_GZIP=false
GITEA_SERVER_ENABLE_PPROF=false
GITEA_SERVER_LANDING_PAGE="home"
GITEA_SERVER_LFS_START_SERVER=false
GITEA_SERVER_LFS_JWT_SECRET=
GITEA_SERVER_LFS_HTTP_AUTH_EXPIRY="20m"

# [ssh.minimum_key_sizes]
GITEA_SSH_MINIMUM_KEY_SIZES_ED25519="256"
GITEA_SSH_MINIMUM_KEY_SIZES_ECDSA="256"
GITEA_SSH_MINIMUM_KEY_SIZES_RSA="2048"

# [database]
GITEA_DATABASE_TYPE="sqlite3"
## sqlite3
GITEA_DATABASE_TIMEOUT="500"
## mysql
GITEA_DATABASE_HOST=
GITEA_DATABASE_NAME=gitea
GITEA_DATABASE_USERNAME=
GITEA_DATABASE_PASSWORD=
GITEA_DATABASE_SSL=false
GITEA_DATABASE_CHARSET=utf8mb4

GITEA_DATABASE_ITERATE_BUFFER_SIZE="50"
GITEA_DATABASE_LOG_SQL=true
GITEA_DATABASE_RETRIES="10"
GITEA_DATABASE_RETRY_BACKOFF="3s"
GITEA_DATABASE_MAX_IDLE_CONNS="2"
GITEA_DATABASE_CONN_MAX_LIFETIME="3s"
GITEA_DATABASE_MAX_OPEN_CONNS="0"

# [indexer]
GITEA_INDEXER_ISSUE_QUEUE_TYPE="levelqueue"
GITEA_INDEXER_ISSUE_QUEUE_BATCH_NUMBER="20"
GITEA_INDEXER_ISSUE_QUEUE_CONN_STR=
GITEA_INDEXER_REPO_ENABLED=false
GITEA_INDEXER_UPDATE_BUFFER_LEN="20"
GITEA_INDEXER_MAX_FILE_SIZE="1048576"

# [admin]
GITEA_ADMIN_DISABLE_REGULAR_ORG_CREATION=false
GITEA_ADMIN_DEFAULT_EMAIL_NOTIFICATIONS="enabled"

# [security]
GITEA_SECURITY_SECRET_KEY=
GITEA_SECURITY_LOGIN_REMEMBER_DAYS="7"
GITEA_SECURITY_MIN_PASSWORD_LENGTH="8"
GITEA_SECURITY_IMPORT_LOCAL_PATHS=false
GITEA_SECURITY_DISABLE_GIT_HOOKS=true
GITEA_SECURITY_PASSWORD_COMPLEXITY="off"
GITEA_SECURITY_PASSWORD_HASH_ALGO="argon2"
GITEA_SECURITY_CSRF_COOKIE_HTTP_ONLY=true

# [service]
GITEA_SERVICE_ACTIVE_CODE_LIVE_MINUTES=180
GITEA_SERVICE_RESET_PASSWD_CODE_LIVE_MINUTES=180
GITEA_SERVICE_REGISTER_EMAIL_CONFIRM=false
GITEA_SERVICE_EMAIL_DOMAIN_WHITELIST=
GITEA_SERVICE_DISABLE_REGISTRATION=
GITEA_SERVICE_ALLOW_ONLY_EXTERNAL_REGISTRATION=false
GITEA_SERVICE_REQUIRE_SIGNIN_VIEW=false
GITEA_SERVICE_ENABLE_NOTIFY_MAIL=false
GITEA_SERVICE_ENABLE_REVERSE_PROXY_AUTHENTICATION=false
GITEA_SERVICE_ENABLE_REVERSE_PROXY_AUTO_REGISTRATION=false
GITEA_SERVICE_ENABLE_REVERSE_PROXY_EMAIL=false
GITEA_SERVICE_ENABLE_CAPTCHA=false
GITEA_SERVICE_CAPTCHA_TYPE=image
GITEA_SERVICE_DEFAULT_KEEP_EMAIL_PRIVATE=false
GITEA_SERVICE_DEFAULT_ALLOW_CREATE_ORGANIZATION=true
GITEA_SERVICE_DEFAULT_ORG_VISIBILITY=true
GITEA_SERVICE_DEFAULT_ORG_MEMBER_VISIBLE=false
GITEA_SERVICE_DEFAULT_ENABLE_DEPENDENCIES=true
GITEA_SERVICE_ENABLE_USER_HEATMAP=true
GITEA_SERVICE_ENABLE_TIMETRACKING=true
GITEA_SERVICE_DEFAULT_ENABLE_TIMETRACKING=true
GITEA_SERVICE_DEFAULT_ALLOW_ONLY_CONTRIBUTORS_TO_TRACK_TIME=true
GITEA_SERVICE_NO_REPLY_ADDRESS="noreply.%(DOMAIN)s"
GITEA_SERVICE_AUTO_WATCH_NEW_REPOS=true

# [webhook]
GITEA_WEBHOOK_QUEUE_LENGTH=1000
GITEA_WEBHOOK_DELIVER_TIMEOUT=5
GITEA_WEBHOOK_SKIP_TLS_VERIFY=false
GITEA_WEBHOOK_PAGING_NUM=10

# [mailer]
GITEA_MAILER_ENABLED=false
GITEA_MAILER_SEND_BUFFER_LEN=100
GITEA_MAILER_SUBJECT_PREFIX=
GITEA_MAILER_HOST=
GITEA_MAILER_DISABLE_HELO=
GITEA_MAILER_HELO_HOSTNAME=
GITEA_MAILER_SKIP_VERIFY=false
GITEA_MAILER_USE_CERTIFICATE=false
GITEA_MAILER_CERT_FILE=
GITEA_MAILER_KEY_FILE=
GITEA_MAILER_IS_TLS_ENABLED=false
GITEA_MAILER_FROM=
GITEA_MAILER_USERNAME=
GITEA_MAILER_PASSWORD=
GITEA_MAILER_SEND_AS_PLAIN_TEXT=false
GITEA_MAILER_MAILER_TYPE=smtp
GITEA_MAILER_SENDMAIL_PATH=sendmail
GITEA_MAILER_SENDMAIL_ARGS=

# [cache]
GITEA_CACHE_ADAPTER="memory"
GITEA_CACHE_HOST=
GITEA_CACHE_INTERVAL="60"
GITEA_CACHE_ITEM_TTL="16h"

# [session]
GITEA_SESSION_PROVIDER="memory"
GITEA_SESSION_PROVIDER_CONFIG=
GITEA_SESSION_SESSION_LIFE_TIME="86400"

# [picture]
GITEA_PICTURE_AVATAR_MAX_WIDTH=4096
GITEA_PICTURE_AVATAR_MAX_HEIGHT=3072
GITEA_PICTURE_AVATAR_MAX_FILE_SIZE=1048576
GITEA_PICTURE_GRAVATAR_SOURCE=gravatar
GITEA_PICTURE_DISABLE_GRAVATAR=false
GITEA_PICTURE_ENABLE_FEDERATED_AVATAR=false

# [attachment]
GITEA_ATTACHMENT_ENABLED=true
GITEA_ATTACHMENT_ALLOWED_TYPES="image/jpeg|image/png|application/zip|application/gzip"
GITEA_ATTACHMENT_MAX_SIZE="5"
GITEA_ATTACHMENT_MAX_FILES="5"

# [log]
GITEA_LOG_BUFFER_LEN="10000"
GITEA_LOG_ROUTER_LOG_LEVEL="Error"
GITEA_LOG_ENABLE_ACCESS_LOG=false
GITEA_LOG_ACCESS_LOG_TEMPLATE=
GITEA_LOG_LEVEL="Error"
GITEA_LOG_STACKTRACE_LEVEL="None"

# [cron]
GITEA_CRON_ENABLED=true
GITEA_CRON_RUN_AT_START=false

# [cron.update_mirrors]
GITEA_CRON_UPDATE_MIRRORS_SCHEDULE="@every 10m"

# [cron.repo_health_check]
GITEA_CRON_REPO_HEALTH_CHECK_SCHEDULE="@every 24h"
GITEA_CRON_REPO_HEALTH_CHECK_TIMEOUT="60s"
GITEA_CRON_REPO_HEALTH_CHECK_ARGS=

# [cron.check_repo_stats]
GITEA_CRON_CHECK_REPO_STATS=true
GITEA_CRON_CHECK_REPO_STATS_SCHEDULE="@every 24h"

# [cron.archive_cleanup]
GITEA_CRON_ARCHIVE_CLEANUP_ENABLED=true
GITEA_CRON_ARCHIVE_CLEANUP_RUN_AT_START=true
GITEA_CRON_ARCHIVE_CLEANUP_SCHEDULE="@every 24h"
GITEA_CRON_ARCHIVE_CLEANUP_OLDER_THAN="24h"

# [cron.sync_external_users]
GITEA_CRON_SYNC_EXTERNAL_USERS_RUN_AT_START=false
GITEA_CRON_SYNC_EXTERNAL_USERS_SCHEDULE="@every 24h"
GITEA_CRON_SYNC_EXTERNAL_USERS_UPDATE_EXISTING=true

# [cron.update_migration_post_id]
GITEA_CRON_UPDATE_MIGRATION_POST_ID_SCHEDULE="@every 24h"

# [git.timeout]
GITEA_GIT_TIMEOUT_DEFAULT="360"
GITEA_GIT_TIMEOUT_MIGRATE="600"
GITEA_GIT_TIMEOUT_MIRROR="300"
GITEA_GIT_TIMEOUT_CLONE="300"
GITEA_GIT_TIMEOUT_PULL="300"
GITEA_GIT_TIMEOUT_GC="60"

# [mirror]
GITEA_MIRROR_DEFAULT_INTERVAL="8h"
GITEA_MIRROR_MIN_INTERVAL="10m"

# [api]
GITEA_API_ENABLE_SWAGGER=true
GITEA_API_MAX_RESPONSE_ITEMS="50"
GITEA_API_DEFAULT_PAGING_NUM="30"
GITEA_API_DEFAULT_GIT_TREES_PER_PAGE="1000"
GITEA_API_DEFAULT_MAX_BLOB_SIZE="10485760"

# [oauth2]
GITEA_OAUTH2_ENABLED=true
GITEA_OAUTH2_ACCESS_TOKEN_EXPIRATION_TIME="3600"
GITEA_OAUTH2_REFRESH_TOKEN_EXPIRATION_TIME="730"
GITEA_OAUTH2_INVALIDATE_REFRESH_TOKENS=false
JWT_SIGNING_ALGORITHM=RS256
GITEA_OAUTH2_JWT_SECRET=

# [U2F]
GITEA_U2F_ENABLED=false
GITEA_U2F_APP_ID=
GITEA_U2F_TRUSTED_FACETS=

# [highlight.mapping]
GITEA_HIGHLIGHT_MAPPING=

# [other]
GITEA_OTHER_SHOW_FOOTER_BRANDING=false
GITEA_OTHER_SHOW_FOOTER_VERSION="false"
GITEA_OTHER_SHOW_FOOTER_TEMPLATE_LOAD_TIME=false

# [markup.asciidoc]
GITEA_MARKUP_ASCIIDOC_ENABLED=true
GITEA_MARKUP_ASCIIDOC_FILE_EXTENSIONS=".adoc,.asciidoc"
GITEA_MARKUP_ASCIIDOC_RENDER_COMMAND="asciidoc --out-file=- -"
GITEA_MARKUP_ASCIIDOC_IS_INPUT_FILE=false

# [metrics]
GITEA_METRICS_ENABLED=false
GITEA_METRICS_TOKEN=

# [task]
GITEA_TASK_QUEUE_TYPE="channel"
GITEA_TASK_QUEUE_LENGTH="1000"
GITEA_TASK_QUEUE_CONN_STR=
```

## Build

You could use the `BUILD_VERSION` to specify the target version.

```Shell
docker build --build-arg BUILD_VERSION=1.13.0 -f Dockerfile -t gitea:latest .
```

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](https://github.com/owncloud-ops/gitea/blob/master/LICENSE) file for details.
