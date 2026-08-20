package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.NoOpNormalizer;
/* loaded from: classes3.dex */
public class ApacheNormalizerProducer extends AbstractBootstrapProducer {
    public ApacheNormalizerProducer() {
        super(ProducerTypeEnum.NORMALIZER_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.2.1", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.2.2", new NoOpNormalizer());
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.2.3", new NoOpNormalizer());
    }
}
