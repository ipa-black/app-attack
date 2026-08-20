.class public Lorg/apache/kerberos/messages/components/EncKdcRepPart;
.super Ljava/lang/Object;
.source "EncKdcRepPart.java"


# instance fields
.field private _authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

.field private _componentType:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field private _endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _flags:Lorg/apache/kerberos/messages/value/TicketFlags;

.field private _key:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private _keyExpiration:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _lastRequest:Lorg/apache/kerberos/messages/value/LastRequest;

.field private _nonce:I

.field private _renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _startTime:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/kerberos/messages/value/TicketFlags;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/TicketFlags;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/LastRequest;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/TicketFlags;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/HostAddresses;Lorg/apache/kerberos/messages/components/MessageComponentType;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/kerberos/messages/value/TicketFlags;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/TicketFlags;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    .line 54
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_lastRequest:Lorg/apache/kerberos/messages/value/LastRequest;

    .line 55
    iput p3, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_nonce:I

    .line 56
    iput-object p4, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_keyExpiration:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 57
    iput-object p5, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    .line 58
    iput-object p6, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 59
    iput-object p7, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 60
    iput-object p8, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 61
    iput-object p9, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 62
    iput-object p10, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 63
    iput-object p11, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    .line 64
    iput-object p12, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_componentType:Lorg/apache/kerberos/messages/components/MessageComponentType;

    return-void
.end method


# virtual methods
.method public getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-object v0
.end method

.method public getComponentType()Lorg/apache/kerberos/messages/components/MessageComponentType;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_componentType:Lorg/apache/kerberos/messages/components/MessageComponentType;

    return-object v0
.end method

.method public getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    return-object v0
.end method

.method public getKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-object v0
.end method

.method public getKeyExpiration()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_keyExpiration:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getLastRequest()Lorg/apache/kerberos/messages/value/LastRequest;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_lastRequest:Lorg/apache/kerberos/messages/value/LastRequest;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_nonce:I

    return v0
.end method

.method public getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getServerRealm()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-void
.end method

.method public setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    return-void
.end method

.method public setKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-void
.end method

.method public setKeyExpiration(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_keyExpiration:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setLastRequest(Lorg/apache/kerberos/messages/value/LastRequest;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_lastRequest:Lorg/apache/kerberos/messages/value/LastRequest;

    return-void
.end method

.method public setNonce(I)V
    .locals 0

    .line 131
    iput p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_nonce:I

    return-void
.end method

.method public setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method public setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method
