package org.apache.ldap.server.protocol;

import javax.naming.NamingException;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.DeleteRequest;
import org.apache.ldap.common.message.DeleteResponseImpl;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class DeleteHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        ResultCodeEnum bestEstimate;
        DeleteRequest deleteRequest = (DeleteRequest) obj;
        DeleteResponseImpl deleteResponseImpl = new DeleteResponseImpl(deleteRequest.getMessageId());
        deleteResponseImpl.setLdapResult(new LdapResultImpl(deleteResponseImpl));
        try {
            SessionRegistry.getSingleton().getLdapContext(protocolSession, null, true).destroySubcontext(deleteRequest.getName());
            deleteResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.SUCCESS);
            deleteResponseImpl.getLdapResult().setMatchedDn(deleteRequest.getName());
            protocolSession.write(deleteResponseImpl);
        } catch (NamingException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("failed to add entry ").append(deleteRequest.getName()).append(":\n").toString()).append(ExceptionUtils.getStackTrace(e2)).toString();
            if (e2 instanceof LdapException) {
                bestEstimate = ((LdapException) e2).getResultCode();
            } else {
                bestEstimate = ResultCodeEnum.getBestEstimate(e2, deleteRequest.getType());
            }
            deleteResponseImpl.getLdapResult().setResultCode(bestEstimate);
            deleteResponseImpl.getLdapResult().setErrorMessage(stringBuffer);
            if (e2.getResolvedName() != null) {
                deleteResponseImpl.getLdapResult().setMatchedDn(e2.getResolvedName().toString());
            }
            protocolSession.write(deleteResponseImpl);
        }
    }
}
