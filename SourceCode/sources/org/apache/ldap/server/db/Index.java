package org.apache.ldap.server.db;

import java.math.BigInteger;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.regexp.RE;
/* loaded from: classes3.dex */
public interface Index {
    void add(Object obj, BigInteger bigInteger) throws NamingException;

    void add(Attribute attribute, BigInteger bigInteger) throws NamingException;

    void add(Attributes attributes, BigInteger bigInteger) throws NamingException;

    void close() throws NamingException;

    int count() throws NamingException;

    int count(Object obj) throws NamingException;

    int count(Object obj, boolean z) throws NamingException;

    void drop(Object obj, BigInteger bigInteger) throws NamingException;

    void drop(BigInteger bigInteger) throws NamingException;

    void drop(Attribute attribute, BigInteger bigInteger) throws NamingException;

    void drop(Attributes attributes, BigInteger bigInteger) throws NamingException;

    BigInteger forwardLookup(Object obj) throws NamingException;

    AttributeType getAttribute();

    Object getNormalized(Object obj) throws NamingException;

    boolean hasValue(Object obj, BigInteger bigInteger) throws NamingException;

    boolean hasValue(Object obj, BigInteger bigInteger, boolean z) throws NamingException;

    boolean hasValue(RE re, BigInteger bigInteger) throws NamingException;

    IndexEnumeration listIndices() throws NamingException;

    IndexEnumeration listIndices(Object obj) throws NamingException;

    IndexEnumeration listIndices(Object obj, boolean z) throws NamingException;

    IndexEnumeration listIndices(RE re) throws NamingException;

    IndexEnumeration listIndices(RE re, String str) throws NamingException;

    IndexEnumeration listReverseIndices(BigInteger bigInteger) throws NamingException;

    Object reverseLookup(BigInteger bigInteger) throws NamingException;

    void sync() throws NamingException;
}
