package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import javax.naming.NamingException;
import org.apache.ldap.server.jndi.ServerDirStateFactory;
import org.apache.ldap.server.schema.StateFactoryRegistry;
/* loaded from: classes3.dex */
public class BootstrapStateFactoryRegistry implements StateFactoryRegistry {
    private final HashMap byClass = new HashMap();

    @Override // org.apache.ldap.server.schema.StateFactoryRegistry
    public ServerDirStateFactory getStateFactories(Object obj) throws NamingException {
        Class<?> cls = obj.getClass();
        if (this.byClass.containsKey(cls)) {
            return (ServerDirStateFactory) this.byClass.get(cls);
        }
        do {
            cls = cls.getSuperclass();
            if (cls == null) {
                Class<?>[] interfaces = cls.getInterfaces();
                for (int i = 0; i < interfaces.length; i++) {
                    if (this.byClass.containsKey(interfaces[i])) {
                        return (ServerDirStateFactory) this.byClass.get(interfaces[i]);
                    }
                }
                return null;
            }
        } while (!this.byClass.containsKey(cls));
        return (ServerDirStateFactory) this.byClass.get(cls);
    }

    @Override // org.apache.ldap.server.schema.StateFactoryRegistry
    public void register(ServerDirStateFactory serverDirStateFactory) {
        this.byClass.put(serverDirStateFactory.getAssociatedClass(), serverDirStateFactory);
    }
}
