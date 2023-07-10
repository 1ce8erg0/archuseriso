FROM archlinux
RUN sh -c "pacman-key --init && \
           pacman --noconfirm -Suvy && \
           pacman --noconfirm -S wget && \
           wget http://dl.gnutux.fr/archuseriso/packages/archuseriso-0.7.10-1-any.pkg.tar.zst && \
           pacman --noconfirm -U archuseriso-0.7.10-1-any.pkg.tar.zst"
