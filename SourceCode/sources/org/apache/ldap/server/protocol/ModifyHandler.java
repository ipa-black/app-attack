package org.apache.ldap.server.protocol;

import javax.naming.NamingException;
import javax.naming.directory.ModificationItem;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ModifyRequest;
import org.apache.ldap.common.message.ModifyResponseImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class ModifyHandler implements MessageHandler {
    private static final ModificationItem[] EMPTY = new ModificationItem[0];

    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        ResultCodeEnum bestEstimate;
        ModifyRequest modifyRequest = (ModifyRequest) obj;
        ModifyResponseImpl modifyResponseImpl = new ModifyResponseImpl(modifyRequest.getMessageId());
        modifyResponseImpl.setLdapResult(new LdapResultImpl(modifyResponseImpl));
        try {
            SessionRegistry.getSingleton().getLdapContext(protocolSession, null, true).modifyAttributes(modifyRequest.getName(), (ModificationItem[]) modifyRequest.getModificationItems().toArray(EMPTY));
            modifyResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.SUCCESS);
            modifyResponseImpl.getLdapResult().setMatchedDn(modifyRequest.getName());
            protocolSession.write(modifyResponseImpl);
        } catch (NamingException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("failed to add entry ").append(modifyRequest.getName()).append(":\n").toString()).append(ExceptionUtils.getStackTrace(e2)).toString();
            if (e2 instanceof LdapException) {
                bestEstimate = ((LdapException) e2).getResultCode();
            } else {
                bestEstimate = ResultCodeEnum.getBestEstimate(e2, modifyRequest.getType());
            }
            modifyResponseImpl.getLdapResult().setResultCode(bestEstimate);
            modifyResponseImpl.getLdapResult().setErrorMessage(stringBuffer);
            if (e2.getResolvedName() != null) {
                modifyResponseImpl.getLdapResult().setMatchedDn(e2.getResolvedName().toString());
            }
            protocolSession.write(modifyResponseImpl);
        }
    }
}
