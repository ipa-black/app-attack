.class public interface abstract Lorg/apache/kerberos/sam/SamVerifier;
.super Ljava/lang/Object;
.source "SamVerifier.java"


# virtual methods
.method public abstract getSamType()Lorg/apache/kerberos/messages/value/SamType;
.end method

.method public abstract setIntegrityChecker(Lorg/apache/kerberos/sam/KeyIntegrityChecker;)V
.end method

.method public abstract verify(Ljavax/security/auth/kerberos/KerberosPrincipal;[B)Ljavax/security/auth/kerberos/KerberosKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/sam/SamException;
        }
    .end annotation
.end method
