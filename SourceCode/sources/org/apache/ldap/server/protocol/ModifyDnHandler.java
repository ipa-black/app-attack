package org.apache.ldap.server.protocol;

import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ModifyDnRequest;
import org.apache.ldap.common.message.ModifyDnResponseImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.ldap.server.jndi.ServerContext;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class ModifyDnHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        ResultCodeEnum bestEstimate;
        ModifyDnRequest modifyDnRequest = (ModifyDnRequest) obj;
        ModifyDnResponseImpl modifyDnResponseImpl = new ModifyDnResponseImpl(modifyDnRequest.getMessageId());
        modifyDnResponseImpl.setLdapResult(new LdapResultImpl(modifyDnResponseImpl));
        try {
            LdapContext ldapContext = SessionRegistry.getSingleton().getLdapContext(protocolSession, null, true);
            ldapContext.addToEnvironment(ServerContext.DELETE_OLD_RDN_PROP, String.valueOf(modifyDnRequest.getDeleteOldRdn()));
            if (modifyDnRequest.isMove()) {
                LdapName ldapName = new LdapName(modifyDnRequest.getName());
                LdapName ldapName2 = new LdapName(modifyDnRequest.getNewSuperior());
                if (modifyDnRequest.getNewRdn() != null) {
                    ldapName2.add(modifyDnRequest.getNewRdn());
                } else {
                    ldapName2.add(ldapName.getRdn());
                }
                ldapContext.rename(new LdapName(modifyDnRequest.getName()), ldapName2);
            } else {
                LdapName ldapName3 = new LdapName(modifyDnRequest.getName());
                ldapName3.remove(ldapName3.size() - 1);
                ldapName3.add(modifyDnRequest.getNewRdn());
                ldapContext.rename(new LdapName(modifyDnRequest.getName()), ldapName3);
            }
            modifyDnResponseImpl.getLdapResult().setResultCode(ResultCodeEnum.SUCCESS);
            modifyDnResponseImpl.getLdapResult().setMatchedDn(modifyDnRequest.getName());
            protocolSession.write(modifyDnResponseImpl);
        } catch (NamingException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("failed to add entry ").append(modifyDnRequest.getName()).append(":\n").toString()).append(ExceptionUtils.getStackTrace(e2)).toString();
            if (e2 instanceof LdapException) {
                bestEstimate = ((LdapException) e2).getResultCode();
            } else {
                bestEstimate = ResultCodeEnum.getBestEstimate(e2, modifyDnRequest.getType());
            }
            modifyDnResponseImpl.getLdapResult().setResultCode(bestEstimate);
            modifyDnResponseImpl.getLdapResult().setErrorMessage(stringBuffer);
            if (e2.getResolvedName() != null) {
                modifyDnResponseImpl.getLdapResult().setMatchedDn(e2.getResolvedName().toString());
            }
            protocolSession.write(modifyDnResponseImpl);
        }
    }
}
