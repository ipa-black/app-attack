.class public Lorg/apache/ldap/server/invocation/GetSuffix;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "GetSuffix.java"


# static fields
.field private static final serialVersionUID:J = 0x2d31363337343837L


# instance fields
.field private name:Ljavax/naming/Name;

.field private final normalized:Z


# direct methods
.method public constructor <init>(Ljavax/naming/Name;Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/GetSuffix;->name:Ljavax/naming/Name;

    .line 51
    iput-boolean p2, p0, Lorg/apache/ldap/server/invocation/GetSuffix;->normalized:Z

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 69
    check-cast p1, Lorg/apache/ldap/server/ContextPartition;

    iget-boolean v0, p0, Lorg/apache/ldap/server/invocation/GetSuffix;->normalized:Z

    invoke-interface {p1, v0}, Lorg/apache/ldap/server/ContextPartition;->getSuffix(Z)Ljavax/naming/Name;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljavax/naming/Name;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/GetSuffix;->name:Ljavax/naming/Name;

    return-object v0
.end method

.method public isNormalized()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/apache/ldap/server/invocation/GetSuffix;->normalized:Z

    return v0
.end method

.method public setName(Ljavax/naming/Name;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/GetSuffix;->name:Ljavax/naming/Name;

    return-void
.end method
