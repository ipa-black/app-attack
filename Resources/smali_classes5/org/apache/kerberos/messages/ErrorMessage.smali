.class public Lorg/apache/kerberos/messages/ErrorMessage;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "ErrorMessage.java"


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
.method public constructor <init>(Lorg/apache/kerberos/messages/value/KerberosTime;Ljava/lang/Integer;Lorg/apache/kerberos/messages/value/KerberosTime;IILjavax/security/auth/kerberos/KerberosPrincipal;Ljavax/security/auth/kerberos/KerberosPrincipal;Ljava/lang/String;[B)V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_ERROR:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 44
    iput-object p1, p0, Lorg/apache/kerberos/messages/ErrorMessage;->clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 45
    iput-object p2, p0, Lorg/apache/kerberos/messages/ErrorMessage;->clientMicroSecond:Ljava/lang/Integer;

    .line 46
    iput-object p3, p0, Lorg/apache/kerberos/messages/ErrorMessage;->serverTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 47
    iput p4, p0, Lorg/apache/kerberos/messages/ErrorMessage;->serverMicroSecond:I

    .line 48
    iput p5, p0, Lorg/apache/kerberos/messages/ErrorMessage;->errorCode:I

    .line 49
    iput-object p6, p0, Lorg/apache/kerberos/messages/ErrorMessage;->clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 50
    iput-object p7, p0, Lorg/apache/kerberos/messages/ErrorMessage;->serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 51
    iput-object p8, p0, Lorg/apache/kerberos/messages/ErrorMessage;->explanatoryText:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lorg/apache/kerberos/messages/ErrorMessage;->explanatoryData:[B

    return-void
.end method


# virtual methods
.method public getClientMicroSecond()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->clientMicroSecond:Ljava/lang/Integer;

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->errorCode:I

    return v0
.end method

.method public getExplanatoryData()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->explanatoryData:[B

    return-object v0
.end method

.method public getExplanatoryText()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->explanatoryText:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMicroSecond()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->serverMicroSecond:I

    return v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getServerTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/kerberos/messages/ErrorMessage;->serverTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method
