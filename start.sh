if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/notankith/judith.git /Judith
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Judit
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting Judith...."
python3 bot.py
