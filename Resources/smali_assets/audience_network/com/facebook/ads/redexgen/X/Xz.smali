.class public final Lcom/facebook/ads/redexgen/X/Xz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Y0;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5W;

.field public A01:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xz;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5W;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 0

    .line 67160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67161
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/5W;

    .line 67162
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xz;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67163
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xz;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 67164
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;
    .locals 0

    .line 67165
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/5W;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 67166
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xz;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xz;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x34t
        0x21t
        0x3ct
        0x23t
        0x30t
        0x64t
        0x7ft
        0x7at
        0x7ft
        0x7et
        0x66t
        0x7ft
    .end array-data
.end method


# virtual methods
.method public final AAv(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 1

    .line 67167
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Y2;-><init>(Lcom/facebook/ads/redexgen/X/Xz;Lcom/facebook/ads/redexgen/X/JA;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 67168
    return-void
.end method

.method public final ABq(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/a7;",
            ">;)V"
        }
    .end annotation

    .line 67169
    .local v12, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xz;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 67170
    .local v0, "manager":Lcom/facebook/ads/redexgen/X/6M;
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/16 v1, 0x46

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Xz;->A02(III)Ljava/lang/String;

    move-result-object v1

    .line 67171
    .local v1, "firstRequestId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/a7;

    .line 67172
    .local v3, "nativeAdapter":Lcom/facebook/ads/redexgen/X/a7;
    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x46

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Xz;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67173
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0G()Ljava/lang/String;

    move-result-object v1

    .line 67174
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xz;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67175
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0G()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 67176
    new-instance v7, Lcom/facebook/ads/redexgen/X/6K;

    .line 67177
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0G()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 67178
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0G()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Iy;->getHeight()I

    move-result v9

    .line 67179
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0G()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Iy;->getWidth()I

    move-result v10

    .line 67180
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0G()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Xz;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 67181
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/6M;->A0b(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 67182
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0F()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 67183
    new-instance v7, Lcom/facebook/ads/redexgen/X/6K;

    .line 67184
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0F()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 67185
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0F()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Iy;->getHeight()I

    move-result v9

    .line 67186
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0F()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Iy;->getWidth()I

    move-result v10

    .line 67187
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0G()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Xz;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 67188
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/6M;->A0b(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 67189
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67190
    new-instance v7, Lcom/facebook/ads/redexgen/X/6I;

    .line 67191
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/11;->A0d()Ljava/lang/String;

    move-result-object v8

    .line 67192
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0G()Ljava/lang/String;

    move-result-object v9

    .line 67193
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/a7;->A0E()Lcom/facebook/ads/redexgen/X/11;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/11;->A0A()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Xz;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/6I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 67194
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/6M;->A0a(Lcom/facebook/ads/redexgen/X/6I;)V

    goto/16 :goto_0

    .line 67195
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/Y0;

    invoke-direct {v5, p0, p1}, Lcom/facebook/ads/redexgen/X/Y0;-><init>(Lcom/facebook/ads/redexgen/X/Xz;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Xz;->A02(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/6M;->A0W(Lcom/facebook/ads/redexgen/X/6E;Lcom/facebook/ads/redexgen/X/6F;)V

    .line 67196
    return-void
.end method
