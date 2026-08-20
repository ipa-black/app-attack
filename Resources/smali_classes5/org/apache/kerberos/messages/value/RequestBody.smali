.class public Lorg/apache/kerberos/messages/value/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# instance fields
.field private _additionalTickets:[Lorg/apache/kerberos/messages/components/Ticket;

.field private _addresses:Lorg/apache/kerberos/messages/value/HostAddresses;

.field private _clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _eType:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private _encAuthorizationData:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _from:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _kdcOptions:Lorg/apache/kerberos/messages/value/KdcOptions;

.field private _nonce:I

.field private _rtime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _till:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/KdcOptions;Ljavax/security/auth/kerberos/KerberosPrincipal;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;I[Lorg/apache/kerberos/crypto/encryption/EncryptionType;Lorg/apache/kerberos/messages/value/HostAddresses;Lorg/apache/kerberos/messages/value/EncryptedData;[Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_kdcOptions:Lorg/apache/kerberos/messages/value/KdcOptions;

    .line 44
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 45
    iput-object p3, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 46
    iput-object p4, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_from:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 47
    iput-object p5, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_till:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 48
    iput-object p6, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_rtime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 49
    iput p7, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_nonce:I

    .line 50
    iput-object p8, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_eType:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 51
    iput-object p9, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_addresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    .line 52
    iput-object p10, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_encAuthorizationData:Lorg/apache/kerberos/messages/value/EncryptedData;

    .line 53
    iput-object p11, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_additionalTickets:[Lorg/apache/kerberos/messages/components/Ticket;

    return-void
.end method


# virtual methods
.method public getAdditionalTickets()[Lorg/apache/kerberos/messages/components/Ticket;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_additionalTickets:[Lorg/apache/kerberos/messages/components/Ticket;

    return-object v0
.end method

.method public getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_addresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getEType()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_eType:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_encAuthorizationData:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method

.method public getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_from:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_kdcOptions:Lorg/apache/kerberos/messages/value/KdcOptions;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_nonce:I

    return v0
.end method

.method public getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_rtime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/RequestBody;->_till:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method
