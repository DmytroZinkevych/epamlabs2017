mkdir ~/confluence

cp /vagrant/atlassian-confluence-6.5.2.tar.gz ~/confluence/atlassian-confluence-6.5.2.tar.gz
curl https://raw.githubusercontent.com/DmytroZinkevych/epamlabs2017/master/Dockerfile >> ~/confluence/Dockerfile
cd ~/confluence
sudo docker build -t confluence .
sudo docker run -ti -d -p 8090:8090 -p 8091:8091 --name=confluence  confluence:latest
ssh -i /vagrant/aws-ubuntu.pem -R 8090:localhost:8090 ec2-18-217-184-72.us-east-2.compute.amazonaws.com

