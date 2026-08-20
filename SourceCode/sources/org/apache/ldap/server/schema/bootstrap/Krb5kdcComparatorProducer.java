package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class Krb5kdcComparatorProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public Krb5kdcComparatorProducer() {
        super(ProducerTypeEnum.COMPARATOR_PRODUCER);
    }
}
