package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class InetorgpersonDitContentRuleProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public InetorgpersonDitContentRuleProducer() {
        super(ProducerTypeEnum.DIT_CONTENT_RULE_PRODUCER);
    }
}
