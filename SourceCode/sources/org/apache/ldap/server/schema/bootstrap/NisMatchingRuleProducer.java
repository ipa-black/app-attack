package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class NisMatchingRuleProducer extends AbstractBootstrapProducer {
    public NisMatchingRuleProducer() {
        super(ProducerTypeEnum.MATCHING_RULE_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule = new AbstractBootstrapProducer.BootstrapMatchingRule("1.3.6.1.4.1.4203.1.2.1", bootstrapRegistries);
        bootstrapMatchingRule.setNames(new String[]{"caseExactIA5SubstringsMatch"});
        bootstrapMatchingRule.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.26");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule.getOid(), bootstrapMatchingRule);
    }
}
