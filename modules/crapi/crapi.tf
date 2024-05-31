resource "helm_release" "crapi" {
  name = format("%s-nic-%s", local.project_prefix, local.build_suffix)
  repository = "https://helm.nginx.com/stable"
  chart = "nginx-ingress"
  version = "0.16.2"
  namespace = kubernetes_namespace.nginx-ingress.metadata[0].name
  values = [file("./charts/nginx-plus-ingress/values.yaml")]
}