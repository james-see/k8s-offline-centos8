echo "Installing Docker CE..."
sudo yum-config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
sudo yum makecache fast
mkdir -p docker
cd docker
echo "Getting all of the dependancies localized..."
sudo yumdownloader --resolve docker-ce
echo "Compressing the folder of docker stuff to a tarball..."
tar cvzf ../docker.tar.gz *