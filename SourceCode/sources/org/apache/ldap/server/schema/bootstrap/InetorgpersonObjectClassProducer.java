package org.apache.ldap.server.schema.bootstrap;

import com.onesignal.NotificationBundleProcessor;
import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.server.schema.bootstrap.AbstractBootstrapProducer;
/* loaded from: classes3.dex */
public class InetorgpersonObjectClassProducer extends AbstractBootstrapProducer {
    public InetorgpersonObjectClassProducer() {
        super(ProducerTypeEnum.OBJECT_CLASS_PRODUCER);
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public void produce(BootstrapRegistries bootstrapRegistries, ProducerCallback producerCallback) throws NamingException {
        ArrayList arrayList = new ArrayList();
        AbstractBootstrapProducer.BootstrapObjectClass newObjectClass = AbstractBootstrapProducer.newObjectClass("2.16.840.1.113730.3.2.2", bootstrapRegistries);
        newObjectClass.setObsolete(false);
        newObjectClass.setDescription("RFC2798: Internet Organizational Person");
        arrayList.clear();
        arrayList.add("organizationalPerson");
        newObjectClass.setSuperClassIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        newObjectClass.setMustListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("audio");
        arrayList.add("businessCategory");
        arrayList.add("carLicense");
        arrayList.add("departmentNumber");
        arrayList.add("displayName");
        arrayList.add("employeeNumber");
        arrayList.add("employeeType");
        arrayList.add("givenName");
        arrayList.add("homePhone");
        arrayList.add("homePostalAddress");
        arrayList.add("initials");
        arrayList.add("jpegPhoto");
        arrayList.add("labeledURI");
        arrayList.add("mail");
        arrayList.add("manager");
        arrayList.add("mobile");
        arrayList.add(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST);
        arrayList.add("pager");
        arrayList.add("photo");
        arrayList.add("roomNumber");
        arrayList.add("secretary");
        arrayList.add("uid");
        arrayList.add("userCertificate");
        arrayList.add("x500uniqueIdentifier");
        arrayList.add("preferredLanguage");
        arrayList.add("userSMIMECertificate");
        arrayList.add("userPKCS12");
        newObjectClass.setMayListIds((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        arrayList.clear();
        arrayList.add("inetOrgPerson");
        newObjectClass.setNames((String[]) arrayList.toArray(AbstractBootstrapProducer.EMPTY));
        producerCallback.schemaObjectProduced(this, "2.16.840.1.113730.3.2.2", newObjectClass);
    }
}
