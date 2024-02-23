echo "Loading Steam Release Branch"
"${STEAMCMDDIR}/steamcmd.sh" \
    +login anonymous \
    +app_update "${STEAMAPPID}" \
    +quit
${STEAMAPPRUN}
