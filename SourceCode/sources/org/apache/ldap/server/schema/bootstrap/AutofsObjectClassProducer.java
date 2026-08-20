package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class AutofsObjectClassProducer extends AbstractBootstrapProducer {
    public AutofsObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.2312.4.2.2", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        newObjectClass.setDescription("An group of related automount objects");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("ou");
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("automountMap");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.2312.4.2.2", newObjectClass);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass2 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.1.1.1.13", bootstrapRegistries);
        newObjectClass2.setObsolete(false);
        newObjectClass2.setDescription("An entry in an automounter map");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass2.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("cn");
        arrayList.add("automountInformation");
        newObjectClass2.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("description");
        newObjectClass2.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("automount");
        newObjectClass2.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.1.1.1.13", newObjectClass2);
    }
}
