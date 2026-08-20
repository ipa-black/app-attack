.class public Lorg/apache/kerberos/messages/value/RequestBodyModifier;
.super Ljava/lang/Object;
.source "RequestBodyModifier.java"


# instance fields
.field private _additionalTickets:[Lorg/apache/kerberos/messages/components/Ticket;

.field private _addresses:Lorg/apache/kerberos/messages/value/HostAddresses;

.field private _clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

.field private _eType:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private _encAuthorizationData:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _from:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _kdcOptions:Lorg/apache/kerberos/messages/value/KdcOptions;

.field private _nonce:I

.field private _rtime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

.field private _till:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    .line 27
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    return-void
.end method


# virtual methods
.method public getRequestBody()Lorg/apache/kerberos/messages/value/RequestBody;
    .locals 13

    .line 39
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->getKerberosPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v3

    .line 40
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->getKerberosPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v4

    .line 42
    new-instance v0, Lorg/apache/kerberos/messages/value/RequestBody;

    iget-object v2, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_kdcOptions:Lorg/apache/kerberos/messages/value/KdcOptions;

    iget-object v5, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_from:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v6, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_till:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v7, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_rtime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget v8, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_nonce:I

    iget-object v9, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_eType:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    iget-object v10, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_addresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    iget-object v11, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_encAuthorizationData:Lorg/apache/kerberos/messages/value/EncryptedData;

    iget-object v12, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_additionalTickets:[Lorg/apache/kerberos/messages/components/Ticket;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/kerberos/messages/value/RequestBody;-><init>(Lorg/apache/kerberos/messages/value/KdcOptions;Ljavax/security/auth/kerberos/KerberosPrincipal;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;I[Lorg/apache/kerberos/crypto/encryption/EncryptionType;Lorg/apache/kerberos/messages/value/HostAddresses;Lorg/apache/kerberos/messages/value/EncryptedData;[Lorg/apache/kerberos/messages/components/Ticket;)V

    return-object v0
.end method

.method public setAdditionalTickets([Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_additionalTickets:[Lorg/apache/kerberos/messages/components/Ticket;

    return-void
.end method

.method public setAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_addresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-void
.end method

.method public setClientName(Lorg/apache/kerberos/messages/value/PrincipalName;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setPrincipalName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    return-void
.end method

.method public setEType([Lorg/apache/kerberos/crypto/encryption/EncryptionType;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_eType:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-void
.end method

.method public setEncAuthorizationData(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_encAuthorizationData:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method

.method public setFrom(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_from:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setKdcOptions(Lorg/apache/kerberos/messages/value/KdcOptions;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_kdcOptions:Lorg/apache/kerberos/messages/value/KdcOptions;

    return-void
.end method

.method public setNonce(I)V
    .locals 0

    .line 75
    iput p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_nonce:I

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setRealm(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setRealm(Ljava/lang/String;)V

    return-void
.end method

.method public setRtime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_rtime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setServerName(Lorg/apache/kerberos/messages/value/PrincipalName;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setPrincipalName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    return-void
.end method

.method public setTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->_till:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method
