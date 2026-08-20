.class public Lorg/apache/ldap/server/protocol/SearchHandler;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/handler/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;
    }
.end annotation


# static fields
.field private static final DEREFALIASES_KEY:Ljava/lang/String; = "java.naming.ldap.derefAliases"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getResponse(Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingException;)Lorg/apache/ldap/common/message/SearchResponseDone;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "failed on search operation:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;-><init>(I)V

    .line 217
    instance-of v2, p2, Lorg/apache/ldap/common/exception/LdapException;

    if-eqz v2, :cond_0

    .line 219
    move-object p1, p2

    check-cast p1, Lorg/apache/ldap/common/exception/LdapException;

    invoke-interface {p1}, Lorg/apache/ldap/common/exception/LdapException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p1

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getBestEstimate(Ljava/lang/Throwable;Lorg/apache/ldap/common/message/MessageTypeEnum;)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p1

    .line 226
    :goto_0
    new-instance v2, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {v2, v1}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 228
    invoke-interface {v1}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 230
    invoke-interface {v1}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    invoke-interface {v1}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p1

    invoke-virtual {p2}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {v1}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 6

    .line 63
    const-string v0, "__filter__"

    check-cast p2, Lorg/apache/ldap/common/message/SearchRequest;

    .line 71
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 73
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const-string v2, "ref"

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v2, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 83
    sget-object v2, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 88
    :goto_0
    new-instance v2, Ljavax/naming/directory/SearchControls;

    invoke-direct {v2}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 90
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getSizeLimit()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 92
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getTimeLimit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljavax/naming/directory/SearchControls;->setTimeLimit(I)V

    .line 94
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getScope()Lorg/apache/ldap/common/message/ScopeEnum;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ldap/common/message/ScopeEnum;->getValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 96
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getTypesOnly()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljavax/naming/directory/SearchControls;->setReturningObjFlag(Z)V

    .line 98
    invoke-virtual {v2, v1}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v2, v1}, Ljavax/naming/directory/SearchControls;->setDerefLinkFlag(Z)V

    .line 104
    :try_start_0
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v1}, Lorg/apache/ldap/server/protocol/SessionRegistry;->getLdapContext(Lorg/apache/mina/protocol/ProtocolSession;[Ljavax/naming/ldap/Control;Z)Ljavax/naming/ldap/LdapContext;

    move-result-object v1

    .line 106
    const-string v4, "java.naming.ldap.derefAliases"

    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljavax/naming/ldap/LdapContext;->addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getFilter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljavax/naming/ldap/LdapContext;->addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getBase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3, v2}, Ljavax/naming/ldap/LdapContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v2

    .line 128
    invoke-interface {v1, v0}, Ljavax/naming/ldap/LdapContext;->removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    new-instance v0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;

    invoke-direct {v0, p0, p2, v2}, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;-><init>(Lorg/apache/ldap/server/protocol/SearchHandler;Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingEnumeration;)V

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    .line 143
    :cond_3
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->close()V

    .line 145
    new-instance v0, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;-><init>(I)V

    .line 147
    new-instance v1, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {v1, v0}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v0, v1}, Lorg/apache/ldap/common/message/SearchResponseDone;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 149
    invoke-interface {v0}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->SUCCESS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 151
    invoke-interface {v0}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getBase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "failed on search operation:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v2, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;-><init>(I)V

    .line 173
    instance-of v3, v0, Lorg/apache/ldap/common/exception/LdapException;

    if-eqz v3, :cond_5

    .line 175
    move-object p2, v0

    check-cast p2, Lorg/apache/ldap/common/exception/LdapException;

    invoke-interface {p2}, Lorg/apache/ldap/common/exception/LdapException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p2

    goto :goto_3

    .line 179
    :cond_5
    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getBestEstimate(Ljava/lang/Throwable;Lorg/apache/ldap/common/message/MessageTypeEnum;)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object p2

    .line 182
    :goto_3
    new-instance v3, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {v3, v2}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/message/SearchResponseDone;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 184
    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 186
    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 190
    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    invoke-virtual {v0}, Ljavax/naming/NamingException;->getResolvedName()Ljavax/naming/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    goto :goto_4

    .line 194
    :cond_6
    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p2

    const-string v0, ""

    invoke-interface {p2, v0}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 197
    :goto_4
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 199
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    return-void
.end method
