FROM python:3.9
LABEL maintainer="Andreas - Ansoen"

WORKDIR /techtrends
COPY techtrends/ /techtrends/

RUN pip install -r requirements.txt

EXPOSE 3111

CMD sh -c "python init_db.py && python app.py"