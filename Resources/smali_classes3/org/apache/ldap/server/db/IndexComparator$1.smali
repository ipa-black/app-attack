.class final Lorg/apache/ldap/server/db/IndexComparator$1;
.super Lorg/apache/ldap/server/schema/SerializableComparator;
.source "IndexComparator.java"


# static fields
.field private static final serialVersionUID:J = 0x3337363736383738L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/schema/SerializableComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/ldap/common/util/BigIntegerComparator;->INSTANCE:Lorg/apache/ldap/common/util/BigIntegerComparator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/common/util/BigIntegerComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
