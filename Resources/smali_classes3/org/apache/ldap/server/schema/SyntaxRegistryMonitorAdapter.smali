.class public Lorg/apache/ldap/server/schema/SyntaxRegistryMonitorAdapter;
.super Ljava/lang/Object;
.source "SyntaxRegistryMonitorAdapter.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookedUp(Lorg/apache/ldap/common/schema/Syntax;)V
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

.method public registerFailed(Lorg/apache/ldap/common/schema/Syntax;Ljavax/naming/NamingException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public registered(Lorg/apache/ldap/common/schema/Syntax;)V
    .locals 0

    return-void
.end method
