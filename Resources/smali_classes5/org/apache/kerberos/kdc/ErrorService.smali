.class public Lorg/apache/kerberos/kdc/ErrorService;
.super Ljava/lang/Object;
.source "ErrorService.java"


# instance fields
.field private config:Lorg/apache/kerberos/service/KdcConfiguration;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/service/KdcConfiguration;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/kerberos/kdc/ErrorService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    return-void
.end method


# virtual methods
.method public getReplyFor(Lorg/apache/kerberos/exceptions/KerberosException;)Lorg/apache/kerberos/messages/ErrorMessage;
    .locals 3

    .line 40
    new-instance v0, Lorg/apache/kerberos/messages/ErrorMessageModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/ErrorMessageModifier;-><init>()V

    .line 42
    new-instance v1, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/KerberosException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->setErrorCode(I)V

    .line 45
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/KerberosException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->setExplanatoryText(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lorg/apache/kerberos/kdc/ErrorService;->config:Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-virtual {v2}, Lorg/apache/kerberos/service/KdcConfiguration;->getKdcPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->setServerTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->setServerMicroSecond(I)V

    .line 50
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/KerberosException;->getExplanatoryData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->setExplanatoryData([B)V

    .line 52
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/ErrorMessageModifier;->getErrorMessage()Lorg/apache/kerberos/messages/ErrorMessage;

    move-result-object p1

    return-object p1
.end method
