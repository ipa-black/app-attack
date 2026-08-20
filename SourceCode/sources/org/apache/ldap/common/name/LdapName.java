package org.apache.ldap.common.name;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.naming.InvalidNameException;
import javax.naming.Name;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class LdapName implements Name {
    private static DnParser s_parser;
    private boolean m_isClean;
    private List m_list;
    private String m_name;

    public LdapName() {
        this.m_isClean = false;
        this.m_list = new ArrayList();
    }

    public LdapName(String str) throws NamingException {
        this.m_isClean = false;
        if (str == null || str.trim().equals("")) {
            this.m_list = new ArrayList();
        } else {
            getNameParser().parse(str, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LdapName(List list) {
        this.m_isClean = false;
        this.m_list = list;
    }

    LdapName(Iterator it) {
        this.m_isClean = false;
        this.m_list = new ArrayList();
        while (it.hasNext()) {
            this.m_list.add(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setList(ArrayList arrayList) {
        this.m_list = arrayList;
    }

    public Object clone() {
        return new LdapName(this.m_list.iterator());
    }

    public int compareTo(Object obj) {
        if (obj instanceof LdapName) {
            LdapName ldapName = (LdapName) obj;
            int min = Math.min(size(), ldapName.size());
            for (int i = 0; i < min; i++) {
                int compareTo = get(i).compareTo(ldapName.get(i));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            if (this.m_list.size() == ldapName.size()) {
                return 0;
            }
            return this.m_list.size() > ldapName.size() ? 1 : -1;
        }
        throw new ClassCastException("The object to compare this LdapName to is not a valid LDAP distinguished name.");
    }

    public int size() {
        return this.m_list.size();
    }

    public boolean isEmpty() {
        return this.m_list.isEmpty();
    }

    public Enumeration getAll() {
        return new Enumeration() { // from class: org.apache.ldap.common.name.LdapName.1
            private int l_pos;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.l_pos < LdapName.this.size();
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                if (this.l_pos >= LdapName.this.size()) {
                    throw new NoSuchElementException();
                }
                String str = LdapName.this.get(this.l_pos);
                this.l_pos++;
                return str;
            }
        };
    }

    public String get(int i) {
        return (String) this.m_list.get((size() - i) - 1);
    }

    public Name getPrefix(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.m_list.subList(size() - i, size()));
        return new LdapName(arrayList);
    }

    public Name getSuffix(int i) {
        ArrayList arrayList = new ArrayList();
        List list = this.m_list;
        arrayList.addAll(list.subList(i, list.size()));
        return new LdapName(arrayList);
    }

    public boolean startsWith(Name name) {
        if (name instanceof LdapName) {
            LdapName ldapName = (LdapName) name;
            if (ldapName.size() > size()) {
                return false;
            }
            for (int i = 0; i < ldapName.size(); i++) {
                if (!ldapName.get(i).equals(get(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public boolean endsWith(Name name) {
        if (name instanceof LdapName) {
            LdapName ldapName = (LdapName) name;
            if (ldapName.size() > size()) {
                return false;
            }
            int size = size() - ldapName.size();
            for (int i = 0; i < ldapName.size(); i++) {
                if (!ldapName.get(i).equals(get(size + i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private void syntaxCheck(String str) throws InvalidNameException {
        if (str.indexOf(61) == -1) {
            throw new InvalidNameException(new StringBuffer("Name component ").append(str).append(" is not a valid distinguished name component.").toString());
        }
    }

    private void syntaxCheck(String str, int i) throws InvalidNameException {
        if (str.indexOf(61) == -1) {
            throw new InvalidNameException(new StringBuffer("Name component ").append(str).append(" at index ").append(i).append(" is not a valid distinguished name component.").toString());
        }
    }

    public Name addAll(Name name) throws InvalidNameException {
        for (int i = 0; i < name.size(); i++) {
            syntaxCheck(name.get(i), i);
        }
        for (int i2 = 0; i2 < name.size(); i2++) {
            this.m_list.add(0, name.get(i2));
        }
        this.m_isClean = false;
        return this;
    }

    public Name addAll(int i, Name name) throws InvalidNameException {
        for (int i2 = 0; i2 < name.size(); i2++) {
            syntaxCheck(name.get(i2), i2);
        }
        for (int i3 = 0; i3 < name.size(); i3++) {
            this.m_list.add((size() - i) - i3, name.get(i3));
        }
        this.m_isClean = false;
        return this;
    }

    public Name add(String str) throws InvalidNameException {
        syntaxCheck(str);
        this.m_list.add(0, str);
        this.m_isClean = false;
        return this;
    }

    public Name add(int i, String str) throws InvalidNameException {
        syntaxCheck(str);
        this.m_list.add(size() - i, str);
        this.m_isClean = false;
        return this;
    }

    public Object remove(int i) throws InvalidNameException {
        this.m_isClean = false;
        return this.m_list.remove((size() - i) - 1);
    }

    public String toString() {
        String str = this.m_name;
        if (str == null || !this.m_isClean) {
            if (this.m_list.size() == 0) {
                this.m_name = "";
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer((String) this.m_list.get(0));
            for (int i = 1; i < this.m_list.size(); i++) {
                stringBuffer.append(',').append(this.m_list.get(i));
            }
            String stringBuffer2 = stringBuffer.toString();
            this.m_name = stringBuffer2;
            this.m_isClean = true;
            return stringBuffer2;
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof String) {
            return toString().equals(obj);
        }
        if (obj instanceof Name) {
            Name name = (Name) obj;
            if (name.size() != size()) {
                return false;
            }
            for (int i = 0; i < size(); i++) {
                if (!name.get(i).equals(get(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public static DnParser getNameParser() throws NamingException {
        if (s_parser == null) {
            s_parser = new DnParser();
        }
        return s_parser;
    }

    public String getRdn() {
        if (size() == 0) {
            return "";
        }
        return get(size() - 1);
    }

    public static String getRdn(Name name) {
        if (name.size() == 0) {
            return "";
        }
        return name.get(name.size() - 1);
    }
}
