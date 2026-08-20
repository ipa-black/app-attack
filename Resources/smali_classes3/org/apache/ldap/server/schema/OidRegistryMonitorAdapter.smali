.class public Lorg/apache/ldap/server/schema/OidRegistryMonitorAdapter;
.super Ljava/lang/Object;
.source "OidRegistryMonitorAdapter.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/OidRegistryMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOidWithOid(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public nameResolved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public namesResolved(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public oidDoesNotExist(Ljava/lang/String;Ljavax/naming/NamingException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p2}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public oidResolutionFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p2}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public oidResolved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public oidResolved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
