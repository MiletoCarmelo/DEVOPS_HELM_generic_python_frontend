helm template -f Chart.yaml generic-python-frontend .
helm upgrade -i -f values.yaml generic-python-frontend  .   
helm repo add generic-python-frontend  https://raw.githubusercontent.com/miletocarmelo/DEVOPS_HELM_generic_python_frontend/github-pages
# DEVOPS_HELM_generic_python_frontend
