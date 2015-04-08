# link sites directory
if !Dir.exist?(config.shared_path + "/sites") then
  run "cp -R #{config.release_path}/sites #{config.shared_path}/sites"
end
run "rm -Rf #{config.release_path}/sites && ln -s #{config.shared_path}/sites ./sites"

# set timezon in php.ini
#sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/cgi-php5.4/ext-active/timezone.ini"
#sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/cli-php5.4/ext-active/timezone.ini"
#sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/fpm-php5.4/ext-active/timezone.ini"


