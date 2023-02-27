# Vesta Wp cli command line tools

Automatically updates Wordpress installations in VestaCP servers.

# Wordpress autoupdate install

1. Install wp cli in server
2. Copy update_wp to /etc/cron.weekly or another cron folder
3. Edit update_wp file and set EXCLUDE_USERS if needed. Users must be separated by spaces, like 'user1 user2 user3'
4. Set permissions of update_wp to 755

# Wordpress All in one WP Migration auto clean of backups

1. Copy delete-wpress to /etc/cron.weekly or another cron folder
2. Set permissions of delete-wpress to 755
