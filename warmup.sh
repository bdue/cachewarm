#Collect Urls
php ../../n98-magerun.phar sys:url:list --add-all 2 > n98-all.txt
#Visit url
for url in $(cat n98-all.txt);do curl -a Cache Warmer -o /dev/null -s -w %{time_total}\\n $url;done

