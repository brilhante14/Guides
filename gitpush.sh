mysqldump redmine > /tmp/redmine-`date +%d%m%Y`.sql -h localhost -u root -pgeosales

git add .

#echo 'Enter the commit message:'
#read commitMessage

commitMessage=$(date +%Y-%m-%d)

git commit -m "$commitMessage"

#echo 'Enter the name of the branch:'
#read branch

git push origin master



