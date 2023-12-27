FROM jupyter/tensorflow-notebook

# WORKDIR /object-detection

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.allow_origin='*'", "--notebook-dir=/home/jovyan/work"]