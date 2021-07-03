#!/bin/bash
#JetBrains♥

# Remove data from `.java/.userPerfs/jetbrains

for product in IntelliJIdea WebStorm DataGrip PhpStorm CLion PyCharm GoLand RubyMine Rider; do
  echo "Resetting trial period for $product"

  echo "removing evaluation key..."
  rm -rf /home/$USER/.config/JetBrains/$product*/eval

#  echo "removing all evlsprt properties in options.xml..."
#  sed -i "/evlsprt/d" /home/$USER/.config/JetBrains/$product*/options/other.xml

  echo
done

echo "That's it, enjoy ;)"
echo "Don't forget to buy licence when you can afford it"
