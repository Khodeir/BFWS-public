FROM lapkt/lapkt-public:latest
ENV LAPKT_PATH=/root/projects/lapkt
RUN apt-get update
RUN apt-get install -y git python-dev libboost-python-dev
RUN git clone https://github.com/nirlipo/BFWS-public.git /root/projects/lapkt/planners/bfws
RUN cd /root/projects/lapkt/planners/bfws/fd-version && ./build.py
RUN ln -s /root/projects/lapkt/planners/bfws/fd-version/bfws.py /root/projects/lapkt/compiled_planners/bfws
ENV PYTHONPATH=/root/projects/lapkt/planners/bfws/fd-version/

# RUN cd /root/projects/lapkt/planners/bfws/ff-version && scons
# RUN cp /root/projects/lapkt/planners/bfws/ff-version/bfws /root/projects/lapkt/compiled_planners/bfws

# RUN cd /root/projects/lapkt/planners/bfws/fd-version && ./build.py
