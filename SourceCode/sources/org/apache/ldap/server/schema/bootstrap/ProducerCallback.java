package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface ProducerCallback {
    void schemaObjectProduced(BootstrapProducer bootstrapProducer, String str, Object obj) throws NamingException;
}
