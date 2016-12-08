#map of Enderby Route
#
range="-95/80/-79/25"
proj="N18c"
psfile='enderby-overview.ps'
pngfile='enderby-overview.png'
GMT grdimage etopo5.grd -R${range} -J${proj} -Cibcao.cpt -B20/20 -P -K > $psfile
#GMT psbasemap -R${range} -J${proj}  -Gwhite -O -K >> $psfile
GMT pscoast -R${range} -J${proj} -Dl -A0/0/1 -Glightgray -W0.4p -O -K >> $psfile
#plot currents from talley
#GMT psxy 'data3.txt' -J${proj} -R${range} -Sc0.05 -Gred -O -K >>  $psfile
#GMT psxy 'atldata1.txt' -J${proj} -R${range} -Sc0.05 -Gyellow -O -K >>  $psfile
#GMT psxy 'atldata2.txt' -J${proj} -R${range} -Sc0.05 -Ggreen -O -K >>  $psfile
#plot E2 location
echo "-30.3195 -56.0883" | GMT psxy -R${range} -J${proj} -Ba0f0g0 -Si0.2 -A5000 -Gwhite -Wblack -O -K >> $psfile
#plot E2 control location
echo "-38.428 -55.444" | GMT psxy -R${range} -J${proj} -Ba0f0g0 -Sc0.2 -A5000 -Gwhite -Wblack -O -K >> $psfile
#plot Beebe vent
echo "-81.87 18.467" | GMT psxy -R${range} -J${proj} -Ba0f0g0 -Si0.2 -A5000 -Gwhite -Wblack -O -K >> $psfile
#plot seamounts
GMT psxy 'seamounts2.dat' -J${proj} -R${range} -St0.25 -Gblack -O -K>>  $psfile
#37°47′S, 49°39′E
#plot approximate Dragon Vents location (to minimize overplotting with seamounts)
echo "49.60 -37.75" | GMT psxy -R${range} -J${proj} -Ba0f0g0 -Si0.2 -A5000 -Gwhite -Wblack -O >> $psfile
GMT ps2raster -A -Tf $psfile
GMT ps2raster -A -Qg1 -TG $psfile
#imagemagick overlay
#composite -gravity center $overlay $pngfile IOcurrents_globe.png
#composite -gravity center $overlay2 IOcurrents_globe.png IOcurrents_globe_shaded.png

