.class public Lorg/apache/ldap/server/db/KeyOnlyComparator;
.super Ljava/lang/Object;
.source "KeyOnlyComparator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/TupleComparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3132373337363735L


# instance fields
.field private keyComparator:Lorg/apache/ldap/server/schema/SerializableComparator;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/SerializableComparator;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ldap/server/db/KeyOnlyComparator;->keyComparator:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-void
.end method


# virtual methods
.method public compareKey(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/db/KeyOnlyComparator;->keyComparator:Lorg/apache/ldap/server/schema/SerializableComparator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/schema/SerializableComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public compareValue(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getKeyComparator()Lorg/apache/ldap/server/schema/SerializableComparator;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/ldap/server/db/KeyOnlyComparator;->keyComparator:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-object v0
.end method

.method public getValueComparator()Lorg/apache/ldap/server/schema/SerializableComparator;
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
