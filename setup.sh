project_name=$1

mv exampleprojectname $project_name

# Install Django just to run the python script
virtualenv venv -p python3
source venv/bin/activate
pip install django==2.0

yarn

# Get rid of the base repo's git directory, and reset it
rm -rf .git
git init

python setup.py $project_name
rm -f setup.py
deactivate
rm -rf venv

echo 'All set up! Going to self-destruct now. Run `cd .. && cd $project_name` to update your command-line prompt.'
rm -f setup.sh
