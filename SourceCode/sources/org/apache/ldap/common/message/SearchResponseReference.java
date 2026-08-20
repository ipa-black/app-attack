package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface SearchResponseReference extends Response {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.SEARCHRESREF;

    Referral getReferral();

    void setReferral(Referral referral);
}
