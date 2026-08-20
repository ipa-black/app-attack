package org.apache.ldap.server.protocol;

import javax.naming.NamingException;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.AddRequest;
import org.apache.ldap.common.message.AddResponseImpl;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class AddHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        ResultCodeEnum bestEstimate;
        AddRequest addRequest = (AddRequest) obj;
        AddResponseImpl addResponseImpl = new AddResponseImpl(addRequest.getMessageId());
        addResponseImpl.setLdapResult(new LdapResultImpl(addResponseImpl));
        try {
            SessionRegistry.getSingleton().getLdapContext(protocolSession, null, true).createSubcontext(addRequest.getName(), addRequest.getEntry());
            addResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.SUCCESS);
            addResponseImpl.getLdapResult().setMatchedDn(addRequest.getName());
            protocolSession.write(addResponseImpl);
        } catch (NamingException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("failed to add entry ").append(addRequest.getName()).append(":\n").toString()).append(ExceptionUtils.getStackTrace(e2)).toString();
            if (e2 instanceof LdapException) {
                bestEstimate = ((LdapException) e2).getResultCode();
            } else {
                bestEstimate = ResultCodeEnum.getBestEstimate(e2, addRequest.getType());
            }
            addResponseImpl.getLdapResult().setResultCode(bestEstimate);
            addResponseImpl.getLdapResult().setErrorMessage(stringBuffer);
            if (e2.getResolvedName() != null) {
                addResponseImpl.getLdapResult().setMatchedDn(e2.getResolvedName().toString());
            }
            protocolSession.write(addResponseImpl);
        }
    }
}
