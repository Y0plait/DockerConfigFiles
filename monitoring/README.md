# Monitoring

- Change the IP of the Ntfy health-check with the IP of your machine.
- If using watchyourlan change the interface name.

> ⚠️ Watchyourlan works in host mode, which means that it will be accessible via all the port of the machine thus not allowing other docker containers to expose ports. Unless those docker containers are started before watchyourlan.

> ⚠️ To use ntfy outside of your home network with an iPhone you will have to expose it. I used Cloudflared for instance.