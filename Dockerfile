FROM ceph/base

LABEL maintainer="ownCloud DevOps <devops@owncloud.com>" \
  org.label-schema.name="ownCloud CI ceph-keystone" \
  org.label-schema.vendor="ownCloud GmbH" \
  org.label-schema.schema-version="1.0"


RUN apt-get update && apt-get install -y --force-yes keystone && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD rootfs/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


