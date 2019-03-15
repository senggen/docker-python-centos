FROM centos:7



RUN yum update && \
    yum groupinstall -y "development tools" && \
    yum install -y zlib-devel bzip2-devel openssl-devel ncursed-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel expat-devel && \
    yum install -y wget && \
    wget http://python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz && \
    tar xf Python-3.7.2.tar.xz && \
    cd Python-3.7.2 && \
    ./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib" && \
    make && make altinstall && \
    strip /usr/local/lib/libpython3.7m.so.1.0 && \
    ln -s /usr/local/bin/python3.7 /usr/bin/python && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py
