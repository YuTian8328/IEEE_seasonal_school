FROM jupyter/scipy-notebook:python-3.9.10

USER root

RUN sudo apt-get update
RUN sudo apt-get -y install proj-bin

RUN pip install basemap-data
RUN pip install basemap-data-hires
RUN pip install basemap
RUN pip install geopy
RUN pip install fmiopendata
RUN pip install pygeos
