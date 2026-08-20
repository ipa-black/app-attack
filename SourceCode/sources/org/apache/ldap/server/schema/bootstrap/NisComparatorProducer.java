package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.CachingNormalizer;
import org.apache.ldap.common.schema.ComparableComparator;
import org.apache.ldap.common.schema.DeepTrimNormalizer;
import org.apache.ldap.common.schema.NormalizingComparator;
/* loaded from: classes3.dex */
public class NisComparatorProducer extends AbstractBootstrapProducer {
    public NisComparatorProducer() {
        super(ProducerTypeEnum.COMPARATOR_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.4203.1.2.1", new NormalizingComparator(new CachingNormalizer(new DeepTrimNormalizer()), new ComparableComparator()));
    }
}
