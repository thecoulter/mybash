#!bin/bash
NODE_EXPORTER_VERSION=1.3.1

# create node_exporter user
sudo useradd -m node_exporter
sudo groupadd node_exporter
sudo usermod -a -G node_exporter node_exporter
# copy the file from root dir to /usr/local/bin
mv /root/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64/node_exporter /usr/local/bin/
chown node_exporter:node_exporter /usr/local/bin/node_exporter
# Create systemd service for node exporter.
sudo bash -c 'cat <<EOF > /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
After=network.target

[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target
EOF'
systemctl daemon-reload
systemctl start node_exporter
