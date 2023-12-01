if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AGSMOD/Wednesdayv3.git /Alto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Wednesdayv3
fi
cd /Alto
pip3 install -U -r requirements.txt
echo "Starting Wednesdayv3...."
python3 bot.py
