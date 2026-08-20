package org.apache.ldap.common.message;

import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public class SearchResponseEntryImpl extends AbstractResponse implements SearchResponseEntry {
    private Attributes attributes;
    private String dn;

    public SearchResponseEntryImpl(int i) {
        super(i, TYPE);
        this.dn = "";
    }

    @Override // org.apache.ldap.common.message.SearchResponseEntry
    public Attributes getAttributes() {
        return this.attributes;
    }

    @Override // org.apache.ldap.common.message.SearchResponseEntry
    public void setAttributes(Attributes attributes) {
        lockCheck("Attempt to alter attributes of a locked SearchResponseEntry!");
        this.attributes = attributes;
    }

    @Override // org.apache.ldap.common.message.SearchResponseEntry
    public String getObjectName() {
        return this.dn;
    }

    @Override // org.apache.ldap.common.message.SearchResponseEntry
    public void setObjectName(String str) {
        lockCheck("Attempt to alter Dn of a locked SearchResponseEntry!");
        this.dn = str;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            SearchResponseEntry searchResponseEntry = (SearchResponseEntry) obj;
            if (this.dn.equals(searchResponseEntry.getObjectName())) {
                if (this.attributes != null || searchResponseEntry.getAttributes() == null) {
                    if (this.attributes == null || searchResponseEntry.getAttributes() != null) {
                        if (this.attributes == null || searchResponseEntry.getAttributes() == null) {
                            return true;
                        }
                        return this.attributes.equals(searchResponseEntry.getAttributes());
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
