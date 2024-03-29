FROM aviata/storm


RUN date -u +"%Y-%m-%d %H:%M%S?" && chmod +x /usr/bin/config-supervisord.sh
RUN date -u +"%Y-%m-%d %H:%M%S?" && /usr/bin/config-supervisord.sh nimbus
RUN date -u +"%Y-%m-%d %H:%M%S?" && /usr/bin/config-supervisord.sh drpc
    
EXPOSE 6627
EXPOSE 3772
EXPOSE 3773

#ADD start-supervisor.sh /usr/bin/start-supervisor.sh
RUN date -u +"%Y-%m-%d %H:%M%S?" && chmod +x /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh nimbus
