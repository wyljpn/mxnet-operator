#FROM golang:1.13.8
FROM klstg-docker.slb-wartifactory-v.stg.rmn.local/rakuten/rflow/rflow-go:1.17 

RUN mkdir -p /opt/kubeflow
COPY cmd/mxnet-operator.v1beta1 /opt/kubeflow/mxnet-operator.v1beta1
COPY cmd/mxnet-operator.v1 /opt/kubeflow/mxnet-operator.v1

RUN chmod a+x /opt/kubeflow/mxnet-operator.v1beta1
RUN chmod a+x /opt/kubeflow/mxnet-operator.v1

CMD ["/opt/kubeflow/mxnet-operator.v1"]
