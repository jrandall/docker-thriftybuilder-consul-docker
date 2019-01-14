FROM python:3.6
MAINTAINER Joshua C. Randall <jcrandall@alum.mit.edu>

# install docker client binary
RUN (curl --fail --location --silent --show-error "https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz" | tar zxO docker/docker > /usr/bin/docker) \
    && chmod a+x /usr/bin/docker

# install consullock, thriftybuilder, and their requirements
RUN pip install \
      certifi==2018.8.24 \
      chardet==3.0.4 \
      checksumdir==1.1.4 \
      consullock==4.2.0 \
      demjson==2.2.4 \
      docker==3.5.0 \
      docker-pycreds==0.3.0 \
      dockerfile==2.0.1 \
      hgijson==3.1.0 \
      idna==2.7 \
      Jinja2==2.10 \
      MarkupSafe==1.0 \
      munch==2.3.2 \
      python-consul==1.1.0 \
      python-dateutil==2.7.3 \
      PyYAML==3.13 \
      requests==2.19.1 \
      six==1.11.0 \
      git+https://github.com/jrandall/thrifty-builder.git@v1.0.3-beta.1.0.4.4 \
      timeout-decorator==0.4.0 \
      urllib3==1.23 \
      websocket-client==0.53.0 \
      zgitignore==0.8.1
