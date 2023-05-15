{{- define "imagePullSecret" }}
{{- with .Values.registry }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"auth\":\"%s\"}}}" .imageRegistryHost .user .password (printf "%s:%s" .username .password | b64enc) | b64enc }}
{{- end }}
{{- end }}