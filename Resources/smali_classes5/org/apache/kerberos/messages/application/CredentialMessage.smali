.class public Lorg/apache/kerberos/messages/application/CredentialMessage;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "CredentialMessage.java"


# instance fields
.field private _encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _tickets:[Lorg/apache/kerberos/messages/components/Ticket;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/EncryptedData;[Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_CRED:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 30
    iput-object p1, p0, Lorg/apache/kerberos/messages/application/CredentialMessage;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    .line 31
    iput-object p2, p0, Lorg/apache/kerberos/messages/application/CredentialMessage;->_tickets:[Lorg/apache/kerberos/messages/components/Ticket;

    return-void
.end method


# virtual methods
.method public getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/CredentialMessage;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method

.method public getTickets()[Lorg/apache/kerberos/messages/components/Ticket;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/CredentialMessage;->_tickets:[Lorg/apache/kerberos/messages/components/Ticket;

    return-object v0
.end method
