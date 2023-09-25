FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer="2592509183@qq.com"
LABEL description="This is a Docker Image for XRobot build."

RUN apt update && apt upgrade -y --no-install-recommends

RUN apt install -y --no-install-recommends git curl sudo wget zip make && apt install -y gcc-arm-none-eabi net-tools usbutils nano

RUN apt install -y --no-install-recommends cmake ninja-build clang clangd clang-tidy python3-tk python3-pip && apt clean

RUN curl -fsSL https://code-server.dev/install.sh | sh

RUN code-server --install-extension dan-c-underwood.arm jeff-hykin.better-cpp-syntax zixuanwang.linkerscript llvm-vs-code-extensions.vscode-clangd \
		vadimcn.vscode-lldb twxs.cmake ms-vscode.cmake-tools cschlosser.doxdocgen eamodio.gitlens ms-vscode.hexeditor davidanson.vscode-markdownlint \
		marus25.cortex-debug xyz.local-history
