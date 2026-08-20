.class public Lorg/apache/kerberos/messages/ApplicationRequest;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "ApplicationRequest.java"


# instance fields
.field private _apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

.field private _authenticator:Lorg/apache/kerberos/messages/components/Authenticator;

.field private _encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

.field private _ticket:Lorg/apache/kerberos/messages/components/Ticket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_AP_REQ:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/ApOptions;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_AP_REQ:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 39
    iput-object p1, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

    .line 40
    iput-object p2, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_ticket:Lorg/apache/kerberos/messages/components/Ticket;

    .line 41
    iput-object p3, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method


# virtual methods
.method public clearOption(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/ApOptions;->clear(I)V

    return-void
.end method

.method public getApOptions()Lorg/apache/kerberos/messages/value/ApOptions;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

    return-object v0
.end method

.method public getAuthenticator()Lorg/apache/kerberos/messages/components/Authenticator;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_authenticator:Lorg/apache/kerberos/messages/components/Authenticator;

    return-object v0
.end method

.method public getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method

.method public getOption(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/ApOptions;->get(I)Z

    move-result p1

    return p1
.end method

.method public getTicket()Lorg/apache/kerberos/messages/components/Ticket;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_ticket:Lorg/apache/kerberos/messages/components/Ticket;

    return-object v0
.end method

.method public setApOptions(Lorg/apache/kerberos/messages/value/ApOptions;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

    return-void
.end method

.method public setAuthenticator(Lorg/apache/kerberos/messages/components/Authenticator;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_authenticator:Lorg/apache/kerberos/messages/components/Authenticator;

    return-void
.end method

.method public setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_encPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method

.method public setOption(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_apOptions:Lorg/apache/kerberos/messages/value/ApOptions;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/ApOptions;->set(I)V

    return-void
.end method

.method public setTicket(Lorg/apache/kerberos/messages/components/Ticket;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/apache/kerberos/messages/ApplicationRequest;->_ticket:Lorg/apache/kerberos/messages/components/Ticket;

    return-void
.end method
