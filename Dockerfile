FROM gradle:6.8-jdk11

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssh-server && \
    rm -rf /var/lib/apt/lists
RUN mkdir -p /home/gradle/.vscode-server/extensions /home/gradle/.m2 /home/gradle/.ssh && \
    chown -R gradle /home/gradle/.vscode-server /home/gradle/.m2 /home/gradle/.ssh /etc/ssh/ssh_host_*_key
USER gradle
