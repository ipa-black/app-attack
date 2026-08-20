package org.apache.ldap.server.jndi;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.Hashtable;
import java.util.Properties;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.ldap.Control;
import javax.naming.ldap.InitialLdapContext;
import org.apache.kerberos.protocol.KerberosProtocolProvider;
import org.apache.kerberos.service.KdcConfiguration;
import org.apache.kerberos.store.JndiPrincipalStoreImpl;
import org.apache.ldap.common.exception.LdapConfigurationException;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.PropertiesUtils;
import org.apache.ldap.server.protocol.LdapProtocolProvider;
import org.apache.mina.common.TransportType;
import org.apache.mina.registry.Service;
import org.apache.mina.registry.ServiceRegistry;
import org.apache.mina.registry.SimpleServiceRegistry;
/* loaded from: classes3.dex */
public class ServerContextFactory extends CoreContextFactory {
    private static final ServiceRegistry DEFAULT_MINA_REGISTRY;
    private static final int LDAP_PORT = 389;
    private static Service kerberosService;
    private static Service ldapService;
    private static ServiceRegistry minaRegistry;

    static {
        SimpleServiceRegistry simpleServiceRegistry;
        try {
            simpleServiceRegistry = new SimpleServiceRegistry();
        } catch (IOException e2) {
            e2.printStackTrace();
            simpleServiceRegistry = null;
        }
        DEFAULT_MINA_REGISTRY = simpleServiceRegistry;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.ldap.server.jndi.JndiProvider, java.util.Hashtable] */
    @Override // org.apache.ldap.server.jndi.CoreContextFactory
    public Context getInitialContext(Hashtable hashtable) throws NamingException {
        if (hashtable.containsKey(EnvKeys.SHUTDOWN)) {
            if (this.provider == null) {
                return new DeadContext();
            }
            try {
                try {
                    this.provider.shutdown();
                    ServiceRegistry serviceRegistry = minaRegistry;
                    if (serviceRegistry != null) {
                        Service service = ldapService;
                        if (service != null) {
                            serviceRegistry.unbind(service);
                            ldapService = null;
                        }
                        Service service2 = kerberosService;
                        if (service2 != null) {
                            minaRegistry.unbind(service2);
                            kerberosService = null;
                        }
                    }
                    return new DeadContext();
                } finally {
                    new DeadContext();
                    this.provider = null;
                    this.initialEnv = null;
                }
            } catch (NamingException e2) {
                throw e2;
            } catch (Throwable th) {
                NamingException namingException = new NamingException("Failed to shutdown.");
                namingException.setRootCause(th);
                throw namingException;
            }
        }
        Context initialContext = super.getInitialContext(hashtable);
        if (this.initialEnv != null && !this.initialEnv.containsKey(EnvKeys.DISABLE_PROTOCOL)) {
            setupRegistry();
            startLdapProtocol();
            if (this.initialEnv.containsKey(EnvKeys.ENABLE_KERBEROS)) {
                startKerberosProtocol();
            }
        }
        return initialContext;
    }

    private void setupRegistry() throws NamingException {
        ServiceRegistry serviceRegistry;
        if (this.initialEnv.containsKey(EnvKeys.PASSTHRU)) {
            serviceRegistry = (ServiceRegistry) this.initialEnv.get(EnvKeys.PASSTHRU);
            if (serviceRegistry != null) {
                this.initialEnv.put(EnvKeys.PASSTHRU, "Handoff Succeeded!");
            }
        } else {
            serviceRegistry = null;
        }
        ServiceRegistry serviceRegistry2 = DEFAULT_MINA_REGISTRY;
        if (serviceRegistry2 == null) {
            throw new NamingException("Default MINA service registry is not available.");
        }
        if (serviceRegistry == null) {
            serviceRegistry = serviceRegistry2;
        }
        minaRegistry = serviceRegistry;
    }

    private void startKerberosProtocol() throws NamingException {
        Properties properties = new Properties();
        for (String str : this.initialEnv.keySet()) {
            if (this.initialEnv.get(str) instanceof String) {
                properties.setProperty(str, (String) this.initialEnv.get(str));
            }
        }
        KdcConfiguration kdcConfiguration = new KdcConfiguration(properties);
        Service service = new Service("kerberos", TransportType.DATAGRAM, new InetSocketAddress(PropertiesUtils.get(this.initialEnv, KdcConfiguration.KERBEROS_PORT_KEY, 88)));
        InitialLdapContext initialLdapContext = new InitialLdapContext(this.initialEnv, new Control[0]);
        Object obj = this.initialEnv.get(JndiPrincipalStoreImpl.KDC_STORE_SEARCHBASE);
        if (obj == null) {
            throw new LdapConfigurationException("Trying to start kerberos service without setting kdc.store.searchbase");
        }
        try {
            minaRegistry.bind(service, new KerberosProtocolProvider(kdcConfiguration, new JndiPrincipalStoreImpl(initialLdapContext, new LdapName((String) obj))));
            kerberosService = service;
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.ldap.common.exception.LdapConfigurationException, java.lang.Throwable] */
    private void startLdapProtocol() throws NamingException {
        Service service = new Service(LdapProtocolProvider.SERVICE_NAME, TransportType.SOCKET, new InetSocketAddress(PropertiesUtils.get(this.initialEnv, EnvKeys.LDAP_PORT, (int) LDAP_PORT)));
        try {
            minaRegistry.bind(service, new LdapProtocolProvider((Hashtable) this.initialEnv.clone()));
            ldapService = service;
        } catch (IOException e2) {
            ?? ldapConfigurationException = new LdapConfigurationException(new StringBuffer("Failed to bind the LDAP protocol service to the service registry: ").append(service).toString());
            ldapConfigurationException.setRootCause(e2);
            throw ldapConfigurationException;
        }
    }
}
