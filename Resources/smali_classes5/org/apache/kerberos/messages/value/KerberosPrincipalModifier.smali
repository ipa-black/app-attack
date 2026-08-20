.class public Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;
.super Ljava/lang/Object;
.source "KerberosPrincipalModifier.java"


# static fields
.field private static final REALM_SEPARATOR:Ljava/lang/String; = "@"


# instance fields
.field _nameComponent:Lorg/apache/kerberos/messages/value/PrincipalName;

.field _realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKerberosPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 3

    .line 29
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_nameComponent:Lorg/apache/kerberos/messages/value/PrincipalName;

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_nameComponent:Lorg/apache/kerberos/messages/value/PrincipalName;

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/PrincipalName;->getNameComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_realm:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_0
    new-instance v1, Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_nameComponent:Lorg/apache/kerberos/messages/value/PrincipalName;

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/PrincipalName;->getNameType()I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrincipalName(Lorg/apache/kerberos/messages/value/PrincipalName;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_nameComponent:Lorg/apache/kerberos/messages/value/PrincipalName;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->_realm:Ljava/lang/String;

    return-void
.end method
