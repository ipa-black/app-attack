package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class ApacheObjectClassProducer extends AbstractBootstrapProducer {
    public ApacheObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("1.2.6.1.4.1.18060.1.1.1.4.1", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("prefNodeName");
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("prefNode");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.4.1", newObjectClass);
    }
}
