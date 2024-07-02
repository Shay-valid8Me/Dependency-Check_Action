FROM ghcr.io/shay-valid8me/dependencycheck_builder:sha-9c3ed81

LABEL repository="https://github.com/Shay-valid8Me/Dependency-Check_Action" \
      homepage="https://github.com/Shay-valid8Me/Dependency-Check_Action" \
      maintainer="Shay-valid8Me" \
      com.github.actions.name="Dependency Check" \
      com.github.actions.description="Github action to execute dependency check as part of a github workflow" \
      com.github.actions.icon="shield" \
      com.github.actions.color="red"

USER root 

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
