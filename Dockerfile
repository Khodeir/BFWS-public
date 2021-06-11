FROM lapkt/lapkt-public:latest
ENV LAPKT_PATH=/root/projects/lapkt
COPY . /root/projects/lapkt/planners/bfws
RUN cd /root/projects/lapkt/planners/bfws/ff-version && scons
RUN cp /root/projects/lapkt/planners/bfws/ff-version/bfws /root/projects/lapkt/compiled_planners/bfws

