FROM pataquets/stunnel:xenial

ADD client-mongodb /etc/stunnel/confs-available/
RUN \
  ln -vs \
    /etc/stunnel/confs-available/client-mongodb \
    /etc/stunnel/conf.d/ \
  && \
  nl /etc/stunnel/conf.d/client-mongodb && \
  rm -v /etc/stunnel/conf.d/10-global-verify-peer
