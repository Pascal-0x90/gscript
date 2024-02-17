FROM golang:1.21.0

ENV GSCRIPT_REPO=github.com/Pascal-0x90/gscript
ENV GARBLE_VERSION=v0.10.0
ENV GSCRIPT_REVISION master
ENV GO111MODULE=auto
ENV GOPROXY=direct

# Setup all the go stuff and gscript
RUN go install ${GSCRIPT_REPO}/cmd/gscript@${GSCRIPT_REVISION}
RUN git clone https://${GSCRIPT_REPO}.git /go/src/${GSCRIPT_REPO}
RUN go install mvdan.cc/garble@${GARBLE_VERSION}

# Setup all the pretty stuff

ADD ps1.sh /etc/profile.d/Z1_PS1.sh

RUN chmod +x /etc/profile.d/Z1_PS1.sh && \
    echo "" >> /root/.bashrc && \
    echo "GSCRIPT_REVISION=$GSCRIPT_REVISION" >> /root/.bashrc && \
    echo "source /etc/profile.d/Z1_PS1.sh" >> /root/.bashrc

RUN git clone https://github.com/scopatz/nanorc.git /usr/share/nano-syntax-highlighting/

ADD nanorc /etc/nanorc

RUN git clone --depth=1 https://github.com/amix/vimrc.git /opt/vim

ADD vimrc /root/.vimrc

RUN echo "autocmd BufNewFile,BufRead *.gs set syntax=javascript" >> /opt/vim/my_configs.vim
RUN echo "set tabstop=4" >> /opt/vim/my_configs.vim
RUN echo "set shiftwidth=4" >> /opt/vim/my_configs.vim
RUN echo "set expandtab" >> /opt/vim/my_configs.vim
