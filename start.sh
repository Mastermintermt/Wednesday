if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mastermintermt/Wednesday.git /Alto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Wednesdayv3
fi
cd /Alto
pip3 install -U -r requirements.txt
echo "Starting Wednesday...."
python3 bot.py
