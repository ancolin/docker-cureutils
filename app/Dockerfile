FROM ruby:2.4-alpine3.10
RUN gem install activesupport -v 5.2.4.1 \
 && gem install cureutils
COPY echo_random.sh /
CMD /bin/ash echo_random.sh
