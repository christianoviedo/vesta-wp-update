#!/bin/bash

BASE_DIR='/home/'
EXCLUDE_USERS=('juventud')

function main_prog() {    
        while read output;
        do            
                IFS="/" read -ra PARTS <<< $output

                # vemos que no esté en las cuentas excluidas
                if [[ ! " ${EXCLUDE_USERS[*]} " =~ " ${PARTS[2]} " ]]; then
                        cd ${output::-23}
                        sudo -H -u ${PARTS[2]} bash -c 'wp core update; wp plugin update --all'
                fi                                                         
        done                             
}                                                                                              

find $BASE_DIR -name 'version.php' -path '*wp-includes/*' -print | main_prog
 
