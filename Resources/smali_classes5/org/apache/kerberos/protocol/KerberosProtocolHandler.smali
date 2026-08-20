.class public Lorg/apache/kerberos/protocol/KerberosProtocolHandler;
.super Ljava/lang/Object;
.source "KerberosProtocolHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandler;


# instance fields
.field private authService:Lorg/apache/kerberos/kdc/AuthenticationService;

.field private errorService:Lorg/apache/kerberos/kdc/ErrorService;

.field private tgsService:Lorg/apache/kerberos/kdc/TicketGrantingService;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/kerberos/kdc/ErrorService;

    invoke-direct {v0, p1}, Lorg/apache/kerberos/kdc/ErrorService;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;)V

    iput-object v0, p0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;->errorService:Lorg/apache/kerberos/kdc/ErrorService;

    .line 47
    new-instance v0, Lorg/apache/kerberos/kdc/AuthenticationService;

    invoke-direct {v0, p1, p2}, Lorg/apache/kerberos/kdc/AuthenticationService;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V

    iput-object v0, p0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;->authService:Lorg/apache/kerberos/kdc/AuthenticationService;

    .line 48
    new-instance v0, Lorg/apache/kerberos/kdc/TicketGrantingService;

    invoke-direct {v0, p1, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V

    iput-object v0, p0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;->tgsService:Lorg/apache/kerberos/kdc/TicketGrantingService;

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 3

    .line 68
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " EXCEPTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 71
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " RCVD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :try_start_0
    check-cast p2, Lorg/apache/kerberos/messages/KdcRequest;

    .line 82
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/KdcRequest;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance p2, Lorg/apache/kerberos/exceptions/KerberosException;

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;->tgsService:Lorg/apache/kerberos/kdc/TicketGrantingService;

    invoke-virtual {v0, p2}, Lorg/apache/kerberos/kdc/TicketGrantingService;->getReplyFor(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/TicketGrantReply;

    move-result-object p2

    .line 93
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :pswitch_1
    new-instance p2, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_BADDIRECTION:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p2, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p2

    .line 87
    :pswitch_2
    iget-object v0, p0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;->authService:Lorg/apache/kerberos/kdc/AuthenticationService;

    invoke-virtual {v0, p2}, Lorg/apache/kerberos/kdc/AuthenticationService;->getReplyFor(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/kerberos/messages/AuthenticationReply;

    move-result-object p2

    .line 88
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    goto :goto_1

    .line 101
    :goto_0
    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KRB_AP_ERR_MSG_TYPE:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p2, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p2
    :try_end_0
    .catch Lorg/apache/kerberos/exceptions/KerberosException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Returning error message:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/kerberos/exceptions/KerberosException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/apache/kerberos/protocol/KerberosProtocolHandler;->errorService:Lorg/apache/kerberos/kdc/ErrorService;

    invoke-virtual {v0, p2}, Lorg/apache/kerberos/kdc/ErrorService;->getReplyFor(Lorg/apache/kerberos/exceptions/KerberosException;)Lorg/apache/kerberos/messages/ErrorMessage;

    move-result-object p2

    .line 108
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " SENT: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " CLOSED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 2

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " IDLE("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " OPENED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
