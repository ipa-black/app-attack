.class public Lorg/apache/ldap/common/util/BigIntegerComparator;
.super Ljava/lang/Object;
.source "BigIntegerComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/util/BigIntegerComparator;

.field static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/ldap/common/util/BigIntegerComparator;

    invoke-direct {v0}, Lorg/apache/ldap/common/util/BigIntegerComparator;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/util/BigIntegerComparator;->INSTANCE:Lorg/apache/ldap/common/util/BigIntegerComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 71
    check-cast p1, Ljava/math/BigInteger;

    .line 72
    check-cast p2, Ljava/math/BigInteger;

    .line 73
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'an_obj2\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'an_obj1\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
