.class public abstract Lcom/facebook/ads/redexgen/X/Us;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/G7;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:[J

.field public final A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A03:I

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

.field public final A05:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58032
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EBmdqLWecJMvF32HHOtKZq3CgXIvE452"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BdAZUE9bv2aYbX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "p2jaFpqqtq7wiSmM9WukcsLyXw4b4dtx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vopxokSVw1ySmQXekO1RjBQd7v2xLqd9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VPvZphdKETm07yfZNyzcurZ6EUXJ9z1S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4goZxeGj3kqt5M"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Us;->A06:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)V
    .locals 3

    .line 58033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58034
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 58035
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    .line 58036
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:I

    .line 58037
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 58038
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_1

    .line 58039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget v0, p2, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    aput-object v0, v1, v2

    .line 58040
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58041
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58042
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/G7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/G7;-><init>(Lcom/facebook/ads/redexgen/X/G6;)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 58043
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    .line 58044
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:I

    if-ge v2, v0, :cond_2

    .line 58045
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    aput v0, v1, v2

    .line 58046
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58047
    .end local v0    # "i":I
    :cond_2
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A01:[J

    .line 58048
    return-void
.end method


# virtual methods
.method public final A00(IJ)Z
    .locals 3

    .line 58049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A01:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A5C()V
    .locals 0

    .line 58050
    return-void
.end method

.method public final A6o(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 1

    .line 58051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A6u(I)I
    .locals 1

    .line 58052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A7b()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 2

    .line 58053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Us;->A7c()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A7s()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;
    .locals 1

    .line 58054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    return-object v0
.end method

.method public AC2(F)V
    .locals 0

    .line 58055
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58056
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 58057
    return v6

    .line 58058
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Us;->A06:[Ljava/lang/String;

    const-string v1, "DltTTItYFp9j4gBSYKna0NySMwUM0opE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    .line 58059
    .end local v2
    :cond_1
    return v5

    .line 58060
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Us;

    .line 58061
    .local v2, "other":Lcom/facebook/ads/redexgen/X/Us;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Us;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    .line 58062
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:I

    if-nez v0, :cond_0

    .line 58063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:I

    .line 58064
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Us;->A06:[Ljava/lang/String;

    const-string v1, "bVwK8O26HvXVwTm7sFYRRd9zYTspDJxL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final length()I
    .locals 1

    .line 58065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:[I

    array-length v0, v0

    return v0
.end method
