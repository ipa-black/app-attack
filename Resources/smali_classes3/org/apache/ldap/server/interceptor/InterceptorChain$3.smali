.class final Lorg/apache/ldap/server/interceptor/InterceptorChain$3;
.super Ljava/lang/Object;
.source "InterceptorChain.java"

# interfaces
.implements Lorg/apache/ldap/server/interceptor/NextInterceptor;


# instance fields
.field final synthetic this$1:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$3;->this$1:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$3;->this$1:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object v0

    .line 578
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$3;->this$1:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/NextInterceptor;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/interceptor/Interceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 586
    new-instance v2, Lorg/apache/ldap/server/interceptor/InterceptorException;

    const-string v3, "Unexpected exception."

    invoke-direct {v2, v0, p1, v3, v1}, Lorg/apache/ldap/server/interceptor/InterceptorException;-><init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception p1

    .line 582
    throw p1
.end method
