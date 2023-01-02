{{- define "successPage" -}}

{{- template "header" . -}}

<p>
    Welcome from Google Cloud Datacenters at :
</p>

{{ with .region_geo}}
    <h1>{{.}}</h1>
{{ end }}

{{ with .flag_url }}
    <img class="flag" src="{{.}}"/>
{{ end}}

<p>
    You are now connected to : <code>{{.region_code}}</code>
</p>

<hr/>

<h3>Additional information:</h3>

{{ with .cluster_name}}
<p>
    Cluster name: <code>{{.}}</code>
</p>
{{ end }}

{{ with .cluster_uid}}
<p>
    Cluster UID: <code>{{.}}</code>
</p>
{{ end }}

{{ with .instance_id}}
<p>
    Instance Id: <code>{{.}}</code>
</p>
{{ end }}

{{ with .instance_hostname}}
<p>
    Instance Hostname: <code>{{.}}</code>
</p>
{{ end }}

{{ with .external_ip}}
<p>
    Instance External IP: <code>{{.}}</code>
</p>
{{ end }}

<hr/>
<p class="light">
    Based on where you visit from, Google Cloud Load Balancer routes your request
    to the closest compute region the application is deployed in.
</p>

{{- template "footer" . -}}

{{- end -}}
