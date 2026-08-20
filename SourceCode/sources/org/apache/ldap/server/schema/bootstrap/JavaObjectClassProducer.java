package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class JavaObjectClassProducer extends AbstractBootstrapProducer {
    public JavaObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.7", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        newObjectClass.setDescription("JNDI reference");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JOBJECT_ATTR);
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("javaReferenceAddress");
        arrayList.add("javaFactory");
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("javaNamingReference");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.7", newObjectClass);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass2 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.5", bootstrapRegistries);
        newObjectClass2.setObsolete(false);
        newObjectClass2.setDescription("Java serialized object");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JOBJECT_ATTR);
        newObjectClass2.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JSERIALDATA_ATTR);
        newObjectClass2.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass2.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JSERIALIZEDOBJ_ATTR);
        newObjectClass2.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.5", newObjectClass2);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass3 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.1", bootstrapRegistries);
        newObjectClass3.setObsolete(false);
        newObjectClass3.setDescription("Container for a Java object");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass3.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("cn");
        newObjectClass3.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass3.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JCONTAINER_ATTR);
        newObjectClass3.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.1", newObjectClass3);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass4 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.8", bootstrapRegistries);
        newObjectClass4.setObsolete(false);
        newObjectClass4.setDescription("Java marshalled object");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JOBJECT_ATTR);
        newObjectClass4.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JSERIALDATA_ATTR);
        newObjectClass4.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass4.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("javaMarshalledObject");
        newObjectClass4.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.8", newObjectClass4);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass5 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.42.2.27.4.2.4", bootstrapRegistries);
        newObjectClass5.setObsolete(false);
        newObjectClass5.setDescription("Java object representation");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass5.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JCLASSNAME_ATTR);
        newObjectClass5.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JCLASSNAMES_ATTR);
        arrayList.add("javaCodebase");
        arrayList.add("javaDoc");
        arrayList.add("description");
        newObjectClass5.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(JavaLdapSupport.JOBJECT_ATTR);
        newObjectClass5.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.42.2.27.4.2.4", newObjectClass5);
    }
}
