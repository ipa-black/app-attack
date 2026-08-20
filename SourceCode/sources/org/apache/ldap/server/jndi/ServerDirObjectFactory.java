package org.apache.ldap.server.jndi;

import javax.naming.spi.DirObjectFactory;
/* loaded from: classes3.dex */
public interface ServerDirObjectFactory extends DirObjectFactory {
    Class getAssociatedClass();

    String getObjectClassId();
}
