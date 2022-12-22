if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nethu-jpg/movpikka.git /movpikka
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /movpikka
fi
cd /movpikka
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
