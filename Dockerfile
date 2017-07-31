FROM debian
MAINTAINER David Moreau

WORKDIR /home/server

CMD ["./hlds_run" , "+sv_lan 1" , "-nomaster" , "-game cstrike" , "+maxplayers 30","+map de_dust2"]
CMD ["/home/server/hlds_run" , "+sv_lan 1" , "-nomaster" , "-game cstrike" , "+maxplayers 30","+map de_dust2"]

#(RCON)
EXPOSE 27015/tcp

#(game transmission, pings)
EXPOSE 27015/udp

#(VAC service) -- automatically increments if used in case of additional server processes
EXPOSE 26900/udp
