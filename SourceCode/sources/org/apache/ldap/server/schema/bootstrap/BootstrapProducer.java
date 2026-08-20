package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface BootstrapProducer {
    ProducerTypeEnum getType();

    void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException;
}
