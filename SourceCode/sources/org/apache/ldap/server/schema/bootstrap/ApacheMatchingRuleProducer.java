package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class ApacheMatchingRuleProducer extends AbstractBootstrapProducer {
    public ApacheMatchingRuleProducer() {
        super(ProducerTypeEnum.MATCHING_RULE_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule = new AbstractBootstrapProducer.BootstrapMatchingRule("1.2.6.1.4.1.18060.1.1.1.2.1", bootstrapRegistries);
        bootstrapMatchingRule.setNames(new String[]{"exactDnAsStringMatch"});
        bootstrapMatchingRule.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.12");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule.getOid(), bootstrapMatchingRule);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule2 = new AbstractBootstrapProducer.BootstrapMatchingRule("1.2.6.1.4.1.18060.1.1.1.2.2", bootstrapRegistries);
        bootstrapMatchingRule2.setNames(new String[]{"bigIntegerMatch"});
        bootstrapMatchingRule2.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.27");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule2.getOid(), bootstrapMatchingRule2);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule3 = new AbstractBootstrapProducer.BootstrapMatchingRule("1.2.6.1.4.1.18060.1.1.1.2.3", bootstrapRegistries);
        bootstrapMatchingRule3.setNames(new String[]{"jdbmStringMatch"});
        bootstrapMatchingRule3.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.15");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule3.getOid(), bootstrapMatchingRule3);
    }
}
