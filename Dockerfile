FROM tensorflow/tensorflow:2.3.0
RUN pip install tensorflow_datasets
COPY tfjob2.py /
ENTRYPOINT ["python", "/tfjob2.py", "--saved_model_dir", "/train/saved_model/"]