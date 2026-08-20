package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class ApachednsObjectFactoryProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public ApachednsObjectFactoryProducer() {
        super(ProducerTypeEnum.OBJECT_FACTORY_PRODUCER);
    }
}
