package org.apache.ldap.common.schema;

import org.apache.ldap.common.util.ArrayUtils;
/* loaded from: classes3.dex */
public abstract class AbstractSchemaObject implements SchemaObject {
    protected String description;
    protected boolean isObsolete;
    protected String[] names;
    protected final String oid;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSchemaObject(String str) {
        this(str, ArrayUtils.EMPTY_STRING_ARRAY, false, null);
    }

    protected AbstractSchemaObject(String str, String[] strArr) {
        this(str, strArr, false, null);
    }

    protected AbstractSchemaObject(String str, String[] strArr, boolean z) {
        this(str, strArr, z, null);
    }

    protected AbstractSchemaObject(String str, String str2, boolean z) {
        this(str, new String[]{str2}, z, null);
    }

    protected AbstractSchemaObject(String str, boolean z) {
        this(str, null, z, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSchemaObject(String str, String str2) {
        this(str, null, false, str2);
    }

    protected AbstractSchemaObject(String str, String[] strArr, boolean z, String str2) {
        this.isObsolete = false;
        this.names = ArrayUtils.EMPTY_STRING_ARRAY;
        if (str == null) {
            throw new NullPointerException("oid cannot be null");
        }
        this.oid = str;
        this.isObsolete = z;
        this.description = str2;
        if (strArr != null) {
            this.names = strArr;
        }
    }

    @Override // org.apache.ldap.common.schema.SchemaObject
    public String getOid() {
        return this.oid;
    }

    @Override // org.apache.ldap.common.schema.SchemaObject
    public boolean isObsolete() {
        return this.isObsolete;
    }

    @Override // org.apache.ldap.common.schema.SchemaObject
    public String[] getNames() {
        return this.names;
    }

    @Override // org.apache.ldap.common.schema.SchemaObject
    public String getName() {
        String[] strArr = this.names;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        return strArr[0];
    }

    @Override // org.apache.ldap.common.schema.SchemaObject
    public String getDescription() {
        return this.description;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setObsolete(boolean z) {
        this.isObsolete = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setNames(String[] strArr) {
        this.names = strArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setDescription(String str) {
        this.description = str;
    }

    public int hashCode() {
        return this.oid.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchemaObject) {
            return this.oid.equals(((SchemaObject) obj).getOid());
        }
        return false;
    }

    public String toString() {
        return this.oid.toString();
    }
}
