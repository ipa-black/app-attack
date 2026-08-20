package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.UsageEnum;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class AutofsAttributeTypeProducer extends AbstractBootstrapProducer {
    public AutofsAttributeTypeProducer() {
        super(ProducerTypeEnum.ATTRIBUTE_TYPE_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapAttributeType newAttributeType = AbstractBootstrapProducer.newAttributeType("1.3.6.1.1.1.1.25", bootstrapRegistries);
        newAttributeType.setDescription("Information used by the autofs automounter");
        newAttributeType.setCanUserModify(true);
        newAttributeType.setSingleValue(true);
        newAttributeType.setCollective(false);
        newAttributeType.setObsolete(false);
        newAttributeType.setLength(-1);
        newAttributeType.setUsage(UsageEnum.getUsage("userApplications"));
        newAttributeType.setEqualityId("caseExactIA5Match");
        newAttributeType.setSyntaxId("1.3.6.1.4.1.1466.115.121.1.26");
        arrayList.clear();
        arrayList.add("automountInformation");
        newAttributeType.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.1.1.1.25", newAttributeType);
    }
}
