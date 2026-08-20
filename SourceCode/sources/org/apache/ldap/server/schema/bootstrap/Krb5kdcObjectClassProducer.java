package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.kerberos.store.KerberosAttribute;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class Krb5kdcObjectClassProducer extends AbstractBootstrapProducer {
    public Krb5kdcObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.5322.10.2.1", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(KerberosAttribute.PRINCIPAL);
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("cn");
        arrayList.add("krb5PrincipalRealm");
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("krb5Principal");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.5322.10.2.1", newObjectClass);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass2 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.5322.10.2.3", bootstrapRegistries);
        newObjectClass2.setObsolete(false);
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass2.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("krb5RealmName");
        newObjectClass2.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass2.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("krb5Realm");
        newObjectClass2.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.5322.10.2.3", newObjectClass2);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass3 = AbstractBootstrapProducer.newObjectClass("1.3.6.1.4.1.5322.10.2.2", bootstrapRegistries);
        newObjectClass3.setObsolete(false);
        arrayList.clear();
        arrayList.add("krb5Principal");
        newObjectClass3.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add(KerberosAttribute.VERSION);
        newObjectClass3.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("krb5ValidStart");
        arrayList.add("krb5ValidEnd");
        arrayList.add("krb5PasswordEnd");
        arrayList.add("krb5MaxLife");
        arrayList.add("krb5MaxRenew");
        arrayList.add("krb5KDCFlags");
        arrayList.add(KerberosAttribute.TYPE);
        arrayList.add(KerberosAttribute.KEY);
        newObjectClass3.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("krb5KDCEntry");
        newObjectClass3.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.3.6.1.4.1.5322.10.2.2", newObjectClass3);
    }
}
