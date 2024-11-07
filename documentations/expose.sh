kubectl get services -n dev
kubectl port-forward service/tsa-dev-service 8040:8040 -n dev