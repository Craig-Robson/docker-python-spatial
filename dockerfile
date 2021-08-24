FROM python:3.7
RUN apt-get -y update \
    && apt-get -y install libspatialindex-dev gdal-bin postgresql-client
COPY requirements.txt /
RUN pip3 install -r requirements.txt
RUN mkdir outputs
#COPY waterbodies.py .
COPY lad_bfc_2020 .
COPY osgb_grid_1km.gpkg .
#ENTRYPOINT ogr2ogr -clipsrc 'Local_Authority_Districts_(December_2020)_UK_BFC.shp' outputs/osgb_grid_1km_bfc_2020.gpkg osgb_grid_1km.gpkg
