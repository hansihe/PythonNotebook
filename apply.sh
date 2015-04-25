# Installs all the packages I need

echo "deb http://ppa.launchpad.net/staticfloat/juliareleases/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/staticfloat/juliareleases/ubuntu trusty main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3D3D3ACC

apt-get update

apt-get install -y julia

julia -e "Pkg.add(\"IJulia\")"

for PYTHONVER in 2 3 ; do
  PYTHON="python$PYTHONVER"
  PIP="pip$PYTHONVER"

  PYDIST=`${PYTHON} -c "import site; import sys; sys.stdout.write(site.getsitepackages()[0]);"`

  $PIP install fillplots
  $PIP install uncertainties
  curl "https://bitbucket.org/birkenfeld/ipython-physics/raw/2341da0f20f794cf366695a2a6efb9ec0909055b/physics.py" > "${PYDIST}/physics.py"
done

apt-get autoremove -y
apt-get clean -y

cd /
