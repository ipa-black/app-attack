package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class CorbaMatchingRuleUseProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public CorbaMatchingRuleUseProducer() {
        super(ProducerTypeEnum.MATCHING_RULE_USE_PRODUCER);
    }
}
