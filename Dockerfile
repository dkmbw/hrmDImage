FROM alpine:3.9

RUN apk update && \
 apk add curl gettext bash postgresql ansible git ca-certificates openssh openssl coreutils

COPY setupbin $HOME/setupbin 
RUN chmod -R a+rx setupbin
RUN bash -c "setupbin/provide_kubectl.sh"
RUN bash -c "setupbin/provide_helm.sh"
RUN bash -c "setupbin/provide_azure_cli.sh"

