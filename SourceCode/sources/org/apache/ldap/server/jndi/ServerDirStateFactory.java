package org.apache.ldap.server.jndi;

import javax.naming.spi.DirStateFactory;
/* loaded from: classes3.dex */
public interface ServerDirStateFactory extends DirStateFactory {
    Class getAssociatedClass();

    String getObjectClassId();
}
