FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.6

RUN gem install feature_gate --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["feature_gate_cleaner"]
CMD ["--help"]
