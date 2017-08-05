FROM rakudo-star

WORKDIR /srv

RUN echo "===> Installing system dependencies" && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y mongodb-server && \
    echo "===> Installing: Perl6 modules" && \
    zef install MongoDB

CMD ["/bin/bash"]
