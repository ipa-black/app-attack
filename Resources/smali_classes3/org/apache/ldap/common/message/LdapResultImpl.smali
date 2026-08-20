.class public Lorg/apache/ldap/common/message/LdapResultImpl;
.super Lorg/apache/ldap/common/AbstractLockable;
.source "LdapResultImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/LdapResult;


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private matchedDn:Ljava/lang/String;

.field private referral:Lorg/apache/ldap/common/message/Referral;

.field private resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/Lockable;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    .line 51
    sget-object p1, Lorg/apache/ldap/common/message/ResultCodeEnum;->SUCCESS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    iput-object p1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lorg/apache/ldap/common/message/LdapResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 218
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/LdapResult;

    .line 220
    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    if-nez v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v1

    if-eqz v1, :cond_2

    return v2

    .line 225
    :cond_2
    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    if-eqz v1, :cond_3

    return v2

    .line 230
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 238
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ldap/common/message/ResultCodeEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 245
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->errorMessage:Ljava/lang/String;

    .line 246
    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 248
    const-string v4, ""

    if-nez v1, :cond_6

    move-object v1, v4

    :cond_6
    if-nez v3, :cond_7

    move-object v3, v4

    .line 258
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 264
    :cond_8
    iget-object v1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->matchedDn:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 266
    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getMatchedDn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    .line 271
    :cond_9
    invoke-interface {p1}, Lorg/apache/ldap/common/message/LdapResult;->getMatchedDn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchedDn()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->matchedDn:Ljava/lang/String;

    return-object v0
.end method

.method public getReferral()Lorg/apache/ldap/common/message/Referral;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    return-object v0
.end method

.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method

.method public isReferral()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 1

    .line 95
    const-string v0, "Attempt to alter error message of locked LdapResult!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;->lockCheck(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setMatchedDn(Ljava/lang/String;)V
    .locals 1

    .line 127
    const-string v0, "Attempt to alter matchedDn of locked LdapResult!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;->lockCheck(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->matchedDn:Ljava/lang/String;

    return-void
.end method

.method public setReferral(Lorg/apache/ldap/common/message/Referral;)V
    .locals 1

    .line 193
    const-string v0, "Attempt to alter the referral of a locked LdapResult!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;->lockCheck(Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->referral:Lorg/apache/ldap/common/message/Referral;

    return-void
.end method

.method public setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 1

    .line 154
    const-string v0, "Attempt to alter the resultCode of a locked LdapResult!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;->lockCheck(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lorg/apache/ldap/common/message/LdapResultImpl;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method
