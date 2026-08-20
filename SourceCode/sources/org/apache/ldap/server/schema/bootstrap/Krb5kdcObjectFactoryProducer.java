package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class Krb5kdcObjectFactoryProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public Krb5kdcObjectFactoryProducer() {
        super(ProducerTypeEnum.OBJECT_FACTORY_PRODUCER);
    }
}
