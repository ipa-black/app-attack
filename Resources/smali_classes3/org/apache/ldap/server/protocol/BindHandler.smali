.class public Lorg/apache/ldap/server/protocol/BindHandler;
.super Ljava/lang/Object;
.source "BindHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/handler/MessageHandler;


# static fields
.field private static final EMPTY:[Lorg/apache/ldap/common/message/Control;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    new-array v0, v0, [Lorg/apache/ldap/common/message/Control;

    sput-object v0, Lorg/apache/ldap/server/protocol/BindHandler;->EMPTY:[Lorg/apache/ldap/common/message/Control;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 9

    .line 57
    const-string v0, "server.use.factory.instance"

    check-cast p2, Lorg/apache/ldap/common/message/BindRequest;

    .line 59
    new-instance v1, Lorg/apache/ldap/common/message/BindResponseImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getMessageId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ldap/common/message/BindResponseImpl;-><init>(I)V

    .line 61
    new-instance v2, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {v2, v1}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    .line 63
    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/BindResponse;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 65
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v3

    .line 68
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->isSimple()Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    sget-object p2, Lorg/apache/ldap/common/message/ResultCodeEnum;->AUTHMETHODNOTSUPPORTED:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v2, p2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 72
    const-string p2, "Only simple binds currently supported"

    invoke-interface {v2, p2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_0
    const-string v4, "server.disable.anonymous"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 86
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getCredentials()[B

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getCredentials()[B

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v5

    .line 88
    :goto_1
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    move v5, v7

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 92
    sget-object p2, Lorg/apache/ldap/common/message/ResultCodeEnum;->INSUFFICIENTACCESSRIGHTS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v2, p2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 94
    const-string p2, "Bind failure: Anonymous binds have been disabled!"

    .line 96
    invoke-interface {v2, p2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 98
    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_5
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getName()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getCredentials()[B

    move-result-object v5

    .line 109
    invoke-virtual {v3}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 111
    const-string v6, "java.naming.security.principal"

    invoke-virtual {v3, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v4, "java.naming.security.credentials"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "java.naming.security.authentication"

    const-string v5, "simple"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getControls()Ljava/util/Collection;

    move-result-object v4

    sget-object v5, Lorg/apache/ldap/server/protocol/BindHandler;->EMPTY:[Lorg/apache/ldap/common/message/Control;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/ldap/common/message/Control;

    .line 121
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 123
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/spi/InitialContextFactory;

    if-eqz v0, :cond_6

    .line 130
    invoke-interface {v0, v3}, Ljavax/naming/spi/InitialContextFactory;->getInitialContext(Ljava/util/Hashtable;)Ljavax/naming/Context;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    goto :goto_3

    .line 127
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "server.use.factory.instance was set in env but was null"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_7
    new-instance v0, Ljavax/naming/ldap/InitialLdapContext;

    invoke-direct {v0, v3, v4}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_3
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/apache/ldap/server/protocol/SessionRegistry;->setLdapContext(Lorg/apache/mina/protocol/ProtocolSession;Ljavax/naming/ldap/LdapContext;)V

    .line 162
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->SUCCESS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v2, v0}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 164
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 166
    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 139
    instance-of v3, v0, Lorg/apache/ldap/common/exception/LdapException;

    if-eqz v3, :cond_8

    .line 141
    move-object v3, v0

    check-cast v3, Lorg/apache/ldap/common/exception/LdapException;

    invoke-interface {v3}, Lorg/apache/ldap/common/exception/LdapException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    goto :goto_4

    .line 145
    :cond_8
    invoke-interface {p2}, Lorg/apache/ldap/common/message/BindRequest;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getBestEstimate(Ljava/lang/Throwable;Lorg/apache/ldap/common/message/MessageTypeEnum;)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 149
    :goto_4
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Bind failure:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n\nBindRequest = \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-interface {v2, p2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 155
    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    return-void
.end method
