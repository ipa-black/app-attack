package org.apache.ldap.server.db;

import java.math.BigInteger;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public interface MasterTable extends Table {
    public static final String DBF = "master";
    public static final String SEQPROP_KEY = "__sequence__";

    Attributes delete(BigInteger bigInteger) throws NamingException;

    Attributes get(BigInteger bigInteger) throws NamingException;

    BigInteger getCurrentId() throws NamingException;

    BigInteger getNextId() throws NamingException;

    String getProperty(String str) throws NamingException;

    Attributes put(Attributes attributes, BigInteger bigInteger) throws NamingException;

    void setProperty(String str, String str2) throws NamingException;
}
