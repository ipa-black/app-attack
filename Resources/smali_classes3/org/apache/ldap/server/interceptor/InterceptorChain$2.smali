.class final Lorg/apache/ldap/server/interceptor/InterceptorChain$2;
.super Ljava/lang/Object;
.source "InterceptorChain.java"

# interfaces
.implements Lorg/apache/ldap/server/interceptor/Interceptor;


# instance fields
.field private ctx:Lorg/apache/ldap/server/interceptor/InterceptorContext;

.field final synthetic this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$2;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$2;->ctx:Lorg/apache/ldap/server/interceptor/InterceptorContext;

    return-void
.end method

.method public process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 121
    iget-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$2;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain;)Lorg/apache/ldap/server/interceptor/InterceptorChain;

    move-result-object p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$2;->ctx:Lorg/apache/ldap/server/interceptor/InterceptorContext;

    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getRootNexus()Lorg/apache/ldap/server/RootNexus;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/Invocation;->execute(Lorg/apache/ldap/server/BackingStore;)V

    :cond_0
    return-void
.end method
