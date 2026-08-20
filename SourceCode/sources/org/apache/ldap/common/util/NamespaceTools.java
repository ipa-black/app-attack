package org.apache.ldap.common.util;

import javax.naming.CompositeName;
import javax.naming.InvalidNameException;
import javax.naming.Name;
/* loaded from: classes3.dex */
public class NamespaceTools {
    public static boolean isRoot(String str) throws InvalidNameException {
        if (str == null) {
            throw new InvalidNameException("A null DN is not a valid name.");
        }
        if (str.indexOf(61) != -1) {
            return str.indexOf(44) == -1;
        }
        throw new InvalidNameException("A DN should have an = sign.");
    }

    public static String getParent(String str) throws InvalidNameException {
        if (str == null) {
            throw new InvalidNameException("A null DN is not a valid name.");
        }
        if (str.indexOf(61) == -1) {
            throw new InvalidNameException("A DN should have an = sign.");
        }
        int indexOf = str.indexOf(44);
        if (indexOf == -1) {
            return null;
        }
        return str.substring(indexOf + 1);
    }

    public static String getNamespaceString(Name name) throws InvalidNameException {
        if (name instanceof CompositeName) {
            if (name.size() > 1) {
                throw new InvalidNameException(new StringBuffer().append(name.toString()).append(" has more components than namespace can handle").toString());
            }
            return name.get(0);
        }
        return name.toString();
    }

    public static String getNamespaceString(String str, Name name) throws InvalidNameException {
        if (name instanceof CompositeName) {
            if (name.size() > 1) {
                throw new InvalidNameException(new StringBuffer().append(name.toString()).append(" has more components than namespace can handle").toString());
            }
            StringBuffer stringBuffer = new StringBuffer(str);
            stringBuffer.append(',');
            stringBuffer.append(name.get(0));
            return stringBuffer.toString();
        }
        return name.toString();
    }

    public static String getLastComponent(String str) {
        if (str == null) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(44);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf);
    }

    public static String getRdn(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    public static String setRdn(String str, String str2) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        if (indexOf == -1) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str.substring(indexOf, str.length()));
        stringBuffer.insert(0, str2);
        return stringBuffer.toString();
    }

    public static String getRdnAttribute(String str) {
        return str.substring(0, str.indexOf(61));
    }

    public static String getRdnValue(String str) {
        return str.substring(str.indexOf(61) + 1, str.length());
    }

    public static boolean isSibling(Name name, Name name2) {
        if (name.size() == name2.size()) {
            return name2.startsWith(name.getSuffix(1));
        }
        return false;
    }

    public static boolean isDescendant(Name name, Name name2) {
        return name2.startsWith(name);
    }
}
