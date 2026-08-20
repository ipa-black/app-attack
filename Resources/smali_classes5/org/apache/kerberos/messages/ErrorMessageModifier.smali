.class public Lorg/apache/kerberos/messages/ErrorMessageModifier;
.super Ljava/lang/Object;
.source "ErrorMessageModifier.java"


# instance fields
.field private clientMicroSecond:Ljava/lang/Integer;

.field private clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private errorCode:I

.field private explanatoryData:[B

.field private explanatoryText:Ljava/lang/String;

.field private serverMicroSecond:I

.field private serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private serverTime:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Lorg/apache/kerberos/messages/ErrorMessage;
    .locals 11

    .line 40
    new-instance v10, Lorg/apache/kerberos/messages/ErrorMessage;

    iget-object v1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v2, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->clientMicroSecond:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->serverTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget v4, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->serverMicroSecond:I

    iget v5, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->errorCode:I

    iget-object v6, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v7, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v8, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->explanatoryText:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->explanatoryData:[B

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/kerberos/messages/ErrorMessage;-><init>(Lorg/apache/kerberos/messages/value/KerberosTime;Ljava/lang/Integer;Lorg/apache/kerberos/messages/value/KerberosTime;IILjavax/security/auth/kerberos/KerberosPrincipal;Ljavax/security/auth/kerberos/KerberosPrincipal;Ljava/lang/String;[B)V

    return-object v10
.end method

.method public setClientMicroSecond(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->clientMicroSecond:Ljava/lang/Integer;

    return-void
.end method

.method public setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method public setClientTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 67
    iput p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->errorCode:I

    return-void
.end method

.method public setExplanatoryData([B)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->explanatoryData:[B

    return-void
.end method

.method public setExplanatoryText(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->explanatoryText:Ljava/lang/String;

    return-void
.end method

.method public setServerMicroSecond(I)V
    .locals 0

    .line 87
    iput p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->serverMicroSecond:I

    return-void
.end method

.method public setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method public setServerTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessageModifier;->serverTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method
