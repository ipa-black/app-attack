package org.apache.ldap.server;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Hashtable;
import javax.naming.ConfigurationException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.naming.ldap.Control;
import javax.naming.ldap.InitialLdapContext;
import javax.naming.ldap.LdapContext;
import junit.framework.TestCase;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.exception.NestableRuntimeException;
import org.apache.ldap.common.exception.LdapConfigurationException;
import org.apache.ldap.common.ldif.LdifIterator;
import org.apache.ldap.common.ldif.LdifParserImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.server.jndi.EnvKeys;
/* loaded from: classes3.dex */
public abstract class AbstractCoreTest extends TestCase {
    public static final String LDIF = "dn: uid=akarasulu,ou=users,ou=system\ncn: Alex Karasulu\nsn: Karasulu\ngivenname: Alex\nobjectclass: top\nobjectclass: person\nobjectclass: organizationalPerson\nobjectclass: inetOrgPerson\nou: Engineering\nou: People\nl: Bogusville\nuid: akarasulu\nmail: akarasulu@apache.org\ntelephonenumber: +1 408 555 4798\nfacsimiletelephonenumber: +1 408 555 9751\nroomnumber: 4612\nuserpassword: test\n";
    private ArrayList list;
    protected LdapContext sysRoot;
    protected boolean doDelete = true;
    protected Hashtable extras = new Hashtable();
    protected Hashtable overrides = new Hashtable();

    public AbstractCoreTest() {
        this.list = null;
        this.list = new ArrayList();
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        try {
            new LdifParserImpl().parse(lockableAttributesImpl, LDIF);
            this.list.add(lockableAttributesImpl);
        } catch (NamingException e2) {
            e2.printStackTrace();
            throw new NestableRuntimeException((Throwable) e2);
        }
    }

    protected void setUp() throws Exception {
        super.setUp();
        this.extras.put(EnvKeys.TEST_ENTRIES, this.list);
        if (this.overrides.containsKey(EnvKeys.WKDIR)) {
            doDelete(new File((String) this.overrides.get(EnvKeys.WKDIR)));
        } else {
            doDelete(new File(new StringBuffer(TypedValues.AttributesType.S_TARGET).append(File.separator).append("apacheds").toString()));
        }
        setSysRoot(SystemPartition.ADMIN_PRINCIPAL, "secret");
    }

    protected void doDelete(File file) throws IOException {
        if (this.doDelete) {
            if (file.exists()) {
                FileUtils.deleteDirectory(file);
            }
            if (file.exists()) {
                throw new IOException(new StringBuffer("Failed to delete: ").append(file).toString());
            }
        }
    }

    protected LdapContext setSysRoot(String str, String str2) throws NamingException {
        Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.security.principal", str);
        hashtable.put("java.naming.security.credentials", str2);
        return setSysRoot(hashtable);
    }

    protected LdapContext setSysRoot(Hashtable hashtable) throws NamingException {
        Hashtable hashtable2 = new Hashtable();
        hashtable2.putAll(this.extras);
        hashtable2.putAll(hashtable);
        hashtable2.put("java.naming.provider.url", SystemPartition.SUFFIX);
        hashtable2.put(EnvKeys.WKDIR, new StringBuffer(TypedValues.AttributesType.S_TARGET).append(File.separator).append("apacheds").toString());
        hashtable2.put("java.naming.factory.initial", "org.apache.ldap.server.jndi.CoreContextFactory");
        hashtable2.putAll(this.overrides);
        InitialLdapContext initialLdapContext = new InitialLdapContext(hashtable2, (Control[]) null);
        this.sysRoot = initialLdapContext;
        return initialLdapContext;
    }

    protected void tearDown() throws Exception {
        super.tearDown();
        Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.provider.url", SystemPartition.SUFFIX);
        hashtable.put("java.naming.factory.initial", "org.apache.ldap.server.jndi.CoreContextFactory");
        hashtable.put(EnvKeys.SHUTDOWN, "");
        hashtable.put("java.naming.security.principal", SystemPartition.ADMIN_PRINCIPAL);
        hashtable.put("java.naming.security.credentials", "secret");
        try {
            new InitialContext(hashtable);
        } catch (Exception unused) {
        }
        this.sysRoot = null;
        Runtime.getRuntime().gc();
    }

    protected void importLdif(InputStream inputStream) throws NamingException {
        Hashtable hashtable = new Hashtable();
        hashtable.putAll(this.sysRoot.getEnvironment());
        InitialLdapContext initialLdapContext = new InitialLdapContext(hashtable, (Control[]) null);
        LdifParserImpl ldifParserImpl = new LdifParserImpl();
        try {
            LdifIterator ldifIterator = new LdifIterator(inputStream);
            while (ldifIterator.hasNext()) {
                LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
                ldifParserImpl.parse(lockableAttributesImpl, (String) ldifIterator.next());
                LdapName ldapName = new LdapName((String) lockableAttributesImpl.remove("dn").get());
                ldapName.remove(0);
                initialLdapContext.createSubcontext(ldapName, lockableAttributesImpl);
            }
        } catch (Exception e2) {
            ConfigurationException ldapConfigurationException = new LdapConfigurationException("failed while trying to parse system ldif file");
            ldapConfigurationException.setRootCause(e2);
            throw ldapConfigurationException;
        }
    }
}
