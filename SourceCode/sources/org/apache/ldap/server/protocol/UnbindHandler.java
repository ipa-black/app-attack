package org.apache.ldap.server.protocol;

import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class UnbindHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        SessionRegistry singleton = SessionRegistry.getSingleton();
        try {
            LdapContext ldapContext = SessionRegistry.getSingleton().getLdapContext(protocolSession, null, false);
            if (ldapContext != null) {
                ldapContext.close();
            }
            singleton.terminateSession(protocolSession);
            singleton.remove(protocolSession);
        } catch (NamingException e2) {
            e2.printStackTrace();
        }
    }
}
