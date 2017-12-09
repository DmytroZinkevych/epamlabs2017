# epamlabs2017
Треба покласти в папку з майбутньою віртуальною машиною Vagrantfile, aws-ubuntu.pem (файл для доступу на віддалену amazon-машину), та atlassian-confluence-6.5.2.tar.gz (архів із сервером). Далі виконати в терміналі з даної папки "vagrant up" і confluence-сервер повинен піднятися повністю самостійно.
Далі треба увійти на щойно створену віртуальну машину і прокинути порти на віддалену amazon-машину:<br>
`ssh -i /vagrant/aws-ubuntu.pem -R 8090:localhost:8090 ec2-18-217-184-72.us-east-2.compute.amazonaws.com`
