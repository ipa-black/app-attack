.class public interface abstract Lorg/apache/ldap/common/message/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Lorg/apache/ldap/common/Lockable;
.implements Ljavax/naming/ldap/Control;


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getValue()[B
.end method

.method public abstract isCritical()Z
.end method

.method public abstract setCritical(Z)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setValue([B)V
.end method
