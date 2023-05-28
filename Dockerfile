FROM apache/airflow:2.6.0

RUN pip install s3fs \
    && pip install markupsafe==2.1.2 \
	&& pip install apache-airflow-providers-odbc \
	&& pip install pyodbc \
	&& pip install apache-airflow-providers-microsoft-mssql \
	&& pip install apache-airflow-providers-microsoft-mssql[odbc] \
	&& pip install apache-airflow-providers-microsoft-azure \
    && pip install apache-airflow-providers-amazon \
	&& pip install gitpython

#docker build -t airflow-custom -f Dockerfile . --no-cache