{{/*
TODO check if empty .value.Module
*/}}

{{- define "label-generator" -}}
{{- if .Values.module -}}
app.kubernetes.io/component: frontend-python-{{.Values.module}}-{{ .Values.environment }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: {{.Values.module}}-{{ .Values.environment }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "-" }}
app.kubernetes.io/version: {{ .Chart.Version | quote }}
{{- else -}}
{{- fail "La valeur .Values.module est requise" -}}
{{- end -}}
{{- end -}}
