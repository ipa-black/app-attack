package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class NisDitStructureRuleProducer extends AbstractBootstrapProducer {
    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
    }

    public NisDitStructureRuleProducer() {
        super(ProducerTypeEnum.DIT_STRUCTURE_RULE_PRODUCER);
    }
}
