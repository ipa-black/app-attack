.class public Lorg/apache/kerberos/messages/components/Ticket;
.super Ljava/lang/Object;
.source "Ticket.java"


# static fields
.field public static final TICKET_VNO:I = 0x5


# instance fields
.field private _encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

.field private _serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _ticketVersionNumber:I


# direct methods
.method public constructor <init>(ILjavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/apache/kerberos/messages/components/Ticket;->_ticketVersionNumber:I

    .line 42
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/Ticket;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 43
    iput-object p3, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 1

    const/4 v0, 0x5

    .line 37
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/kerberos/messages/components/Ticket;-><init>(ILjavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/EncryptedData;)V

    return-void
.end method


# virtual methods
.method public getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationData()Lorg/apache/kerberos/messages/value/AuthorizationData;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getAuthorizationData()Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object v0

    return-object v0
.end method

.method public getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getClientRealm()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method

.method public getEncTicketPart()Lorg/apache/kerberos/messages/components/EncTicketPart;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    return-object v0
.end method

.method public getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getFlag(I)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result p1

    return p1
.end method

.method public getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_serverPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getTicketVersionNumber()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_ticketVersionNumber:I

    return v0
.end method

.method public getTransitedEncoding()Lorg/apache/kerberos/messages/value/TransitedEncoding;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPart;->getTransitedEncoding()Lorg/apache/kerberos/messages/value/TransitedEncoding;

    move-result-object v0

    return-object v0
.end method

.method public setEncTicketPart(Lorg/apache/kerberos/messages/components/EncTicketPart;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/Ticket;->_encTicketPart:Lorg/apache/kerberos/messages/components/EncTicketPart;

    return-void
.end method
