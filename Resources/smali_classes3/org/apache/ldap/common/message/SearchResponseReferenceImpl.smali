.class public Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;
.super Lorg/apache/ldap/common/message/AbstractResponse;
.source "SearchResponseReferenceImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SearchResponseReference;


# instance fields
.field private m_referral:Lorg/apache/ldap/common/message/Referral;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 98
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/SearchResponseReference;

    .line 100
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->m_referral:Lorg/apache/ldap/common/message/Referral;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 105
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->m_referral:Lorg/apache/ldap/common/message/Referral;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 110
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->m_referral:Lorg/apache/ldap/common/message/Referral;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->m_referral:Lorg/apache/ldap/common/message/Referral;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getReferral()Lorg/apache/ldap/common/message/Referral;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->m_referral:Lorg/apache/ldap/common/message/Referral;

    return-object v0
.end method

.method public setReferral(Lorg/apache/ldap/common/message/Referral;)V
    .locals 1

    .line 74
    const-string v0, "Attempt to alter referrals of a locked SearchRequestReference!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->lockCheck(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->m_referral:Lorg/apache/ldap/common/message/Referral;

    return-void
.end method
