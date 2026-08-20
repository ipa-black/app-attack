.class public final Lcom/facebook/ads/redexgen/X/V0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FR;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:[J

.field public final A01:[Lcom/facebook/ads/redexgen/X/FQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58187
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rC2J7AwmmaBlZB1ox11LDA9ZAB6fxVsC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FZKyzMmy9TivpD2nKj9z4jyUnxaUeLwM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SgCjuagBwk99AmsF9yO8OoMMvubs4clZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SMyqq5yIGtEsHah"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZWugu9oJugVg9n7ZMlc8zaFASnxpD2Hj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "S8p9iTCEp8NZOaZR39SQR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XhPs2dbFqyZTAL6Xfbqo6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a7gb9qnnbjI1KAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V0;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/FQ;[J)V
    .locals 0

    .line 58188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58189
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:[Lcom/facebook/ads/redexgen/X/FQ;

    .line 58190
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    .line 58191
    return-void
.end method


# virtual methods
.method public final A6H(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation

    .line 58192
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0B([JJZZ)I

    move-result v4

    .line 58193
    .local v0, "index":I
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:[Lcom/facebook/ads/redexgen/X/FQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A02:[Ljava/lang/String;

    const-string v1, "utRrKVvY3UrlqyIa0tu41Z4MJfpwxdGA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-object v0, v3, v4

    if-nez v0, :cond_2

    .line 58194
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 58195
    :cond_2
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6i(I)J
    .locals 2

    .line 58196
    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 58197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 58198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 58199
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 58200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6j()I
    .locals 1

    .line 58201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    array-length v0, v0

    return v0
.end method

.method public final A7A(J)I
    .locals 2

    .line 58202
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0A([JJZZ)I

    move-result v1

    .line 58203
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
