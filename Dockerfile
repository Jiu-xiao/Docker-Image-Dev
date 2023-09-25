FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer="2592509183@qq.com"
LABEL description="This is a Docker Image for XRobot build."

RUN apt update && apt upgrade -y --no-install-recommends

RUN apt install -y --no-install-recommends git curl sudo wget zip make && apt install -y gcc-arm-none-eabi net-tools usbutils nano

RUN apt install -y --no-install-recommends cmake ninja-build clang clangd clang-tidy python3-tk python3-pip && apt clean
