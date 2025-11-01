function up --description alias\ up=\ntoilet\ --font\ pagga\ --termwidth\ \'ROOT\ UPDATE\ NVIMPLUGIN\'\nsu\ root\ -c\ up\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ NVIMPLUGIN\'\nkickstartnvimup\;nvimpluginsupdate\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ SNAP\'\nsudo\ snap\ refresh\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ FLATPAK\'\nflatpak\ update\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ YAY\'\nyay\ -Syu\ --devel\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ SBCTL\ STATUS\'\nsudo\ sbctl\ list-files\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ HINWEIS\ AUF\ MANUELLE\ PAKETE\'\nmanuell\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ OMZ\'\nfullomzupdate
    
toilet --font pagga --termwidth 'ROOT UPDATE NVIMPLUGIN'
su root -c up;
toilet --font pagga --termwidth 'USER UPDATE NVIMPLUGIN'
kickstartnvimup;nvimpluginsupdate;
toilet --font pagga --termwidth 'USER UPDATE SNAP'
sudo snap refresh;
toilet --font pagga --termwidth 'USER UPDATE FLATPAK'
flatpak update;
toilet --font pagga --termwidth 'USER UPDATE YAY'
yay -Syu --devel;
toilet --font pagga --termwidth 'USER SBCTL STATUS'
sudo sbctl list-files;
toilet --font pagga --termwidth 'USER HINWEIS AUF MANUELLE PAKETE'
echo "manuell";
toilet --font pagga --termwidth 'USER UPDATE OMZ'
fullomzupdate
end
