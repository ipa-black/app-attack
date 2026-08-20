package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class ApachednsObjectClassProducer extends AbstractBootstrapProducer {
    public ApachednsObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("1.2.6.1.4.1.18060.1.1.1.4.1", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        newObjectClass.setDescription("An abstract DNS record objectClass used to build other specific structural objectclasses for different record types");
        arrayList.clear();
        arrayList.add(JavaLdapSupport.TOP_ATTR);
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheDNSTTL");
        arrayList.add("apacheDNSClass");
        arrayList.add("apacheZoneName");
        arrayList.add("apacheName");
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheAbstractRecord");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.4.1", newObjectClass);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass2 = AbstractBootstrapProducer.newObjectClass("1.2.6.1.4.1.18060.1.1.1.4.2", bootstrapRegistries);
        newObjectClass2.setObsolete(false);
        newObjectClass2.setDescription("An address record a.k.a. A record");
        arrayList.clear();
        arrayList.add("apacheAbstractRecord");
        newObjectClass2.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheIpAddress");
        newObjectClass2.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass2.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheAddressRecord");
        newObjectClass2.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.4.2", newObjectClass2);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass3 = AbstractBootstrapProducer.newObjectClass("1.2.6.1.4.1.18060.1.1.1.4.4", bootstrapRegistries);
        newObjectClass3.setObsolete(false);
        newObjectClass3.setDescription("A DNS Name Server record");
        arrayList.clear();
        arrayList.add("apacheAbstractRecord");
        newObjectClass3.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheName");
        newObjectClass3.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass3.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheNameServerRecord");
        newObjectClass3.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.4.4", newObjectClass3);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass4 = AbstractBootstrapProducer.newObjectClass("1.2.6.1.4.1.18060.1.1.1.4.3", bootstrapRegistries);
        newObjectClass4.setObsolete(false);
        newObjectClass4.setDescription("A DNS Pointer record");
        arrayList.clear();
        arrayList.add("apacheAbstractRecord");
        newObjectClass4.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheDomainName");
        newObjectClass4.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass4.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apachePointerRecord");
        newObjectClass4.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.4.3", newObjectClass4);
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass5 = AbstractBootstrapProducer.newObjectClass("1.2.6.1.4.1.18060.1.1.1.4.5", bootstrapRegistries);
        newObjectClass5.setObsolete(false);
        newObjectClass5.setDescription("A DNS Start of Authority record");
        arrayList.clear();
        arrayList.add("apacheAbstractRecord");
        newObjectClass5.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheSOAMName");
        arrayList.add("apacheSOARName");
        arrayList.add("apacheSOASerial");
        arrayList.add("apacheSOARefresh");
        arrayList.add("apacheSOARetry");
        arrayList.add("apacheSOAExpire");
        arrayList.add("apacheSOAMinimum");
        newObjectClass5.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass5.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("apacheStartOfAuthorityRecord");
        newObjectClass5.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "1.2.6.1.4.1.18060.1.1.1.4.5", newObjectClass5);
    }
}
