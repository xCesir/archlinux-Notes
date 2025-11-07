function upnq --description alias\ upnq=\ntoilet\ --font\ pagga\ --termwidth\ \'ROOT\ UPDATE\ NVIMPLUGIN\'\nsu\ root\ -c\ up\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ NVIMPLUGIN\'\nkickstartnvimup\;nvimpluginsupdate\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ SNAP\'\nsudo\ snap\ refresh\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ FLATPAK\'\nflatpak\ update\ -y\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ YAY\'\nyay\ -Syu\ --devel\ --noconfirm\ --answerclean\ All\ --answerdiff\ None\ --answerupgrade\ Repo\ --answeredit\ None\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ SBCTL\ STATUS\'\nsudo\ sbctl\ list-files\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ HINWEIS\ AUF\ MANUELLE\ PAKETE\'\nmanuell\;\ntoilet\ --font\ pagga\ --termwidth\ \'USER\ UPDATE\ OMZ\'\nfullomzupdate
    
toilet --font pagga --termwidth 'ROOT UPDATE NVIMPLUGIN'
su root -c up;
toilet --font pagga --termwidth 'USER UPDATE NVIMPLUGIN'
kickstartnvimup;nvimpluginsupdate;
toilet --font pagga --termwidth 'USER UPDATE SNAP'
sudo snap refresh;
toilet --font pagga --termwidth 'USER UPDATE FLATPAK'
flatpak update -y;
toilet --font pagga --termwidth 'USER UPDATE YAY'
yay -Syu --devel --noconfirm --answerclean All --answerdiff None --answerupgrade Repo --answeredit None;
toilet --font pagga --termwidth 'USER SBCTL STATUS'
sudo sbctl list-files;
toilet --font pagga --termwidth 'USER HINWEIS AUF MANUELLE PAKETE'
cat ~/.manualPackages.md;
toilet --font pagga --termwidth 'USER UPDATE OMF'
omf update;
end
