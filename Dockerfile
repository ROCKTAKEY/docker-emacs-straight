FROM ubuntu
MAINTAINER ROCKTAKEY <rocktakey@gmail.com>

COPY init.el ~/.emacs.d
RUN apt -y update                                                 && \
    apt -y install git                                            && \
    apt -y install software-properties-common                     && \
    add-apt-repository -y ppa:kelleyk/emacs                       && \
    apt -y update                                                 && \
    apt -y install emacs26                                        && \
    mkdir ~/.emacs.d/                                             && \
    apt install -y python curl                                    && \
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go \
    | python
ENV PATH "~/.cask/bin:$PATH"
