.class public abstract Lorg/apache/ldap/server/invocation/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected transient contextStack:Ljava/util/Stack;

.field protected transient returnValue:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$3$3f85eec1(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method


# virtual methods
.method protected abstract doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public execute(Lorg/apache/ldap/server/BackingStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/invocation/Invocation;->doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/invocation/Invocation;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getContextStack()Ljava/util/Stack;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Invocation;->contextStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getReturnValue()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Invocation;->returnValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setContextStack(Ljava/util/Stack;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Invocation;->contextStack:Ljava/util/Stack;

    return-void
.end method

.method public setReturnValue(Ljava/lang/Object;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Invocation;->returnValue:Ljava/lang/Object;

    return-void
.end method
