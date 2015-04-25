FROM ipython/scipystack

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD apply.sh /tmp/apply.sh
RUN bash /tmp/apply.sh
RUN rm -f /tmp/apply.sh

ADD notebook.sh /
RUN chmod u+x /notebook.sh

CMD ["/notebook.sh"]
