from ubuntu:22.04

RUN adduser --disabled-password --gecos '' ubuntu && chsh -s /bin/bash && mkdir -p /home/ubuntu

RUN mkdir /workdir
RUN chown ubuntu /workdir

USER ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/bash"]
