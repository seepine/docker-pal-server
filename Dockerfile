FROM cm2network/steamcmd:root
LABEL maintainer="seepine@outlook.com"
ENV STEAMAPPID=2394010 \
    STEAMAPPRUN=/home/steam/Steam/steamapps/common/PalServer/PalServer.sh
COPY etc/entry.sh ${HOMEDIR}
RUN set -x \
    && chmod 755 "${HOMEDIR}/entry.sh" \
    && chown "${USER}:${USER}" "${HOMEDIR}/entry.sh"
USER ${USER}
WORKDIR ${HOMEDIR}
EXPOSE 8211/udp
CMD ["bash", "entry.sh"]
