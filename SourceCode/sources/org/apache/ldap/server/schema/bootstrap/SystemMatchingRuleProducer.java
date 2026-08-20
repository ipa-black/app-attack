package org.apache.ldap.server.schema.bootstrap;

import javax.naming.NamingException;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class SystemMatchingRuleProducer extends AbstractBootstrapProducer {
    public SystemMatchingRuleProducer() {
        super(ProducerTypeEnum.MATCHING_RULE_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.0", bootstrapRegistries);
        bootstrapMatchingRule.setNames(new String[]{"objectIdentifierMatch"});
        bootstrapMatchingRule.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.38");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule.getOid(), bootstrapMatchingRule);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule2 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.1", bootstrapRegistries);
        bootstrapMatchingRule2.setNames(new String[]{"distinguishedNameMatch"});
        bootstrapMatchingRule2.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.12");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule2.getOid(), bootstrapMatchingRule2);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule3 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.2", bootstrapRegistries);
        bootstrapMatchingRule3.setNames(new String[]{"caseIgnoreMatch"});
        bootstrapMatchingRule3.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.15");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule3.getOid(), bootstrapMatchingRule3);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule4 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.3", bootstrapRegistries);
        bootstrapMatchingRule4.setNames(new String[]{"caseIgnoreOrderingMatch"});
        bootstrapMatchingRule4.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.15");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule4.getOid(), bootstrapMatchingRule4);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule5 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.4", bootstrapRegistries);
        bootstrapMatchingRule5.setNames(new String[]{"caseIgnoreSubstringsMatch"});
        bootstrapMatchingRule5.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.58");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule5.getOid(), bootstrapMatchingRule5);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule6 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.8", bootstrapRegistries);
        bootstrapMatchingRule6.setNames(new String[]{"numericStringMatch"});
        bootstrapMatchingRule6.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.36");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule6.getOid(), bootstrapMatchingRule6);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule7 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.10", bootstrapRegistries);
        bootstrapMatchingRule7.setNames(new String[]{"numericStringSubstringsMatch"});
        bootstrapMatchingRule7.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.58");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule7.getOid(), bootstrapMatchingRule7);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule8 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.11", bootstrapRegistries);
        bootstrapMatchingRule8.setNames(new String[]{"caseIgnoreListMatch"});
        bootstrapMatchingRule8.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.41");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule8.getOid(), bootstrapMatchingRule8);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule9 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.14", bootstrapRegistries);
        bootstrapMatchingRule9.setNames(new String[]{"integerMatch"});
        bootstrapMatchingRule9.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.27");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule9.getOid(), bootstrapMatchingRule9);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule10 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.16", bootstrapRegistries);
        bootstrapMatchingRule10.setNames(new String[]{"bitStringMatch"});
        bootstrapMatchingRule10.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.6");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule10.getOid(), bootstrapMatchingRule10);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule11 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.17", bootstrapRegistries);
        bootstrapMatchingRule11.setNames(new String[]{"octetStringMatch"});
        bootstrapMatchingRule11.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.40");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule11.getOid(), bootstrapMatchingRule11);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule12 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.20", bootstrapRegistries);
        bootstrapMatchingRule12.setNames(new String[]{"telephoneNumberMatch"});
        bootstrapMatchingRule12.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.50");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule12.getOid(), bootstrapMatchingRule12);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule13 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.21", bootstrapRegistries);
        bootstrapMatchingRule13.setNames(new String[]{"telephoneNumberSubstringsMatch"});
        bootstrapMatchingRule13.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.58");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule13.getOid(), bootstrapMatchingRule13);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule14 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.22", bootstrapRegistries);
        bootstrapMatchingRule14.setNames(new String[]{"presentationAddressMatch"});
        bootstrapMatchingRule14.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.43");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule14.getOid(), bootstrapMatchingRule14);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule15 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.23", bootstrapRegistries);
        bootstrapMatchingRule15.setNames(new String[]{"uniqueMemberMatch"});
        bootstrapMatchingRule15.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.34");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule15.getOid(), bootstrapMatchingRule15);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule16 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.24", bootstrapRegistries);
        bootstrapMatchingRule16.setNames(new String[]{"protocolInformationMatch"});
        bootstrapMatchingRule16.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.42");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule16.getOid(), bootstrapMatchingRule16);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule17 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.27", bootstrapRegistries);
        bootstrapMatchingRule17.setNames(new String[]{"generalizedTimeMatch"});
        bootstrapMatchingRule17.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.24");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule17.getOid(), bootstrapMatchingRule17);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule18 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.28", bootstrapRegistries);
        bootstrapMatchingRule18.setNames(new String[]{"generalizedTimeOrderingMatch"});
        bootstrapMatchingRule18.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.24");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule18.getOid(), bootstrapMatchingRule18);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule19 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.29", bootstrapRegistries);
        bootstrapMatchingRule19.setNames(new String[]{"integerFirstComponentMatch"});
        bootstrapMatchingRule19.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.27");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule19.getOid(), bootstrapMatchingRule19);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule20 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.30", bootstrapRegistries);
        bootstrapMatchingRule20.setNames(new String[]{"objectIdentifierFirstComponentMatch"});
        bootstrapMatchingRule20.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.38");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule20.getOid(), bootstrapMatchingRule20);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule21 = new AbstractBootstrapProducer.BootstrapMatchingRule("1.3.6.1.4.1.1466.109.114.1", bootstrapRegistries);
        bootstrapMatchingRule21.setNames(new String[]{"caseExactIA5Match"});
        bootstrapMatchingRule21.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.26");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule21.getOid(), bootstrapMatchingRule21);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule22 = new AbstractBootstrapProducer.BootstrapMatchingRule("1.3.6.1.4.1.1466.109.114.2", bootstrapRegistries);
        bootstrapMatchingRule22.setNames(new String[]{"caseIgnoreIA5Match"});
        bootstrapMatchingRule22.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.26");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule22.getOid(), bootstrapMatchingRule22);
        AbstractBootstrapProducer.BootstrapMatchingRule bootstrapMatchingRule23 = new AbstractBootstrapProducer.BootstrapMatchingRule("2.5.13.13", bootstrapRegistries);
        bootstrapMatchingRule23.setNames(new String[]{"booleanMatch"});
        bootstrapMatchingRule23.setSyntaxOid("1.3.6.1.4.1.1466.115.121.1.7");
        producerCallback.schemaObjectProduced(this, bootstrapMatchingRule23.getOid(), bootstrapMatchingRule23);
    }
}
