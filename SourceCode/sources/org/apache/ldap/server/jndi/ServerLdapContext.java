package org.apache.ldap.server.jndi;

import java.util.Hashtable;
import javax.naming.Name;
import javax.naming.NamingException;
import javax.naming.ldap.Control;
import javax.naming.ldap.ExtendedRequest;
import javax.naming.ldap.ExtendedResponse;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.NotImplementedException;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.authn.LdapPrincipal;
/* loaded from: classes3.dex */
public class ServerLdapContext extends ServerDirContext implements LdapContext {
    private static final Control[] EMPTY_CONTROLS = new Control[0];
    private Control[] connectControls;
    private Control[] requestControls;
    private Control[] responseControls;

    public ServerLdapContext(PartitionNexus partitionNexus, Hashtable hashtable) throws NamingException {
        super(partitionNexus, hashtable);
        Control[] controlArr = EMPTY_CONTROLS;
        this.requestControls = controlArr;
        this.responseControls = controlArr;
        this.connectControls = controlArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServerLdapContext(LdapPrincipal ldapPrincipal, PartitionNexus partitionNexus, Hashtable hashtable, Name name) {
        super(ldapPrincipal, partitionNexus, hashtable, name);
        Control[] controlArr = EMPTY_CONTROLS;
        this.requestControls = controlArr;
        this.responseControls = controlArr;
        this.connectControls = controlArr;
    }

    public ExtendedResponse extendedOperation(ExtendedRequest extendedRequest) {
        throw new NotImplementedException();
    }

    public LdapContext newInstance(Control[] controlArr) throws NamingException {
        ServerLdapContext serverLdapContext = new ServerLdapContext(getPrincipal(), getNexusProxy(), getEnvironment(), getDn());
        serverLdapContext.setRequestControls(controlArr);
        return serverLdapContext;
    }

    public void reconnect(Control[] controlArr) throws NamingException {
        this.connectControls = controlArr;
    }

    public Control[] getConnectControls() throws NamingException {
        return this.connectControls;
    }

    public void setRequestControls(Control[] controlArr) throws NamingException {
        this.requestControls = controlArr;
    }

    public Control[] getRequestControls() throws NamingException {
        return this.requestControls;
    }

    public Control[] getResponseControls() throws NamingException {
        return this.responseControls;
    }
}
