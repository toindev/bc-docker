FROM debian:latest as build
RUN apt-get update; apt-get install -y bc

WORKDIR /

# Extract dependencies
RUN ldd /usr/bin/bc | tr -s '[:blank:]' '\n' | grep '^/' | \
    xargs -I % sh -c 'mkdir -p $(dirname deps%); cp % deps%;'

FROM scratch
COPY --from=build /deps /
COPY --from=build /usr/bin/bc /bc

ENTRYPOINT [ "/bc" ]