package org.apache.ldap.common.schema;
/* loaded from: classes3.dex */
public interface SchemaObject {
    String getDescription();

    String getName();

    String[] getNames();

    String getOid();

    boolean isObsolete();
}
