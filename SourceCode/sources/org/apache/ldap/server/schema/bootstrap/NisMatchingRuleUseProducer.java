package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class NisMatchingRuleUseProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public NisMatchingRuleUseProducer() {
        super(ProducerTypeEnum.MATCHING_RULE_USE_PRODUCER);
    }
}
