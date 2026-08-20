package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.CachingNormalizer;
import org.apache.ldap.common.schema.DeepTrimNormalizer;
/* loaded from: classes3.dex */
public class NisNormalizerProducer extends AbstractBootstrapProducer {
    public NisNormalizerProducer() {
        super(ProducerTypeEnum.NORMALIZER_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.4203.1.2.1", new CachingNormalizer(new DeepTrimNormalizer()));
    }
}
