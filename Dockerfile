FROM registry.opensuse.org/opensuse/leap:15.5

RUN zypper --non-interactive in --no-recommends git-core \
                                                ruby-devel \
                                                gcc-c++ \
                                                sudo \
                                                nodejs18 && \
    zypper clean; \
    rm -rf /var/log/* /var/cache/zypp

# Setup our user
RUN useradd -u 13042 -m blog; \
    echo 'blog ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers; \
    echo 'install: --no-format-executable' >> /etc/gemrc; \
    # Install last bundler version with ruby 2.5 support
    gem install bundler -v 2.3.26

# We copy the Gemfile to this intermediate build stage so it's checksum
# changes and all the subsequent stages (a.k.a. the bundle install call below)
# have to be rebuild.
ADD --chown=blog:users Gemfile /home/blog/blog/Gemfile
ADD --chown=blog:users Gemfile.lock /home/blog/blog/Gemfile.lock

USER blog
WORKDIR /home/blog/blog
ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1
ENV LC_ALL C.UTF-8

RUN bundle install

CMD ["/bin/bash", "-l"]
