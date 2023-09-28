sftp_user="your_sftp_username"
sftp_host="destination_machine_hostname_or_ip"
sftp_port="22"  
sftp_password="your_sftp_password"
file_to_remove="/path/to/remote/directory/file_to_remove.txt"
sshpass -p "$sftp_password" sftp -oPort="$sftp_port" "$sftp_user@$sftp_host" <<-EOF
    rm "$file_to_remove"
    exit
EOF
if [ $? -eq 0 ]; then
    echo "File removal completed successfully."
else
    echo "File removal failed."
fi
