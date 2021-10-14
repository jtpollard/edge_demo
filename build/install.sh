dnf install -y podman git
mkdir app-src
cd app-src
git clone https://github.com/jtpollard/edge_demo.git
cd ..
podman login registry.redhat.io
podman build -t httpd-app .
podman run -d --name httpd -p 8080:8080 httpd-app
