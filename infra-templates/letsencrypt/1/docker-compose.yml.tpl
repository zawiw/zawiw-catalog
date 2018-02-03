version: '2'
volumes:
  lets-encrypt: {}
services:
  letsencrypt-assist:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: assist-ulm
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: assist-ulm.de,www.assist-ulm.de
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-cume:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: cume
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: cume.eu,de.cume.eu
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-danubestories:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: danube-stories
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: women.danube-stories.eu
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-diegewolltedonau:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: diegewolltedonau
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: diegewolltedonau.de,www.diegewolltedonau.de
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-forschendeslernen:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: forschendes-lernen
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: forschendes-lernen.de,altern.forschendes-lernen.de,altjung.forschendes-lernen.de,biosensorik.forschendes-lernen.de,botanik.forschendes-lernen.de,europakontakte.forschendes-lernen.de,frauengeschichte.forschendes-lernen.de,geschichte.forschendes-lernen.de,hhm.forschendes-lernen.de,media.forschendes-lernen.de,microcontroller.forschendes-lernen.de,solar.forschendes-lernen.de,urach.forschendes-lernen.de,vfg.forschendes-lernen.de,wirtschaft.forschendes-lernen.de,zeitzeugenarbeit.forschendes-lernen.de,sg.forschendes-lernen.de,blog.forschendes-lernen.de,www.forschendes-lernen.de,danube-networkers.forschendes-lernen.de
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-gemeinsamlernen:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: gemeinsamlernen
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: gemeinsamlernen.de,vile.gemeinsamlernen.de,danet.gemeinsamlernen.de,mobila.gemeinsamlernen.de,urach.gemeinsamlernen.de
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-ileu:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: ileu
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: ileu.net,www.ileu.net
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-onlineringvorlesung:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: online-ringvorlesung
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: online-ringvorlesung.de,old.online-ringvorlesung.de,www.online-ringvorlesung.de
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

  letsencrypt-zawiw:
    image: janeczku/rancher-letsencrypt:v0.5.0
    environment:
      API_VERSION: Production
      AWS_ACCESS_KEY: ''
      AWS_SECRET_KEY: ''
      AZURE_CLIENT_ID: ''
      AZURE_CLIENT_SECRET: ''
      AZURE_RESOURCE_GROUP: ''
      AZURE_SUBSCRIPTION_ID: ''
      AZURE_TENANT_ID: ''
      CERT_NAME: zawiw
      CLOUDFLARE_EMAIL: ${CLOUDFLARE_EMAIL}
      CLOUDFLARE_KEY: ${CLOUDFLARE_KEY}
      DNSIMPLE_EMAIL: ''
      DNSIMPLE_KEY: ''
      DOMAINS: zawiw.de,git.zawiw.de,registry.zawiw.de,config.zawiw.de,ldap.zawiw.de,wiki.zawiw.de,mail.zawiw.de,www.zawiw.de,stats.zawiw.de,rancher.zawiw.de,foreman.zawiw.de, ticket.zawiw.de,postfix.zawiw.de,imap.zawiw.de,maustraining.zawiw.de,archiv.zawiw.de,pad.zawiw.de,ip.zawiw.de
      DO_ACCESS_TOKEN: ''
      DYN_CUSTOMER_NAME: ''
      DYN_PASSWORD: ''
      DYN_USER_NAME: ''
      EMAIL: ${CLOUDFLARE_EMAIL}
      EULA: 'Yes'
      GANDI_API_KEY: ''
      OVH_APPLICATION_KEY: ''
      OVH_APPLICATION_SECRET: ''
      OVH_CONSUMER_KEY: ''
      PROVIDER: CloudFlare
      PUBLIC_KEY_TYPE: RSA-4096
      RENEWAL_TIME: '23'
      VULTR_API_KEY: ''
    volumes:
      - /var/lib/rancher:/var/lib/rancher
      {{- if .Values.VOLUME_NAME}}
      - {{.Values.VOLUME_NAME}}:/etc/letsencrypt/production/certs/
      {{- end }}
    labels:
      io.rancher.container.agent.role: environment
      io.rancher.container.create_agent: 'true'

