package org.apache.ldap.common.ldif;

import java.util.LinkedList;
import javax.naming.directory.Attribute;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import javax.naming.directory.ModificationItem;
/* loaded from: classes3.dex */
public class LdifEntry {
    private LinkedList m_controlList = new LinkedList();
    private String m_modType = "add";
    private LinkedList m_itemList = new LinkedList();
    private String m_dn = null;
    private BasicAttributes m_attributeList = new BasicAttributes();
    private int m_version = 1;

    public void setVersion(int i) {
        this.m_version = i;
    }

    public void setDn(String str) {
        this.m_dn = str;
    }

    public void setModType(String str) {
        this.m_modType = str;
    }

    public void addModificationItem(int i, Attribute attribute) {
        this.m_itemList.add(new ModificationItem(i, attribute));
    }

    public void addModificationItem(int i, String str, Object obj) {
        this.m_itemList.add(new ModificationItem(i, new BasicAttribute(str, obj)));
    }

    public void addAttribute(Attribute attribute) {
        this.m_attributeList.put(attribute);
    }

    public void addAttribute(String str, Object obj) {
        this.m_attributeList.put(str, obj);
    }

    public String getModType() {
        return this.m_modType;
    }

    public LinkedList getModificationItems() {
        return this.m_itemList;
    }

    public String getDn() {
        return this.m_dn;
    }
}
