.class Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;
.super Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;
.source "LdapProtocolProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/protocol/LdapProtocolProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LdapProtocolHandler"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/server/protocol/LdapProtocolProvider;


# direct methods
.method private constructor <init>(Lorg/apache/ldap/server/protocol/LdapProtocolProvider;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;->this$0:Lorg/apache/ldap/server/protocol/LdapProtocolProvider;

    invoke-direct {p0}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/server/protocol/LdapProtocolProvider;Lorg/apache/ldap/server/protocol/LdapProtocolProvider$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;-><init>(Lorg/apache/ldap/server/protocol/LdapProtocolProvider;)V

    return-void
.end method


# virtual methods
.method protected deregisterMessageType(Ljava/lang/Class;)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->deregisterMessageType(Ljava/lang/Class;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 319
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected registerMessageType(Ljava/lang/Class;Lorg/apache/mina/protocol/handler/MessageHandler;)V
    .locals 0

    .line 309
    invoke-super {p0, p1, p2}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->registerMessageType(Ljava/lang/Class;Lorg/apache/mina/protocol/handler/MessageHandler;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 1

    .line 314
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/protocol/SessionRegistry;->remove(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    return-void
.end method
