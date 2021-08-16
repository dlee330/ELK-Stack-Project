## Build an IP Lookup Tool  
  
- You continue in your role as security analyst at Wonka Corp.

- Wonka has been experiencing more attacks on their network.

- Your manager wants to know what country these attacks are coming from so Wonka Corp can block the country from accessing their network.

- Specifically, they would like you to design a script that can look up the countries of several IP addresses pulled from the logs.

### Instructions

Use the coomand line curl to look up information on the IP of `133.18.55.255` and use the pipes to display only the country.

[IP_lookup.sh](./IP_lookup.sh)

```
curl -s http://ipinfo.io/$1 | grep country | awk -F: '{print $2}'
```

Run command:

```
 $ sh IP_lookup.sh 133.18.55.255
```

Result:

```
 "JP"
```


Other IP address to try:

      
- IP 2: `41.34.55.255`
- IP 3: `187.54.23.8`


