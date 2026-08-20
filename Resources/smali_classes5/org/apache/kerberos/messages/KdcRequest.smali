.class public Lorg/apache/kerberos/messages/KdcRequest;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "KdcRequest.java"


# instance fields
.field private preAuthData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

.field private requestBody:Lorg/apache/kerberos/messages/value/RequestBody;


# direct methods
.method public constructor <init>(ILorg/apache/kerberos/messages/MessageType;[Lorg/apache/kerberos/messages/value/PreAuthenticationData;Lorg/apache/kerberos/messages/value/RequestBody;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(ILorg/apache/kerberos/messages/MessageType;)V

    .line 33
    iput-object p3, p0, Lorg/apache/kerberos/messages/KdcRequest;->preAuthData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    .line 34
    iput-object p4, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    return-void
.end method


# virtual methods
.method public clearOption(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KdcOptions;->clear(I)V

    return-void
.end method

.method public getAdditionalTickets()[Lorg/apache/kerberos/messages/components/Ticket;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getAdditionalTickets()[Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getEType()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getEType()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v0

    return-object v0
.end method

.method public getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getNonce()I

    move-result v0

    return v0
.end method

.method public getOption(I)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result p1

    return p1
.end method

.method public getPreAuthData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->preAuthData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public setOption(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcRequest;->requestBody:Lorg/apache/kerberos/messages/value/RequestBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBody;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KdcOptions;->set(I)V

    return-void
.end method
