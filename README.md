### meld
#### readable colors with dark gtk theme
- backup original color style
  ```
  sudo cp /usr/share/meld/styles/meld-base.xml /usr/share/meld/styles/meld-base.xml.backup
  ```
- replace base theme with dark theme
  ```
  sudo cp /usr/share/meld/sytels/meld-dark.xml /usr/share/meld/styles/meld-base.xml
  ```
- replace style-scheme id "meld-dark" with "meld-base"
  ```
  sudo vim /usr/share/meld/styles/meld-base.xml
  ```
