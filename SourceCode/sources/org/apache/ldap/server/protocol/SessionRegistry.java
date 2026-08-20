package org.apache.ldap.server.protocol;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import javax.naming.NamingException;
import javax.naming.ldap.Control;
import javax.naming.ldap.InitialLdapContext;
import javax.naming.ldap.LdapContext;
import javax.naming.spi.InitialContextFactory;
import org.apache.ldap.common.exception.LdapNoPermissionException;
import org.apache.ldap.server.jndi.EnvKeys;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes3.dex */
public class SessionRegistry {
    private static SessionRegistry s_singleton;
    private final Map contexts = new HashMap();
    private Hashtable env;

    public static SessionRegistry getSingleton() {
        return s_singleton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void releaseSingleton() {
        s_singleton = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionRegistry(Hashtable hashtable) {
        if (s_singleton == null) {
            s_singleton = this;
            if (hashtable == null) {
                Hashtable hashtable2 = new Hashtable();
                this.env = hashtable2;
                hashtable2.put("java.naming.provider.url", "");
                this.env.put("java.naming.factory.initial", "org.apache.ldap.server.jndi.ServerContextFactory");
                return;
            }
            this.env = hashtable;
            hashtable.put("java.naming.provider.url", "");
            return;
        }
        throw new IllegalStateException("there can only be one singlton");
    }

    public Hashtable getEnvironment() {
        return (Hashtable) this.env.clone();
    }

    public LdapContext getLdapContext(ProtocolSession protocolSession, Control[] controlArr, boolean z) throws NamingException {
        LdapContext ldapContext;
        synchronized (this.contexts) {
            ldapContext = (LdapContext) this.contexts.get(protocolSession);
        }
        if (ldapContext == null && z) {
            if (this.env.containsKey(EnvKeys.DISABLE_ANONYMOUS)) {
                throw new LdapNoPermissionException("Anonymous binds have been disabled!");
            }
            Hashtable hashtable = (Hashtable) this.env.clone();
            if (this.env.containsKey("server.use.factory.instance")) {
                InitialContextFactory initialContextFactory = (InitialContextFactory) this.env.get("server.use.factory.instance");
                if (initialContextFactory == null) {
                    throw new NullPointerException("server.use.factory.instance was set in env but was null");
                }
                return initialContextFactory.getInitialContext(this.env);
            }
            return new InitialLdapContext(hashtable, controlArr);
        }
        return ldapContext;
    }

    public void setLdapContext(ProtocolSession protocolSession, LdapContext ldapContext) {
        synchronized (this.contexts) {
            this.contexts.put(protocolSession, ldapContext);
        }
    }

    public void remove(ProtocolSession protocolSession) {
        synchronized (this.contexts) {
            this.contexts.remove(protocolSession);
        }
    }

    public void terminateSession(ProtocolSession protocolSession) {
        protocolSession.close();
    }
}
