.class public interface abstract Lorg/apache/ldap/server/interceptor/Interceptor;
.super Ljava/lang/Object;
.source "Interceptor.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
