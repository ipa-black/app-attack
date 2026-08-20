.class public Lorg/apache/ldap/server/protocol/DeleteHandler;
.super Ljava/lang/Object;
.source "DeleteHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/handler/MessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 4

    .line 42
    check-cast p2, Lorg/apache/ldap/common/message/DeleteRequest;

    .line 43
    new-instance v0, Lorg/apache/ldap/common/message/DeleteResponseImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/DeleteRequest;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/message/DeleteResponseImpl;-><init>(I)V

    .line 44
    new-instance v1, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {v1, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v0, v1}, Lorg/apache/ldap/common/message/DeleteResponse;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 48
    :try_start_0
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getLdapContext(Lorg/apache/mina/protocol/ProtocolSession;[Ljavax/naming/ldap/Control;Z)Ljavax/naming/ldap/LdapContext;

    move-result-object v1

    .line 50
    invoke-interface {p2}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/naming/directory/DirContext;->destroySubcontext(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-interface {v0}, Lorg/apache/ldap/common/message/DeleteResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->SUCCESS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 85
    invoke-interface {v0}, Lorg/apache/ldap/common/message/DeleteResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 87
    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    .line 54
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "failed to add entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    instance-of v3, v1, Lorg/apache/ldap/common/exception/LdapException;

    if-eqz v3, :cond_0

    .line 62
    move-object p2, v1

    check-cast p2, Lorg/apache/ldap/common/exception/LdapException;

    invoke-interface {p2}, Lorg/apache/ldap/common/exception/LdapException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p2

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p2}, Lorg/apache/ldap/common/message/DeleteRequest;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getBestEstimate(Ljava/lang/Throwable;Lorg/apache/ldap/common/message/MessageTypeEnum;)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p2

    .line 69
    :goto_0
    invoke-interface {v0}, Lorg/apache/ldap/common/message/DeleteResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 71
    invoke-interface {v0}, Lorg/apache/ldap/common/message/DeleteResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    invoke-interface {p2, v2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 75
    invoke-interface {v0}, Lorg/apache/ldap/common/message/DeleteResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    invoke-virtual {v1}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void
.end method
