package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class CorbaObjectClassProducer extends AbstractBootstrapProducer {
    public CorbaObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.11", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        newObjectClass.setDescription("CORBA interoperable object reference");
        arrayList.clear();
        arrayList.add("corbaObject");
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("corbaIor");
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("corbaObjectReference");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.11", newObjectClass);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass2 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.10", bootstrapRegistries);
        newObjectClass2.setObsolete(false);
        newObjectClass2.setDescription("Container for a CORBA object");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass2.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("cn");
        newObjectClass2.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass2.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("corbaContainer");
        newObjectClass2.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.10", newObjectClass2);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass3 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.9", bootstrapRegistries);
        newObjectClass3.setObsolete(false);
        newObjectClass3.setDescription("CORBA object representation");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass3.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass3.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("corbaRepositoryId");
        arrayList.add("description");
        newObjectClass3.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("corbaObject");
        newObjectClass3.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.9", newObjectClass3);
    }
}
