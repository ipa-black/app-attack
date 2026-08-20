.class public Lorg/apache/ldap/server/schema/DITStructureRuleRegistryMonitorAdapter;
.super Ljava/lang/Object;
.source "DITStructureRuleRegistryMonitorAdapter.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/DITStructureRuleRegistryMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookedUp(Lorg/apache/ldap/common/schema/DITStructureRule;)V
    .locals 0

    return-void
.end method

.method public lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public registerFailed(Lorg/apache/ldap/common/schema/DITStructureRule;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public registered(Lorg/apache/ldap/common/schema/DITStructureRule;)V
    .locals 0

    return-void
.end method
