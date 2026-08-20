.class public Lorg/apache/kerberos/messages/components/TicketModifier;
.super Ljava/lang/Object;
.source "TicketModifier.java"


# instance fields
.field private _encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

.field private _ticketVersionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    return-void
.end method


# virtual methods
.method public getTicket()Lorg/apache/kerberos/messages/components/Ticket;
    .locals 4

    .line 31
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->getKerberosPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    .line 32
    new-instance v1, Lorg/apache/kerberos/messages/components/Ticket;

    iget v2, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_ticketVersionNumber:I

    iget-object v3, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/kerberos/messages/components/Ticket;-><init>(ILjavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/EncryptedData;)V

    return-object v1
.end method

.method public setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method

.method public setServerName(Lorg/apache/kerberos/messages/value/PrincipalName;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setPrincipalName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    return-void
.end method

.method public setServerRealm(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_serverModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setRealm(Ljava/lang/String;)V

    return-void
.end method

.method public setTicketVersionNumber(I)V
    .locals 0

    .line 36
    iput p1, p0, Lorg/apache/kerberos/messages/components/TicketModifier;->_ticketVersionNumber:I

    return-void
.end method
