.class public interface abstract Lorg/apache/ldap/common/message/LdapResult;
.super Ljava/lang/Object;
.source "LdapResult.java"

# interfaces
.implements Lorg/apache/ldap/common/Lockable;


# virtual methods
.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getMatchedDn()Ljava/lang/String;
.end method

.method public abstract getReferral()Lorg/apache/ldap/common/message/Referral;
.end method

.method public abstract getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
.end method

.method public abstract isReferral()Z
.end method

.method public abstract setErrorMessage(Ljava/lang/String;)V
.end method

.method public abstract setMatchedDn(Ljava/lang/String;)V
.end method

.method public abstract setReferral(Lorg/apache/ldap/common/message/Referral;)V
.end method

.method public abstract setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
.end method
