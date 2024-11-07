kubectl get services -n dev
kubectl port-forward service/dev-tsa-service 8040:8040 -n dev