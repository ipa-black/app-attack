.class public Lorg/apache/ldap/server/db/IndexComparator;
.super Ljava/lang/Object;
.source "IndexComparator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/TupleComparator;


# static fields
.field private static final BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

.field private static final serialVersionUID:J = 0x2d34323237343633L


# instance fields
.field private final isForwardMap:Z

.field private final keyComp:Lorg/apache/ldap/server/schema/SerializableComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/apache/ldap/server/db/IndexComparator$1;

    const-string v1, "1.2.6.1.4.1.18060.1.1.1.2.2"

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/IndexComparator$1;-><init>(Ljava/lang/String;)V

    .line 34
    sput-object v0, Lorg/apache/ldap/server/db/IndexComparator;->BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/schema/SerializableComparator;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexComparator;->keyComp:Lorg/apache/ldap/server/schema/SerializableComparator;

    .line 60
    iput-boolean p2, p0, Lorg/apache/ldap/server/db/IndexComparator;->isForwardMap:Z

    return-void
.end method


# virtual methods
.method public compareKey(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/IndexComparator;->getKeyComparator()Lorg/apache/ldap/server/schema/SerializableComparator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/schema/SerializableComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public compareValue(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/IndexComparator;->getValueComparator()Lorg/apache/ldap/server/schema/SerializableComparator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/schema/SerializableComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getKeyComparator()Lorg/apache/ldap/server/schema/SerializableComparator;
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/IndexComparator;->isForwardMap:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexComparator;->keyComp:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lorg/apache/ldap/server/db/IndexComparator;->BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-object v0
.end method

.method public getValueComparator()Lorg/apache/ldap/server/schema/SerializableComparator;
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/IndexComparator;->isForwardMap:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lorg/apache/ldap/server/db/IndexComparator;->BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexComparator;->keyComp:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-object v0
.end method
