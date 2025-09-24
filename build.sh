# cp -r data LobsterCruiser/
rm -rf LobsterCruiser/

rsync mod_info.json LobsterCruiser/

rsync -av \
  --exclude=".*" \
  data/ LobsterCruiser/data/

rsync -av \
  --exclude=".*" \
  graphics/ships/ LobsterCruiser/graphics/ships/

rsync -av \
  --exclude=".*" \
  graphics/weapons/ LobsterCruiser/graphics/weapons/

zip -r LobsterCruiser.zip LobsterCruiser

rm -rf LobsterCruiser/
