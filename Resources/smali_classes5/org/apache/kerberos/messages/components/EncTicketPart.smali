.class public Lorg/apache/kerberos/messages/components/EncTicketPart;
.super Ljava/lang/Object;
.source "EncTicketPart.java"


# instance fields
.field private _authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

.field private _authtime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

.field private _clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _flags:Lorg/apache/kerberos/messages/value/TicketFlags;

.field private _renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _sessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private _startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _transitedEncoding:Lorg/apache/kerberos/messages/value/TransitedEncoding;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/TicketFlags;Lorg/apache/kerberos/messages/value/EncryptionKey;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/TransitedEncoding;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/HostAddresses;Lorg/apache/kerberos/messages/value/AuthorizationData;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    .line 45
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_sessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    .line 46
    iput-object p3, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 47
    iput-object p4, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_transitedEncoding:Lorg/apache/kerberos/messages/value/TransitedEncoding;

    .line 48
    iput-object p5, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_authtime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 49
    iput-object p6, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 50
    iput-object p7, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 51
    iput-object p8, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 52
    iput-object p9, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    .line 53
    iput-object p10, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    return-void
.end method


# virtual methods
.method public getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_authtime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getAuthorizationData()Lorg/apache/kerberos/messages/value/AuthorizationData;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    return-object v0
.end method

.method public getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getClientRealm()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    return-object v0
.end method

.method public getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_sessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-object v0
.end method

.method public getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getTransitedEncoding()Lorg/apache/kerberos/messages/value/TransitedEncoding;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncTicketPart;->_transitedEncoding:Lorg/apache/kerberos/messages/value/TransitedEncoding;

    return-object v0
.end method
