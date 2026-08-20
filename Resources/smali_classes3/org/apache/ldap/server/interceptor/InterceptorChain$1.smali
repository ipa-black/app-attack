.class final Lorg/apache/ldap/server/interceptor/InterceptorChain$1;
.super Ljava/lang/Object;
.source "InterceptorChain.java"

# interfaces
.implements Lorg/apache/ldap/server/interceptor/Interceptor;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$1;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 0

    return-void
.end method

.method public process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$1;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain;)Lorg/apache/ldap/server/interceptor/InterceptorChain;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$1;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain;)Lorg/apache/ldap/server/interceptor/InterceptorChain;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$1;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 94
    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/NextInterceptor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 97
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method
