package org.apache.ldap.server;

import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public class ContextPartitionConfig {
    private Attributes attributes;
    private String id;
    private String[] indices;
    private String partitionClass;
    private String properties;
    private String suffix;

    public String getSuffix() {
        return this.suffix;
    }

    public void setSuffix(String str) {
        this.suffix = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String[] getIndices() {
        return this.indices;
    }

    public void setIndices(String[] strArr) {
        this.indices = strArr;
    }

    public Attributes getAttributes() {
        return this.attributes;
    }

    public void setAttributes(Attributes attributes) {
        this.attributes = attributes;
    }

    public String getPartitionClass() {
        return this.partitionClass;
    }

    public void setPartitionClass(String str) {
        this.partitionClass = str;
    }

    public String getProperties() {
        return this.properties;
    }

    public void setProperties(String str) {
        this.properties = str;
    }
}
