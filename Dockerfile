FROM alpine:3.5
RUN apk add git python py-pip
RUN git clone https://github.com/aboul3la/Sublist3r.git
WORKDIR /Sublist3r
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "sublist3r.py"]
