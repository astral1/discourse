FROM        astral1/ruby-base

MAINTAINER  Jiung Jeong <ethernuiel@sanultari.com> 

ADD . /discourse
CMD rvm --default 1.9.3
CMD cd /discourse && bundle install
CMD cd /discourse && rake db:migrate

EXPOSE 5000
CMD cd /discourse && bundle exec foreman start
