package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.CachingNormalizer;
import org.apache.ldap.common.schema.DeepTrimNormalizer;
import org.apache.ldap.common.schema.DeepTrimToLowerNormalizer;
import org.apache.ldap.common.schema.DnNormalizer;
import org.apache.ldap.common.schema.NoOpNormalizer;
import org.apache.ldap.server.schema.ConcreteNameComponentNormalizer;
/* loaded from: classes3.dex */
public class SystemNormalizerProducer extends AbstractBootstrapProducer {
    public SystemNormalizerProducer() {
        super(ProducerTypeEnum.NORMALIZER_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "2.5.13.1", new CachingNormalizer(new DnNormalizer(new ConcreteNameComponentNormalizer(bootstrapRegistries.getAttributeTypeRegistry()))));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.1466.109.114.2", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.11", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.2", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.3", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.4", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.0", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.8", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.10", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.14", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.16", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.17", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.20", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.21", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.22", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.23", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.24", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.27", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.28", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.29", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "2.5.13.30", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.1466.109.114.1", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.13", new NoOpNormalizer());
    }
}
