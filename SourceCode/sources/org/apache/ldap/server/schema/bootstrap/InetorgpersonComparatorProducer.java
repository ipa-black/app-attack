package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.CachingNormalizer;
import org.apache.ldap.common.schema.ComparableComparator;
import org.apache.ldap.common.schema.DeepTrimNormalizer;
import org.apache.ldap.common.schema.DeepTrimToLowerNormalizer;
import org.apache.ldap.common.schema.NormalizingComparator;
/* loaded from: classes3.dex */
public class InetorgpersonComparatorProducer extends AbstractBootstrapProducer {
    public InetorgpersonComparatorProducer() {
        super(ProducerTypeEnum.COMPARATOR_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "2.5.13.5", new NormalizingComparator(new CachingNormalizer(new DeepTrimNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.7", new NormalizingComparator(new CachingNormalizer(new DeepTrimNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.12", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.1466.109.114.3", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
    }
}
