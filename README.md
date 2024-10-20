# DEVOPS_HELM_generic_python_frontend

helm template -f Chart.yaml generic-python-frontend .
helm upgrade -i -f values.yaml generic-python-frontend  .   
helm repo add generic-python-frontend  https://raw.githubusercontent.com/miletocarmelo/DEVOPS_HELM_generic_python_frontend/github-pages




# testing : 


➜  carm DEVOPS_HELM_generic_python_frontend git:(prod U:4 ✗) helm template -f Chart.yaml generic-python-frontend .

➜  carm DEVOPS_HELM_generic_python_frontend git:(prod U:4 ✗) helm upgrade -i -f values.yaml generic-python-frontend  .   
Release "generic-python-frontend" has been upgraded. Happy Helming!
NAME: generic-python-frontend
LAST DEPLOYED: Fri Oct 18 13:41:26 2024
NAMESPACE: default
STATUS: deployed
REVISION: 2
TEST SUITE: None

➜  carm DEVOPS_HELM_generic_python_frontend git:(prod U:4 ✗) helm package .


➜  carm DEVOPS_HELM_generic_python_frontend git:(prod U:4 ✗) helm repo index . --url https://miletocarmelo.github.io/DEVOPS_HELM_generic_python_frontend/

➜  carm DEVOPS_HELM_generic_python_frontend git:(prod U:4 ✗) helm repo add generic-python-frontend  https://raw.githubusercontent.com/miletocarmelo/DEVOPS_HELM_generic_python_frontend/github-pages
