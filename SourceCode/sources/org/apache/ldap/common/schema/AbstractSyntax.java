package org.apache.ldap.common.schema;
/* loaded from: classes3.dex */
public abstract class AbstractSyntax extends AbstractSchemaObject implements Syntax {
    private boolean isHumanReadible;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSyntax(String str) {
        super(str);
        this.isHumanReadible = false;
    }

    protected AbstractSyntax(String str, boolean z) {
        super(str);
        this.isHumanReadible = z;
    }

    protected AbstractSyntax(String str, String str2) {
        super(str, str2);
        this.isHumanReadible = false;
    }

    protected AbstractSyntax(String str, String str2, boolean z) {
        super(str, str2);
        this.isHumanReadible = z;
    }

    @Override // org.apache.ldap.common.schema.Syntax
    public final boolean isHumanReadible() {
        return this.isHumanReadible;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHumanReadible(boolean z) {
        this.isHumanReadible = z;
    }

    @Override // org.apache.ldap.common.schema.AbstractSchemaObject
    public int hashCode() {
        return this.oid.hashCode();
    }

    @Override // org.apache.ldap.common.schema.AbstractSchemaObject
    public boolean equals(Object obj) {
        return super.equals(obj) && (obj instanceof Syntax);
    }
}
