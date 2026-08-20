package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class ApachednsStateFactoryProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public ApachednsStateFactoryProducer() {
        super(ProducerTypeEnum.STATE_FACTORY_PRODUCER);
    }
}
