package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class InetorgpersonMatchingRuleProducer extends AbstractBootstrapProducer {
    public InetorgpersonMatchingRuleProducer() {
        super(ProducerTypeEnum.MATCHING_RULE_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.5", bootstrapRegistries);
        bootstrapMatchingRule.setNames(new String[]{"caseExactMatch"});
        bootstrapMatchingRule.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.15");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule.getOid(), bootstrapMatchingRule);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule2 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.7", bootstrapRegistries);
        bootstrapMatchingRule2.setNames(new String[]{"caseExactSubstringsMatch"});
        bootstrapMatchingRule2.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.58");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule2.getOid(), bootstrapMatchingRule2);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule3 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.12", bootstrapRegistries);
        bootstrapMatchingRule3.setNames(new String[]{"caseIgnoreListSubstringsMatch"});
        bootstrapMatchingRule3.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.58");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule3.getOid(), bootstrapMatchingRule3);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule4 = new AbstractBootstrapProducer.BootstrapMatchingRule("1.3.6.1.4.1.1466.109.114.3", bootstrapRegistries);
        bootstrapMatchingRule4.setNames(new String[]{"caseIgnoreIA5SubstringsMatch"});
        bootstrapMatchingRule4.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.58");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule4.getOid(), bootstrapMatchingRule4);
    }
}
