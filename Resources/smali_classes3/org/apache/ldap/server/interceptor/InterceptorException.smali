.class public Lorg/apache/ldap/server/interceptor/InterceptorException;
.super Lorg/apache/ldap/common/exception/LdapNamingException;
.source "InterceptorException.java"


# static fields
.field private static final serialVersionUID:J = 0x2d39323230343639L


# instance fields
.field private final interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

.field private final invocation:Lorg/apache/ldap/server/invocation/Invocation;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 57
    iput-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorException;->invocation:Lorg/apache/ldap/server/invocation/Invocation;

    .line 59
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorException;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p0, p3, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 74
    iput-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorException;->invocation:Lorg/apache/ldap/server/invocation/Invocation;

    .line 76
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorException;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ldap/server/interceptor/InterceptorException;-><init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p4}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/InterceptorException;-><init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 91
    invoke-super {p0, p3}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getInterceptor()Lorg/apache/ldap/server/interceptor/Interceptor;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorException;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    return-object v0
.end method

.method public getInvocation()Lorg/apache/ldap/server/invocation/Invocation;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorException;->invocation:Lorg/apache/ldap/server/invocation/Invocation;

    return-object v0
.end method

.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/apache/ldap/server/interceptor/InterceptorException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ldap/server/interceptor/InterceptorException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ldap/common/exception/LdapException;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/apache/ldap/server/interceptor/InterceptorException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/exception/LdapException;

    invoke-interface {v0}, Lorg/apache/ldap/common/exception/LdapException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    invoke-super {p0}, Lorg/apache/ldap/common/exception/LdapNamingException;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v0

    return-object v0
.end method
