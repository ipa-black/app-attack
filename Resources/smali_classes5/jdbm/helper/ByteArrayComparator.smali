.class public final Ljdbm/helper/ByteArrayComparator;
.super Ljava/lang/Object;
.source "ByteArrayComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByteArray([B[B)I
    .locals 7

    .line 95
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_6

    .line 99
    aget-byte v5, p0, v2

    if-ltz v5, :cond_2

    .line 100
    aget-byte v6, p1, v2

    if-ltz v6, :cond_1

    if-ge v5, v6, :cond_0

    return v3

    :cond_0
    if-le v5, v6, :cond_5

    return v4

    :cond_1
    return v3

    .line 112
    :cond_2
    aget-byte v6, p1, v2

    if-ltz v6, :cond_3

    return v4

    :cond_3
    if-ge v5, v6, :cond_4

    return v3

    :cond_4
    if-le v5, v6, :cond_5

    return v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_6
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_7

    return v1

    .line 128
    :cond_7
    array-length p0, p0

    array-length p1, p1

    if-ge p0, p1, :cond_8

    return v3

    :cond_8
    return v4
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 86
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Ljdbm/helper/ByteArrayComparator;->compareByteArray([B[B)I

    move-result p1

    return p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'obj2\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'obj1\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
