# link sites directory
if !Dir.exist?(shared_path + "/sites") then
  run "cp -R #{release_path}/sites #{shared_path}/sites"
end
run "rm -Rf #{release_path}/sites && ln -s #{shared_path}/sites ./sites"

# set timezon in php.ini
#sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/cgi-php5.4/ext-active/timezone.ini"
#sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/cli-php5.4/ext-active/timezone.ini"
#sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/fpm-php5.4/ext-active/timezone.ini"


