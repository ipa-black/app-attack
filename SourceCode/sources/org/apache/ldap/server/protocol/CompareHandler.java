package org.apache.ldap.server.protocol;

import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.CompareRequest;
import org.apache.ldap.common.message.CompareResponseImpl;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class CompareHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        ResultCodeEnum bestEstimate;
        CompareRequest compareRequest = (CompareRequest) obj;
        CompareResponseImpl compareResponseImpl = new CompareResponseImpl(compareRequest.getMessageId());
        compareResponseImpl.setLdapResult(new LdapResultImpl(compareResponseImpl));
        try {
            Attribute attribute = SessionRegistry.getSingleton().getLdapContext(protocolSession, null, true).getAttributes(compareRequest.getName()).get(compareRequest.getAttributeId());
            if (attribute == null) {
                compareResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.COMPAREFALSE);
            } else if (attribute.contains(compareRequest.getAssertionValue())) {
                compareResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.COMPARETRUE);
            } else {
                compareResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.COMPAREFALSE);
            }
            compareResponseImpl.getLdapResult().setMatchedDn(compareRequest.getName());
            protocolSession.write(compareResponseImpl);
        } catch (NamingException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("failed to add entry ").append(compareRequest.getName()).append(":\n").toString()).append(ExceptionUtils.getStackTrace(e2)).toString();
            if (e2 instanceof LdapException) {
                bestEstimate = ((LdapException) e2).getResultCode();
            } else {
                bestEstimate = ResultCodeEnum.getBestEstimate(e2, compareRequest.getType());
            }
            compareResponseImpl.getLdapResult().setResultCode(bestEstimate);
            compareResponseImpl.getLdapResult().setErrorMessage(stringBuffer);
            if (e2.getResolvedName() != null) {
                compareResponseImpl.getLdapResult().setMatchedDn(e2.getResolvedName().toString());
            }
            protocolSession.write(compareResponseImpl);
        }
    }
}
