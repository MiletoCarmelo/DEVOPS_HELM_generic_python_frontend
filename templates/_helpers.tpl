{{/*
TODO check if empty .value.Module
*/}}

{{- define "label-generator" -}}
{{- if .Values.module -}}
app.kubernetes.io/component: frontend-python-{{.Values.module}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: {{.Release.Name}}-{{.Values.module}}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "-" }}
{{- else -}}
{{- fail "La valeur .Values.module est requise" -}}
{{- end -}}
{{- end -}}
