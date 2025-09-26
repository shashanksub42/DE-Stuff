FROM python:3.9

RUN pip install pandas
RUN pip install pyarrow
RUN pip install fastparquet

WORKDIR /app
copy pipeline.py pipeline.py
ENTRYPOINT ["python", "pipeline.py"]