package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.CachingNormalizer;
import org.apache.ldap.common.schema.ComparableComparator;
import org.apache.ldap.common.schema.DeepTrimNormalizer;
import org.apache.ldap.common.schema.DeepTrimToLowerNormalizer;
import org.apache.ldap.common.schema.DnComparator;
import org.apache.ldap.common.schema.NormalizingComparator;
import org.apache.ldap.server.schema.ConcreteNameComponentNormalizer;
/* loaded from: classes3.dex */
public class SystemComparatorProducer extends AbstractBootstrapProducer {
    public SystemComparatorProducer() {
        super(ProducerTypeEnum.COMPARATOR_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "2.5.13.0", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.1", new DnComparator(new ConcreteNameComponentNormalizer(bootstrapRegistries.getAttributeTypeRegistry())));
        producerCallback.schemaObjectProduced(this, "2.5.13.2", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.3", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.4", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.8", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.10", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.11", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.14", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.16", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.17", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.20", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.21", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.22", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.23", new NormalizingComparator(new CachingNormalizer(new DeepTrimNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.24", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.27", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.28", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.29", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "2.5.13.30", new ComparableComparator());
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.1466.109.114.1", new NormalizingComparator(new CachingNormalizer(new DeepTrimNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.1466.109.114.2", new NormalizingComparator(new CachingNormalizer(new DeepTrimToLowerNormalizer()), new ComparableComparator()));
        producerCallback.schemaObjectProduced(this, "2.5.13.13", new ComparableComparator());
    }
}
