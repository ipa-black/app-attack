package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.UsageEnum;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class CorbaAttributeTypeProducer extends AbstractBootstrapProducer {
    public CorbaAttributeTypeProducer() {
        super(ProducerTypeEnum.ATTRIBUTE_TYPE_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapAttributeType newAttributeType = AbstractBootstrapProducer.newAttributeType("1.3.6.1.4.1.42.2.27.4.1.15", bootstrapRegistries);
        newAttributeType.setDescription("Repository ids of interfaces implemented by a CORBA object");
        newAttributeType.setCanUserModify(true);
        newAttributeType.setSingleValue(false);
        newAttributeType.setCollective(false);
        newAttributeType.setObsolete(false);
        newAttributeType.setLength(-1);
        newAttributeType.setUsage(UsageEnum.getUsage("userApplications"));
        newAttributeType.setEqualityId("caseExactMatch");
        newAttributeType.setSyntaxId("1.3.6.1.4.1.1466.115.121.1.15");
        arrayList.clear();
        arrayList.add("corbaRepositoryId");
        newAttributeType.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.1.15", newAttributeType);
        AbstractBootstrapProducer.BootstrapAttributeType newAttributeType2 = AbstractBootstrapProducer.newAttributeType("1.3.6.1.4.1.42.2.27.4.1.14", bootstrapRegistries);
        newAttributeType2.setDescription("Stringified interoperable object reference of a CORBA object");
        newAttributeType2.setCanUserModify(true);
        newAttributeType2.setSingleValue(true);
        newAttributeType2.setCollective(false);
        newAttributeType2.setObsolete(false);
        newAttributeType2.setLength(-1);
        newAttributeType2.setUsage(UsageEnum.getUsage("userApplications"));
        newAttributeType2.setEqualityId("caseIgnoreIA5Match");
        newAttributeType2.setSyntaxId("1.3.6.1.4.1.1466.115.121.1.26");
        arrayList.clear();
        arrayList.add("corbaIor");
        newAttributeType2.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.1.14", newAttributeType2);
    }
}
