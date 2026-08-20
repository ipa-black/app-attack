package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import jdbm.helper.StringComparator;
import org.apache.ldap.common.schema.ComparableComparator;
import org.apache.ldap.common.util.BigIntegerComparator;
/* loaded from: classes3.dex */
public class ApacheComparatorProducer extends AbstractBootstrapProducer {
    public ApacheComparatorProducer() {
        super(ProducerTypeEnum.COMPARATOR_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.2.1", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.2.2", new BigIntegerComparator());
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.2.3", new StringComparator());
    }
}
