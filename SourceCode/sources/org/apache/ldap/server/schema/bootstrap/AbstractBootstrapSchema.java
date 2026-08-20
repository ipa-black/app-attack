package org.apache.ldap.server.schema.bootstrap;

import org.apache.ldap.common.util.ArrayUtils;
/* loaded from: classes3.dex */
public class AbstractBootstrapSchema implements BootstrapSchema {
    protected static final String[] DEFAULT_DEPS = ArrayUtils.EMPTY_STRING_ARRAY;
    private static final String DEFAULT_OWNER = "uid=admin,ou=system";
    private static final String DEFAULT_PACKAGE_NAME = "org.apache.ldap.server.schema.bootstrap";
    private static final String DEFAULT_SCHEMA_NAME = "default";
    private transient String baseName;
    private transient String defaultBaseName;
    private String[] dependencies;
    private final String owner;
    private final String packageName;
    private final String schemaName;
    private transient String schemaNameCapped;

    protected AbstractBootstrapSchema(String str) {
        this(null, str, null, null);
    }

    protected AbstractBootstrapSchema(String str, String str2) {
        this(str, str2, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractBootstrapSchema(String str, String str2, String str3) {
        this(str, str2, str3, null);
    }

    protected AbstractBootstrapSchema(String str, String str2, String str3, String[] strArr) {
        if (str == null) {
            this.owner = "uid=admin,ou=system";
        } else {
            this.owner = str;
        }
        if (str2 == null) {
            this.schemaName = "default";
        } else {
            this.schemaName = str2;
        }
        if (str3 == null) {
            this.packageName = DEFAULT_PACKAGE_NAME;
        } else {
            this.packageName = str3;
        }
        if (strArr == null) {
            this.dependencies = ArrayUtils.EMPTY_STRING_ARRAY;
        } else {
            this.dependencies = strArr;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Character.toUpperCase(str2.charAt(0)));
        stringBuffer.append(str2.substring(1, str2.length()));
        this.schemaNameCapped = stringBuffer.toString();
        stringBuffer.setLength(0);
        stringBuffer.append(DEFAULT_PACKAGE_NAME);
        stringBuffer.append('.');
        stringBuffer.append(this.schemaNameCapped);
        this.defaultBaseName = stringBuffer.toString();
        stringBuffer.setLength(0);
        stringBuffer.append(str3);
        stringBuffer.append('.');
        stringBuffer.append(this.schemaNameCapped);
        this.baseName = stringBuffer.toString();
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public final String getOwner() {
        return this.owner;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public final String getSchemaName() {
        return this.schemaName;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public final String[] getDependencies() {
        return this.dependencies;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setDependencies(String[] strArr) {
        this.dependencies = strArr;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getBaseClassName() {
        return this.baseName;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getDefaultBaseClassName() {
        return this.defaultBaseName;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getFullClassName(ProducerTypeEnum producerTypeEnum) {
        return new StringBuffer().append(this.baseName).append(producerTypeEnum.getName()).toString();
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getFullDefaultBaseClassName(ProducerTypeEnum producerTypeEnum) {
        return new StringBuffer().append(this.defaultBaseName).append(producerTypeEnum.getName()).toString();
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getUnqualifiedClassName(ProducerTypeEnum producerTypeEnum) {
        return new StringBuffer().append(this.schemaNameCapped).append(producerTypeEnum.getName()).toString();
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getPackageName() {
        return this.packageName;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapSchema
    public String getUnqualifiedClassName() {
        return new StringBuffer().append(this.schemaNameCapped).append("Schema").toString();
    }
}
