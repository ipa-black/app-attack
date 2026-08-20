.class public Lorg/apache/ldap/server/protocol/UnbindHandler;
.super Ljava/lang/Object;
.source "UnbindHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/handler/MessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 38
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object p2

    .line 42
    :try_start_0
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getLdapContext(Lorg/apache/mina/protocol/ProtocolSession;[Ljavax/naming/ldap/Control;Z)Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Ljavax/naming/ldap/LdapContext;->close()V

    .line 49
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/protocol/SessionRegistry;->terminateSession(Lorg/apache/mina/protocol/ProtocolSession;)V

    .line 51
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/protocol/SessionRegistry;->remove(Lorg/apache/mina/protocol/ProtocolSession;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljavax/naming/NamingException;->printStackTrace()V

    :goto_0
    return-void
.end method
