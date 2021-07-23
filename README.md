# image_optimization

Dockerfiles to show the image size changes due to use of various minimal base images and multi-stage build.

## golang.Dockerfile  

This uses golang:latest as base image which is an debian based and included large number of "development header" packages. This increases overall size of the generated docker image.

Created application image size would be: **(~824 MB)**

## alpine.Dockerfile

This uses golang:alpine as base image which is an alpine based and which are smaller in footprint.

Created application image size would be: **(~ 289 MB)**

## roost.Dockerfile

This uses scratch as base image. Application's executable binary can be build on underlying host machine which is then copied inside the docker image. To build the application run command `make roost`.

_**Note:** [Go](https://golang.org/doc/install) must be installed in host machine in order to build the application_

Created application image size would be: **(~1.99 MB)**

## scratch.Dockerfile

This uses multi-stage docker build. minimal base image with golang installed golang:alpine is used to build the application inside container and then build application is copied to scratch image.

Created application image size would be: **(~1.87 MB)**

## To build all images

Run ```make``` command.
