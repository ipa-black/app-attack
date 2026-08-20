.class public Lorg/apache/ldap/server/protocol/ModifyDnHandler;
.super Ljava/lang/Object;
.source "ModifyDnHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/handler/MessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 5

    .line 45
    check-cast p2, Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 47
    new-instance v0, Lorg/apache/ldap/common/message/ModifyDnResponseImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/message/ModifyDnResponseImpl;-><init>(I)V

    .line 49
    new-instance v1, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {v1, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v0, v1}, Lorg/apache/ldap/common/message/ModifyDnResponse;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 53
    :try_start_0
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getLdapContext(Lorg/apache/mina/protocol/ProtocolSession;[Ljavax/naming/ldap/Control;Z)Ljavax/naming/ldap/LdapContext;

    move-result-object v1

    .line 55
    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getDeleteOldRdn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v4, "java.naming.ldap.deleteRDN"

    invoke-interface {v1, v4, v2}, Ljavax/naming/ldap/LdapContext;->addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->isMove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v3, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewSuperior()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 67
    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/ldap/common/name/LdapName;->add(Ljava/lang/String;)Ljavax/naming/Name;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ldap/common/name/LdapName;->getRdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/ldap/common/name/LdapName;->add(Ljava/lang/String;)Ljavax/naming/Name;

    .line 74
    :goto_0
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljavax/naming/ldap/LdapContext;->rename(Ljavax/naming/Name;Ljavax/naming/Name;)V

    goto :goto_1

    .line 78
    :cond_1
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lorg/apache/ldap/common/name/LdapName;->remove(I)Ljava/lang/Object;

    .line 82
    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ldap/common/name/LdapName;->add(Ljava/lang/String;)Ljavax/naming/Name;

    .line 84
    new-instance v3, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljavax/naming/ldap/LdapContext;->rename(Ljavax/naming/Name;Ljavax/naming/Name;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->SUCCESS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 120
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 122
    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    .line 89
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "failed to add entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
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

    .line 95
    instance-of v3, v1, Lorg/apache/ldap/common/exception/LdapException;

    if-eqz v3, :cond_2

    .line 97
    move-object p2, v1

    check-cast p2, Lorg/apache/ldap/common/exception/LdapException;

    invoke-interface {p2}, Lorg/apache/ldap/common/exception/LdapException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p2

    goto :goto_2

    .line 101
    :cond_2
    invoke-interface {p2}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getBestEstimate(Ljava/lang/Throwable;Lorg/apache/ldap/common/message/MessageTypeEnum;)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p2

    .line 104
    :goto_2
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 106
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    invoke-interface {p2, v2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 110
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    invoke-virtual {v1}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 113
    :cond_3
    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void
.end method
