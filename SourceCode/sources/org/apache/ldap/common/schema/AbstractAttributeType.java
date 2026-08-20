package org.apache.ldap.common.schema;

import java.io.Serializable;
/* loaded from: classes3.dex */
public abstract class AbstractAttributeType extends AbstractSchemaObject implements Serializable, AttributeType {
    private boolean canUserModify;
    private boolean isCollective;
    private boolean isSingleValue;
    private int length;
    private UsageEnum usage;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractAttributeType(String str) {
        super(str);
        this.isSingleValue = false;
        this.isCollective = false;
        this.canUserModify = true;
        this.usage = UsageEnum.USERAPPLICATIONS;
        this.length = -1;
    }

    @Override // org.apache.ldap.common.schema.AttributeType
    public boolean isSingleValue() {
        return this.isSingleValue;
    }

    @Override // org.apache.ldap.common.schema.AttributeType
    public boolean isCollective() {
        return this.isCollective;
    }

    @Override // org.apache.ldap.common.schema.AttributeType
    public boolean isCanUserModify() {
        return this.canUserModify;
    }

    @Override // org.apache.ldap.common.schema.AttributeType
    public UsageEnum getUsage() {
        return this.usage;
    }

    @Override // org.apache.ldap.common.schema.AttributeType
    public int getLength() {
        return this.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSingleValue(boolean z) {
        this.isSingleValue = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCollective(boolean z) {
        this.isCollective = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCanUserModify(boolean z) {
        this.canUserModify = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setUsage(UsageEnum usageEnum) {
        this.usage = usageEnum;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLength(int i) {
        this.length = i;
    }
}
