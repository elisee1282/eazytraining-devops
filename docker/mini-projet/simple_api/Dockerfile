ARG Version="2.7-buster"
FROM python:${Version}

LABEL description="Student list dockerfile"
LABEL maintainer="Ulrich NOUMSI"


COPY ./student_age.py /

RUN apt update -y \
    && apt install curl -y \
        python-dev \
        python3-dev \
        libsasl2-dev \
        libldap2-dev \
        libssl-dev \
    && pip install \
        flask==1.1.2 \
        flask_httpauth==4.1.0 \
        flask_simpleldap \
        python-dotenv==0.14.0

VOLUME ["/data"]

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["./student_age.py"]

HEALTHCHECK CMD curl --fail http://localhost:5000 || exit 1",
