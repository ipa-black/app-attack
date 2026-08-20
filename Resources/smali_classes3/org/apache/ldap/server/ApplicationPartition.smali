.class public Lorg/apache/ldap/server/ApplicationPartition;
.super Lorg/apache/ldap/server/AbstractContextPartition;
.source "ApplicationPartition.java"


# instance fields
.field private normalizedSuffix:Ljavax/naming/Name;

.field private upSuffix:Ljavax/naming/Name;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;Ljavax/naming/Name;Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p3, p4, p5}, Lorg/apache/ldap/server/AbstractContextPartition;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V

    .line 70
    iput-object p2, p0, Lorg/apache/ldap/server/ApplicationPartition;->normalizedSuffix:Ljavax/naming/Name;

    .line 71
    iput-object p1, p0, Lorg/apache/ldap/server/ApplicationPartition;->upSuffix:Ljavax/naming/Name;

    return-void
.end method


# virtual methods
.method public getSuffix(Z)Ljavax/naming/Name;
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lorg/apache/ldap/server/ApplicationPartition;->normalizedSuffix:Ljavax/naming/Name;

    return-object p1

    .line 91
    :cond_0
    iget-object p1, p0, Lorg/apache/ldap/server/ApplicationPartition;->upSuffix:Ljavax/naming/Name;

    return-object p1
.end method

.method public isSuffix(Ljavax/naming/Name;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/server/ApplicationPartition;->normalizedSuffix:Ljavax/naming/Name;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
