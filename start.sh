if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AGSMOD/Alto.git /Alto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Alto
fi
cd /Alto
pip3 install -U -r requirements.txt
echo "Starting Alto...."
python3 bot.py
