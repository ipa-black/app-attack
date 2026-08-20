.class public Lorg/apache/kerberos/messages/components/EncTicketPartModifier;
.super Ljava/lang/Object;
.source "EncTicketPartModifier.java"


# instance fields
.field private _authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

.field private _clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

.field private _clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _flags:Lorg/apache/kerberos/messages/value/TicketFlags;

.field private _modifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

.field private _renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _sessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private _startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _transitedEncoding:Lorg/apache/kerberos/messages/value/TransitedEncoding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/apache/kerberos/messages/value/TicketFlags;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/TicketFlags;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    .line 30
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_modifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    return-void
.end method


# virtual methods
.method public clearFlag(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/TicketFlags;->clear(I)V

    return-void
.end method

.method public getEncTicketPart()Lorg/apache/kerberos/messages/components/EncTicketPart;
    .locals 12

    .line 42
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_modifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->getKerberosPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 46
    :cond_0
    new-instance v0, Lorg/apache/kerberos/messages/components/EncTicketPart;

    iget-object v2, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    iget-object v3, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_sessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    iget-object v4, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v5, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_transitedEncoding:Lorg/apache/kerberos/messages/value/TransitedEncoding;

    iget-object v6, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v7, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v8, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v9, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v10, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    iget-object v11, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/apache/kerberos/messages/components/EncTicketPart;-><init>(Lorg/apache/kerberos/messages/value/TicketFlags;Lorg/apache/kerberos/messages/value/EncryptionKey;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/TransitedEncoding;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/HostAddresses;Lorg/apache/kerberos/messages/value/AuthorizationData;)V

    return-object v0
.end method

.method public setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setAuthorizationData(Lorg/apache/kerberos/messages/value/AuthorizationData;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    return-void
.end method

.method public setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-void
.end method

.method public setClientName(Lorg/apache/kerberos/messages/value/PrincipalName;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_modifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setPrincipalName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    return-void
.end method

.method public setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method public setClientRealm(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_modifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setRealm(Ljava/lang/String;)V

    return-void
.end method

.method public setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setFlag(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/TicketFlags;->set(I)V

    return-void
.end method

.method public setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    return-void
.end method

.method public setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_sessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-void
.end method

.method public setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setTransitedEncoding(Lorg/apache/kerberos/messages/value/TransitedEncoding;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->_transitedEncoding:Lorg/apache/kerberos/messages/value/TransitedEncoding;

    return-void
.end method
