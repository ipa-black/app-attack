package org.apache.ldap.server.protocol;

import androidx.room.FtsOptions;
import java.util.Hashtable;
import javax.naming.NamingException;
import javax.naming.ldap.InitialLdapContext;
import javax.naming.ldap.LdapContext;
import javax.naming.spi.InitialContextFactory;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.BindRequest;
import org.apache.ldap.common.message.BindResponseImpl;
import org.apache.ldap.common.message.Control;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.ldap.server.jndi.EnvKeys;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class BindHandler implements MessageHandler {
    private static final Control[] EMPTY = new Control[0];

    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        LdapContext initialLdapContext;
        BindRequest bindRequest = (BindRequest) obj;
        BindResponseImpl bindResponseImpl = new BindResponseImpl(bindRequest.getMessageId());
        LdapResultImpl ldapResultImpl = new LdapResultImpl(bindResponseImpl);
        bindResponseImpl.setLdapResult(ldapResultImpl);
        Hashtable environment = SessionRegistry.getSingleton().getEnvironment();
        if (!bindRequest.isSimple()) {
            ldapResultImpl.setResultCode(ResultCodeEnum.AUTHMETHODNOTSUPPORTED);
            ldapResultImpl.setErrorMessage("Only simple binds currently supported");
            protocolSession.write(bindResponseImpl);
            return;
        }
        boolean z = true;
        boolean z2 = !environment.containsKey(EnvKeys.DISABLE_ANONYMOUS);
        boolean z3 = bindRequest.getCredentials() == null || bindRequest.getCredentials().length == 0;
        if (bindRequest.getName() != null && bindRequest.getName().length() != 0) {
            z = false;
        }
        if (z3 && z && !z2) {
            ldapResultImpl.setResultCode(ResultCodeEnum.INSUFFICIENTACCESSRIGHTS);
            ldapResultImpl.setErrorMessage("Bind failure: Anonymous binds have been disabled!");
            protocolSession.write(bindResponseImpl);
            return;
        }
        String name = bindRequest.getName();
        byte[] credentials = bindRequest.getCredentials();
        Hashtable hashtable = (Hashtable) environment.clone();
        hashtable.put("java.naming.security.principal", name);
        hashtable.put("java.naming.security.credentials", credentials);
        hashtable.put("java.naming.security.authentication", FtsOptions.TOKENIZER_SIMPLE);
        Control[] controlArr = (Control[]) bindRequest.getControls().toArray(EMPTY);
        try {
            if (hashtable.containsKey("server.use.factory.instance")) {
                InitialContextFactory initialContextFactory = (InitialContextFactory) hashtable.get("server.use.factory.instance");
                if (initialContextFactory == null) {
                    throw new NullPointerException("server.use.factory.instance was set in env but was null");
                }
                initialLdapContext = (LdapContext) initialContextFactory.getInitialContext(hashtable);
            } else {
                initialLdapContext = new InitialLdapContext(hashtable, controlArr);
            }
            SessionRegistry.getSingleton().setLdapContext(protocolSession, initialLdapContext);
            ldapResultImpl.setResultCode(ResultCodeEnum.SUCCESS);
            ldapResultImpl.setMatchedDn(bindRequest.getName());
            protocolSession.write(bindResponseImpl);
        } catch (NamingException e2) {
            if (e2 instanceof LdapException) {
                ldapResultImpl.setResultCode(((LdapException) e2).getResultCode());
            } else {
                ldapResultImpl.setResultCode(ResultCodeEnum.getBestEstimate(e2, bindRequest.getType()));
            }
            ldapResultImpl.setErrorMessage(new StringBuffer().append(new StringBuffer("Bind failure:\n").append(ExceptionUtils.getStackTrace(e2)).toString()).append("\n\nBindRequest = \n").append(bindRequest.toString()).toString());
            protocolSession.write(bindResponseImpl);
        }
    }
}
