package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface ModifyDnRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.MODDNREQUEST;
    public static final MessageTypeEnum RESP_TYPE = ModifyDnResponse.TYPE;

    boolean getDeleteOldRdn();

    String getName();

    String getNewRdn();

    String getNewSuperior();

    boolean isMove();

    void setDeleteOldRdn(boolean z);

    void setName(String str);

    void setNewRdn(String str);

    void setNewSuperior(String str);
}
