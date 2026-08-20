.class public Lorg/apache/ldap/server/protocol/ExtendedHandler;
.super Ljava/lang/Object;
.source "ExtendedHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/handler/MessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 35
    new-instance p1, Lorg/apache/ldap/common/NotImplementedException;

    const-string p2, "handle in org.apache.ldap.server.protocol.ExtendedHandler not implemented!"

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
