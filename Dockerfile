FROM python:3.6
LABEL maintainer="kig.kimura <kig.kimura.ynu@gmail.com>"

WORKDIR /usr/src/app

# pipの更新
RUN pip install --upgrade pip

# 基本データ解析ライブラリ
RUN pip install numpy \
scipy \
matplotlib \
ipython \
scikit-learn \
scikit-image \
pandas \
pillow \
seaborn \
plotly \
opencv-python

# boosting用ライブラリ
RUN pip install xgboost \
lightgbm


# 深層学習用ライブラリ
RUN pip install tensorflow \
tensorflow-gpu \
tensorboard \
keras \
pytorch \
chainer

# jupyter lab
RUN pip install jupyterlab
RUN jupyter serverextension enable --py jupyterlab

# jupyter lab extension
RUN jupyter labextension install @lckr/jupyterlab_variableinspector
RUN jupyter labextension install @jupyterlab/toc
RUN jupyter labextension install jupyterlab_tensorboard
RUN jupyter serverextension enable --py jupyterlab_tensorboard
RUN jupyter labextension install @jupyterlab/git
RUN install jupyterlab-git
RUN jupyter serverextension enable --py jupyterlab_git
RUN pip install jupyterlab-nvdashboard
RUN jupyter labextension install jupyterlab-nvdashboard
