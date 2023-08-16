FROM registry.opensuse.org/opensuse/leap:15.5

RUN zypper --non-interactive in --no-recommends git-core \
                                                ruby-devel \
                                                gcc-c++ \
                                                sudo \
                                                nodejs18 && \
    zypper clean; \
    rm -rf /var/log/* /var/cache/zypp

RUN useradd -u 13042 -m hvogel
RUN echo 'hvogel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN echo 'install: --no-format-executable' >> /etc/gemrc

USER hvogel
WORKDIR /home/hvogel/blog
ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1
ENV LC_ALL C.UTF-8

CMD ["/bin/bash", "-l"]
