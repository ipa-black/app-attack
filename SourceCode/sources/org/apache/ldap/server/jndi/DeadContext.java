package org.apache.ldap.server.jndi;

import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NameParser;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import javax.naming.ldap.Control;
import javax.naming.ldap.ExtendedRequest;
import javax.naming.ldap.ExtendedResponse;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.exception.LdapServiceUnavailableException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class DeadContext implements LdapContext {
    private final String EXCEPTION_MSG = "Context operation unavailable when invoked after Eve provider has been shutdown";

    public Control[] getConnectControls() throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Control[] getRequestControls() throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Control[] getResponseControls() throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void reconnect(Control[] controlArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void setRequestControls(Control[] controlArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public ExtendedResponse extendedOperation(ExtendedRequest extendedRequest) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public LdapContext newInstance(Control[] controlArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Attributes getAttributes(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void modifyAttributes(String str, int i, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Attributes getAttributes(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void modifyAttributes(Name name, int i, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public DirContext getSchema(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public DirContext getSchemaClassDefinition(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public DirContext getSchema(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public DirContext getSchemaClassDefinition(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void modifyAttributes(String str, ModificationItem[] modificationItemArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void modifyAttributes(Name name, ModificationItem[] modificationItemArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(String str, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(Name name, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void bind(String str, Object obj, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void rebind(String str, Object obj, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void bind(Name name, Object obj, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void rebind(Name name, Object obj, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Attributes getAttributes(String str, String[] strArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Attributes getAttributes(Name name, String[] strArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public DirContext createSubcontext(String str, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public DirContext createSubcontext(Name name, Attributes attributes) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(String str, Attributes attributes, String[] strArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(Name name, Attributes attributes, String[] strArr) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(String str, String str2, SearchControls searchControls) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(Name name, String str, SearchControls searchControls) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(String str, String str2, Object[] objArr, SearchControls searchControls) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration search(Name name, String str, Object[] objArr, SearchControls searchControls) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void close() throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public String getNameInNamespace() throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void destroySubcontext(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void unbind(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Hashtable getEnvironment() throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void destroySubcontext(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void unbind(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Object lookup(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Object lookupLink(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Object removeFromEnvironment(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void bind(String str, Object obj) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void rebind(String str, Object obj) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Object lookup(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Object lookupLink(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void bind(Name name, Object obj) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void rebind(Name name, Object obj) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void rename(String str, String str2) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Context createSubcontext(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Context createSubcontext(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public void rename(Name name, Name name2) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NameParser getNameParser(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NameParser getNameParser(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration list(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration listBindings(String str) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration list(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public NamingEnumeration listBindings(Name name) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Object addToEnvironment(String str, Object obj) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public String composeName(String str, String str2) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }

    public Name composeName(Name name, Name name2) throws NamingException {
        throw new LdapServiceUnavailableException("Context operation unavailable when invoked after Eve provider has been shutdown", ResultCodeEnum.UNAVAILABLE);
    }
}
