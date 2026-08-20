.class public Lorg/apache/ldap/server/schema/ComparatorRegistryMonitorAdapter;
.super Ljava/lang/Object;
.source "ComparatorRegistryMonitorAdapter.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookedUp(Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 0

    return-void
.end method

.method public lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public registerFailed(Ljava/lang/String;Ljava/util/Comparator;Ljavax/naming/NamingException;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public registered(Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 0

    return-void
.end method
