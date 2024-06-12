 if ! [ -d graph-cache/ ]; 
 then
	wget -c "https://osmit-estratti.wmcloud.org/output/pbf/comuni/066049_L'Aquila.osm.pbf" -O laquila.pbf
	wget -c https://repo1.maven.org/maven2/com/graphhopper/graphhopper-web/7.0/graphhopper-web-7.0.jar
	wget -c https://raw.githubusercontent.com/napo/geospatialdataanalysis_gssi/main/data/config_laquila.yml
 fi
java -jar graphhopper*.jar server config_laquila.yml
