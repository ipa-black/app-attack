package org.apache.ldap.server.db;

import java.math.BigInteger;
import java.util.Iterator;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.ModificationItem;
import org.apache.ldap.common.schema.AttributeType;
/* loaded from: classes3.dex */
public interface Database {
    public static final String ALIAS_ATTRIBUTE = "aliasedObjectName";
    public static final String ALIAS_OBJECT = "alias";

    void add(String str, Name name, Attributes attributes) throws NamingException;

    void addIndexOn(AttributeType attributeType) throws NamingException;

    void close() throws NamingException;

    int count() throws NamingException;

    void delete(BigInteger bigInteger) throws NamingException;

    Index getAliasIndex();

    int getChildCount(BigInteger bigInteger) throws NamingException;

    String getEntryDn(BigInteger bigInteger) throws NamingException;

    BigInteger getEntryId(String str) throws NamingException;

    String getEntryUpdn(String str) throws NamingException;

    String getEntryUpdn(BigInteger bigInteger) throws NamingException;

    Index getExistanceIndex();

    Index getHierarchyIndex();

    Attributes getIndices(BigInteger bigInteger) throws NamingException;

    Index getNdnIndex();

    Index getOneAliasIndex();

    BigInteger getParentId(String str) throws NamingException;

    BigInteger getParentId(BigInteger bigInteger) throws NamingException;

    String getProperty(String str) throws NamingException;

    Index getSubAliasIndex();

    Name getSuffix();

    Attributes getSuffixEntry() throws NamingException;

    Index getSystemIndex(String str) throws IndexNotFoundException;

    Iterator getSystemIndices();

    Index getUpdnIndex();

    Index getUserIndex(String str) throws IndexNotFoundException;

    Iterator getUserIndices();

    boolean hasSystemIndexOn(String str);

    boolean hasUserIndexOn(String str);

    boolean isClosed();

    NamingEnumeration list(BigInteger bigInteger) throws NamingException;

    Attributes lookup(BigInteger bigInteger) throws NamingException;

    void modify(Name name, int i, Attributes attributes) throws NamingException;

    void modify(Name name, ModificationItem[] modificationItemArr) throws NamingException;

    void modifyRdn(Name name, String str, boolean z) throws NamingException;

    void move(Name name, Name name2) throws NamingException;

    void move(Name name, Name name2, String str, boolean z) throws NamingException;

    void setAliasIndexOn(AttributeType attributeType) throws NamingException;

    void setExistanceIndexOn(AttributeType attributeType) throws NamingException;

    void setHierarchyIndexOn(AttributeType attributeType) throws NamingException;

    void setNdnIndexOn(AttributeType attributeType) throws NamingException;

    void setOneAliasIndexOn(AttributeType attributeType) throws NamingException;

    void setProperty(String str, String str2) throws NamingException;

    void setSubAliasIndexOn(AttributeType attributeType) throws NamingException;

    void setUpdnIndexOn(AttributeType attributeType) throws NamingException;

    void sync() throws NamingException;
}
