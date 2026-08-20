package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.CachingNormalizer;
import org.apache.ldap.common.schema.DeepTrimNormalizer;
import org.apache.ldap.common.schema.DeepTrimToLowerNormalizer;
/* loaded from: classes3.dex */
public class InetorgpersonNormalizerProducer extends AbstractBootstrapProducer {
    public InetorgpersonNormalizerProducer() {
        super(ProducerTypeEnum.NORMALIZER_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "2.5.13.5", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.7", new CachingNormalizer(new DeepTrimNormalizer()));
        producerCallback.schemaObjectProduced(this, "2.5.13.12", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.1466.109.114.3", new CachingNormalizer(new DeepTrimToLowerNormalizer()));
    }
}
