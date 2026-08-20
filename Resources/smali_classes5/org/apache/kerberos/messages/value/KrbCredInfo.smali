.class public Lorg/apache/kerberos/messages/value/KrbCredInfo;
.super Ljava/lang/Object;
.source "KrbCredInfo.java"


# instance fields
.field private _authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

.field private _clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _flags:Lorg/apache/kerberos/messages/value/TicketFlags;

.field private _key:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private _renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _startTime:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/EncryptionKey;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/TicketFlags;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    .line 42
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 43
    iput-object p3, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    .line 44
    iput-object p4, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 45
    iput-object p5, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 46
    iput-object p6, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 47
    iput-object p7, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 48
    iput-object p8, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 49
    iput-object p9, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-void
.end method


# virtual methods
.method public getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_authTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_clientAddresses:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_endTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_flags:Lorg/apache/kerberos/messages/value/TicketFlags;

    return-object v0
.end method

.method public getKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-object v0
.end method

.method public getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_renewTill:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/KrbCredInfo;->_startTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method
