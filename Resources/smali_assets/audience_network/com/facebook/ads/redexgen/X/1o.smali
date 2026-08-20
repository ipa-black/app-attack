.class public final Lcom/facebook/ads/redexgen/X/1o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ze;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 4800
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SZD1gnuwYC0ZDT5XCpN5wGg04vpvlXtv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "38Pkme0hctlwOycqXgIFmSt4EwGMsPu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PZ5YSJhnqoOlFoXIJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MKZOkal4amZt32sY0duMnYWyMVrdvNv7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PmMqC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MtvBWYcgrX5nN2Ecp9gb0xGXALHF8kJ8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "836OSMulKGxVhnpon"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ud77gBKi5ZcurXFgX0oEk2YfAMQgAhDP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1o;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1o;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1o;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x12

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1o;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x5ft
        0x43t
        0x5at
        0x5bt
        0x67t
        0x60t
        0x7at
        0x6bt
        0x7ct
        0x7dt
        0x7at
        0x67t
        0x7at
        0x67t
        0x6ft
        0x62t
        0x3t
        0x14t
        0x6t
        0x10t
        0x3t
        0x15t
        0x14t
        0x15t
        0x2et
        0x7t
        0x18t
        0x15t
        0x14t
        0x1et
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Eu;)V
    .locals 12

    .line 4802
    new-instance v3, Lcom/facebook/ads/redexgen/X/6K;

    .line 4803
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/Om;->A04:I

    sget v6, Lcom/facebook/ads/redexgen/X/Om;->A04:I

    .line 4804
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4805
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/6M;->A0c(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 4806
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v6

    .line 4807
    .local v0, "isDSL":Z
    if-eqz v6, :cond_0

    .line 4808
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0H()Ljava/lang/String;

    move-result-object v5

    .line 4809
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/6I;

    invoke-direct {v3, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/6I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4810
    .local v1, "cacheFileData":Lcom/facebook/ads/redexgen/X/6I;
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/6I;->A04:Z

    .line 4811
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/6I;->A03:Ljava/lang/String;

    .line 4812
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/6M;->A0X(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4813
    .end local v1    # "cacheFileData":Lcom/facebook/ads/redexgen/X/6I;
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pu;->A03()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/IK;->A2G(Landroid/content/Context;Z)Z

    move-result v3

    .line 4814
    .local v1, "useExoPlayerCacheForDSL":Z
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v8

    .line 4815
    .local v2, "videoUrlToCache":Ljava/lang/String;
    new-instance v7, Lcom/facebook/ads/redexgen/X/6I;

    .line 4816
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v9

    .line 4817
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A05()J

    move-result-wide v11

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/6I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4818
    .local v3, "fileData":Lcom/facebook/ads/redexgen/X/6I;
    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 4819
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/6M;->A0X(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4820
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/6K;

    .line 4821
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v4

    .line 4822
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1j;->A00(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v5

    .line 4823
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1j;->A01(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v6

    .line 4824
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4825
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/6M;->A0c(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 4826
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A01()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4827
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/6K;

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 4828
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4829
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/6M;->A0c(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 4830
    .end local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 4831
    :cond_1
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/6M;->A0a(Lcom/facebook/ads/redexgen/X/6I;)V

    goto :goto_0

    .line 4832
    :cond_2
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Eu;)V
    .locals 13

    .line 4833
    const/4 v7, 0x0

    .line 4834
    .local v0, "i":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1C;

    .line 4835
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    new-instance v8, Lcom/facebook/ads/redexgen/X/6K;

    .line 4836
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v9

    .line 4837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1j;->A00(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v10

    .line 4838
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1j;->A01(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v11

    .line 4839
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x5

    const/16 v2, 0xc

    const/16 v1, 0x1c

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4840
    .local v3, "imageData":Lcom/facebook/ads/redexgen/X/6K;
    if-nez v7, :cond_3

    .line 4841
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/6M;->A0b(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 4842
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1N;->A01()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/1o;->A01:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/1o;->A01:[Ljava/lang/String;

    const-string v2, "d4OGgqInyGax2uUwuJ6rocUy9OK0g6RJ"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "8ZRzgNChvbJeQD0ONiajCC1PQNrhJWUQ"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4843
    .local v5, "endCardUrl":Ljava/lang/String;
    new-instance v8, Lcom/facebook/ads/redexgen/X/6K;

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 4844
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x5

    const/16 v2, 0xc

    const/16 v1, 0x1c

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4845
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/6M;->A0c(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 4846
    .end local v5    # "endCardUrl":Ljava/lang/String;
    goto :goto_2

    .line 4847
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4848
    new-instance v8, Lcom/facebook/ads/redexgen/X/6I;

    .line 4849
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v9

    .line 4850
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v10

    .line 4851
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A05()J

    move-result-wide v12

    const/4 v2, 0x5

    const/16 v1, 0xc

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/6I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4852
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/6I;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/facebook/ads/redexgen/X/6I;->A04:Z

    .line 4853
    .end local v4    # "fileData":Lcom/facebook/ads/redexgen/X/6I;
    .end local v2    # "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    .end local v3    # "imageData":Lcom/facebook/ads/redexgen/X/6K;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 4854
    goto/16 :goto_0

    .line 4855
    :cond_3
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/6M;->A0c(Lcom/facebook/ads/redexgen/X/6K;)V

    goto/16 :goto_1

    .line 4856
    :cond_4
    return-void
.end method
