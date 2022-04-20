
# vnstat KURULUM
```
sudo apt install vnstat
sudo systemctl enable vnstat
sudo systemctl start vnstat.service
systemctl status vnstat
```


#### KAYNAKLAR
- https://humdi.net/vnstat/man/vnstat.html
- https://linux.die.net/man/1/vnstat

## Örnek Kullanımlar
```
#5 Dakikalık istatistikler
vnstat -5

#Saatlik istatistikler
vnstat -h

#Günlük istatistikler
vnstat -d

#Aylık istatistikler
vnstat -m

#En çok trafik oluşan günler
vnstat -t

#Gerçek zamanlı ağ trafiği izleme
vnstat -l

#Ayar dosyası konumu
/etc/vnstat.conf
```


# vnstati ile PNG formatında çıktı üretme

### KAYNAKLAR
- https://linux.die.net/man/1/vnstati

### Örnek Kullanımlar
```
#Output traffic summary for interface eth0 to file /tmp/vnstat.png. 
vnstati -s -i eth0 -o /tmp/vnstat.png

#Output traffic summary with hourly data under the normal summary for a merge of interfaces eth0, eth1 and eth2 to file /tmp/vnstat.png. 
vnstati -vs -i eth0+eth1+eth2 -o /tmp/vnstat.png

#Output hourly traffic statistics for default interface to file /tmp/vnstat_h.png if the file has not been updated within the last 15 minutes. 
vnstati -h -c 15 -o /tmp/vnstat_h.png

#Output daily traffic statistics without displaying the header section and edges for default interface to standard output (stdout). 
vnstati -d -ne -nh -o -

#Output monthly traffic statistics for default interface specified in configuration file /home/me/vnstat.cfg to standard output (stdout).
vnstati -m --config /home/me/vnstat.cfg -i -o -

```
