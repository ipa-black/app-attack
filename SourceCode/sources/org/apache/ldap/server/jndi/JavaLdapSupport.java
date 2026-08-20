package org.apache.ldap.server.jndi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public class JavaLdapSupport {
    public static final String JCLASSNAMES_ATTR = "javaClassNames";
    public static final String JCLASSNAME_ATTR = "javaClassName";
    public static final String JCONTAINER_ATTR = "javaContainer";
    public static final String JOBJECT_ATTR = "javaObject";
    public static final String JSERIALDATA_ATTR = "javaSerializedData";
    public static final String JSERIALIZEDOBJ_ATTR = "javaSerializedObject";
    public static final String OBJECTCLASS_ATTR = "objectClass";
    public static final String TOP_ATTR = "top";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object deserialize(Attributes attributes) throws NamingException {
        ObjectInputStream objectInputStream;
        String str = (String) attributes.get(JCLASSNAME_ATTR).get();
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(new ByteArrayInputStream((byte[]) attributes.get(JSERIALDATA_ATTR).get()));
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Object readObject = objectInputStream.readObject();
            try {
                objectInputStream.close();
                return readObject;
            } catch (IOException unused) {
                throw new NamingException("object deserialization stream close() failure");
            }
        } catch (Exception e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            NamingException namingException = new NamingException(new StringBuffer("De-serialization of '").append(str).append("' instance failed:\n").append(e.getMessage()).toString());
            namingException.setRootCause(e);
            throw namingException;
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            try {
                objectInputStream2.close();
                throw th;
            } catch (IOException unused2) {
                throw new NamingException("object deserialization stream close() failure");
            }
        }
    }

    static byte[] serialize(Object obj) throws NamingException {
        ObjectOutputStream objectOutputStream;
        Exception e2;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                try {
                    objectOutputStream.writeObject(obj);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        objectOutputStream.close();
                        return byteArray;
                    } catch (IOException unused) {
                        throw new NamingException("object serialization stream close() failure");
                    }
                } catch (Exception e3) {
                    e2 = e3;
                    NamingException namingException = new NamingException(new StringBuffer("Serialization of '").append(obj).append("' failed:\n").append(e2.getMessage()).toString());
                    namingException.setRootCause(e2);
                    throw namingException;
                }
            } catch (Throwable th) {
                th = th;
                objectOutputStream2 = objectOutputStream;
                try {
                    objectOutputStream2.close();
                    throw th;
                } catch (IOException unused2) {
                    throw new NamingException("object serialization stream close() failure");
                }
            }
        } catch (Exception e4) {
            objectOutputStream = null;
            e2 = e4;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void serialize(Attributes attributes, Object obj) throws NamingException {
        attributes.put(OBJECTCLASS_ATTR, TOP_ATTR);
        attributes.put(OBJECTCLASS_ATTR, JOBJECT_ATTR);
        attributes.put(OBJECTCLASS_ATTR, JCONTAINER_ATTR);
        attributes.put(OBJECTCLASS_ATTR, JSERIALIZEDOBJ_ATTR);
        attributes.put(JCLASSNAME_ATTR, obj.getClass().getName());
        attributes.put(JSERIALDATA_ATTR, serialize(obj));
        for (Class<?> cls : obj.getClass().getClasses()) {
            attributes.put(JCLASSNAMES_ATTR, cls.getName());
        }
    }
}
