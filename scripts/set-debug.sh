if [ $1 == 't' ]; then
    sed -i 's/DEBUG = False/DEBUG = True/' Django/glycam-django/glycamweb/glycamweb/settings.py 
else
    sed -i 's/DEBUG = True/DEBUG = False/' Django/glycam-django/glycamweb/glycamweb/settings.py
fi
