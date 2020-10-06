# Copyright Istio Authors
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

FROM gradle:4.7.0-jdk8-alpine AS build
COPY --chown=gradle:gradle ./reviews-application/ /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM websphere-liberty:20.0.0.6-full-java8-ibmjava

ENV SERVERDIRNAME reviews

COPY ./reviews-wlpcfg/servers/LibertyProjectServer /opt/ibm/wlp/usr/servers/defaultServer/

COPY --chown=1001:0 --from=build /home/gradle/src/build/libs/reviews-application-1.0.war /opt/ibm/wlp/usr/servers/defaultServer/apps/reviews-application-1.0.war

# COPY --chown=1001:0 ./servers/LibertyProjectServer/reviews-application-1.0.war /opt/ibm/wlp/usr/servers/defaultServer/apps/reviews-application-1.0.war

RUN /opt/ibm/wlp/bin/installUtility install  --acceptLicense /opt/ibm/wlp/usr/servers/defaultServer/server.xml && \
    chmod -R g=rwx /opt/ibm/wlp/output/defaultServer/

ARG service_version
ARG enable_ratings
ARG star_color
ENV SERVICE_VERSION ${service_version:-v1}
ENV ENABLE_RATINGS ${enable_ratings:-false}
ENV STAR_COLOR ${star_color:-black}

CMD ["/opt/ibm/wlp/bin/server", "run", "defaultServer"]
