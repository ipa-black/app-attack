.class public Lorg/apache/kerberos/messages/KdcReply;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "KdcReply.java"


# instance fields
.field private _clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

.field private _encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _paData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

.field private _ticket:Lorg/apache/kerberos/messages/components/Ticket;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/MessageType;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 30
    new-instance p1, Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-direct {p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;-><init>()V

    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    return-void
.end method

.method public constructor <init>([Lorg/apache/kerberos/messages/value/PreAuthenticationData;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptedData;Lorg/apache/kerberos/messages/MessageType;)V
    .locals 0

    .line 40
    invoke-direct {p0, p5}, Lorg/apache/kerberos/messages/KdcReply;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 41
    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_paData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    .line 42
    iput-object p2, p0, Lorg/apache/kerberos/messages/KdcReply;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 43
    iput-object p3, p0, Lorg/apache/kerberos/messages/KdcReply;->_ticket:Lorg/apache/kerberos/messages/components/Ticket;

    .line 44
    iput-object p4, p0, Lorg/apache/kerberos/messages/KdcReply;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method


# virtual methods
.method public getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getClientRealm()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method

.method public getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    return-object v0
.end method

.method public getKeyExpiration()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getKeyExpiration()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getLastRequest()Lorg/apache/kerberos/messages/value/LastRequest;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getLastRequest()Lorg/apache/kerberos/messages/value/LastRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getNonce()I

    move-result v0

    return v0
.end method

.method public getPaData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_paData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    return-object v0
.end method

.method public getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getServerRealm()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getServerRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getTicket()Lorg/apache/kerberos/messages/components/Ticket;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_ticket:Lorg/apache/kerberos/messages/components/Ticket;

    return-object v0
.end method

.method public setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    return-void
.end method

.method public setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    return-void
.end method

.method public setClientPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method public setEncKDCRepPart(Lorg/apache/kerberos/messages/components/EncKdcRepPart;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    return-void
.end method

.method public setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method

.method public setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    return-void
.end method

.method public setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V

    return-void
.end method

.method public setKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    return-void
.end method

.method public setKeyExpiration(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setKeyExpiration(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    return-void
.end method

.method public setLastRequest(Lorg/apache/kerberos/messages/value/LastRequest;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setLastRequest(Lorg/apache/kerberos/messages/value/LastRequest;)V

    return-void
.end method

.method public setNonce(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setNonce(I)V

    return-void
.end method

.method public setPaData([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_paData:[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    return-void
.end method

.method public setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    return-void
.end method

.method public setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setServerPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    return-void
.end method

.method public setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/kerberos/messages/KdcReply;->_encKDCRepPart:Lorg/apache/kerberos/messages/components/EncKdcRepPart;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    return-void
.end method

.method public setTicket(Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/apache/kerberos/messages/KdcReply;->_ticket:Lorg/apache/kerberos/messages/components/Ticket;

    return-void
.end method
