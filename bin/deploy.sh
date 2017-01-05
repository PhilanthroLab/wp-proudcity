RELEASE=${1}

cd wordpress
bash /app/updates/release-${RELEASE}.sh
wp core update-db --allow-root
wp w3-total-cache flush --allow-root
#wp w3-total-cache cdn_purge --allow-root
wp rewrite flush --allow-root
wp cache flush --allow-root
