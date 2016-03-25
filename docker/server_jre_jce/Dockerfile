
FROM        xxlabaza/java:server-jre
MAINTAINER  Artem Labazin <xxlabaza@gmail.com>

RUN \
    #
    # Download and unarchive JCE (Java Cryptography Extension)
    #
    mkdir -p /opt/jdk/jre/lib/security \
    && curl -s -k -L -C - -b "oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip > /tmp/jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && unzip -d /tmp/ /tmp/jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && yes |cp -v /tmp/UnlimitedJCEPolicyJDK${JAVA_VERSION_MAJOR}/*.jar /opt/jdk/jre/lib/security/ \
    #
    # Clear temporaries
    #
    && rm -fr /tmp/*