#!/bin/bash
#JetBrains♥

for product in IntelliJIdea WebStorm DataGrip PhpStorm CLion PyCharm GoLand RubyMine Rider; do
  echo "Resetting trial period for $product"

  echo "Closing $product"
  pkill -f /usr/share/$product*

  echo "removing evaluation key..."
  rm -rf /home/$USER/.config/JetBrains/$product*/eval

  echo
done

echo "Removing regdata..."
folders=$( ls -d /home/$USER/.java/.userPrefs/jetbrains/*/ )
base_path=$( ls -d /home/$USER/.java/.userPrefs/jetbrains/ )
len=${#base_path}

for i in ${folders[@]}; do
  folder_name=${i:$len}
  if [[ "$folder_name" != \_* ]]; then

    if [ $folder_name != "jetprofile/" ]; then

      if [ $folder_name != "syncsettings/" ]; then
        echo "removing regdata from $folder_name..."
        rm -rf $i*/
        # for debug:
        # rm -r -v -i $i*/ 
      fi

    fi

  fi
done


echo "That's it, enjoy ;)"
echo "Don't forget to buy licence when you can afford it"
