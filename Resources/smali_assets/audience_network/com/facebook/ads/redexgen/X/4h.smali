.class public final Lcom/facebook/ads/redexgen/X/4h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4g;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            ">;"
        }
    .end annotation
.end field

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4p;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A08:Lcom/facebook/ads/redexgen/X/E9;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 12225
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ulA9tMpXJ0Fgz3L6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kmBp6JcSqPlb9eogqvbvj6g5ppHVaWSS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "klPqAM4BpBJNr6xIOjiQhoS6UO4TrOHS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7VyM9GgXJuu8YzSYQI3HrMroeBYRJajD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jF2bnw6E6wYHKm8plX11kYiLrSAbSJmD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6pBnRch9VxXRPJwtqH0gd323b09mKXXU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Clk2oRExhn8z5HC1wWkAqM8aEwWEfAA8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Myq33IQdIYqIzBMhSJhfspyke76FBM0c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4h;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 1

    .line 12226
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    .line 12228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    .line 12229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    .line 12230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    .line 12231
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A07:Ljava/util/List;

    .line 12232
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A03:I

    .line 12233
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:I

    return-void
.end method

.method private final A00(IZ)Landroid/view/View;
    .locals 2

    .line 12234
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A0I(IZJ)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    return-object v0
.end method

.method private final A01(I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 10

    .line 12235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v2, "changedScrapSize":I
    if-nez v8, :cond_1

    .line 12236
    .end local v2    # "changedScrapSize":I
    :cond_0
    return-object v9

    .line 12237
    :cond_1
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x20

    if-ge v2, v8, :cond_3

    .line 12238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12239
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 12240
    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12241
    return-object v1

    .line 12242
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12243
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0A()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A00:Lcom/facebook/ads/redexgen/X/Yg;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A0D(I)I

    move-result v1

    .line 12245
    .local v0, "offsetPosition":I
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 12246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4N;->A04(I)J

    move-result-wide v5

    .line 12247
    .local v4, "id":J
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 12248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4r;

    .line 12249
    .local v7, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0K()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    .line 12250
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12251
    return-object v3

    .line 12252
    .end local v7    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12253
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_5
    return-object v9
.end method

.method private final A02(IZ)Lcom/facebook/ads/redexgen/X/4r;
    .locals 5

    .line 12254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12255
    .local v0, "scrapCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 12256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12257
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 12258
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4o;->A09:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12259
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12260
    return-object v1

    .line 12261
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12262
    .end local v1    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 12263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A08(I)Landroid/view/View;

    move-result-object v2

    .line 12264
    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 12265
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v4

    .line 12266
    .local v2, "vh":Lcom/facebook/ads/redexgen/X/4r;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3x;->A0G(Landroid/view/View;)V

    .line 12267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3x;->A07(Landroid/view/View;)I

    move-result v1

    .line 12268
    .local v3, "layoutIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 12269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3x;->A0C(I)V

    .line 12270
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4h;->A0W(Landroid/view/View;)V

    .line 12271
    const/16 v0, 0x2020

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12272
    return-object v4

    .line 12273
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d7

    const/16 v1, 0x34

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12274
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12275
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "vh":Lcom/facebook/ads/redexgen/X/4r;
    .end local v3    # "layoutIndex":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12276
    .local v1, "cacheSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 12277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12278
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 12279
    if-nez p2, :cond_5

    .line 12280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12281
    :cond_5
    return-object v1

    .line 12282
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12283
    .end local v2    # "i":I
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A03(JIZ)Lcom/facebook/ads/redexgen/X/4r;
    .locals 7

    .line 12284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12285
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 12286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4r;

    .line 12287
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0K()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12288
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0H()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 12289
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12290
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12291
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_8

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12292
    :cond_0
    if-nez p4, :cond_1

    .line 12293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12294
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->removeDetachedView(Landroid/view/View;Z)V

    .line 12295
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4h;->A0V(Landroid/view/View;)V

    .line 12296
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 12297
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12298
    .local v1, "cacheSize":I
    add-int/lit8 v4, v0, -0x1

    .local v2, "i":I
    :goto_2
    const/4 v6, 0x0

    if-ltz v4, :cond_c

    .line 12299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4r;

    .line 12300
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0K()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_7

    .line 12301
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0H()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "lrD7iCy3KBiO8gA6PsFToJiVZrW1xMAl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "amz9CZtibeJcU8bEqG7a4ZYgRNeZgxWk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne p3, v5, :cond_6

    .line 12302
    :goto_3
    if-nez p4, :cond_3

    .line 12303
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "or4YmCu0ppqzW1VFAnuQtpcwvOCNSyKL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "x7G8xrEgau2heO3LEdjWfX9qC3RDyC0d"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12304
    :cond_3
    :goto_4
    return-object v3

    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "kYzWBiiTSiU3KogqfJ4EJctPAodLTQqF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kIBKgO4naDZyukeXVXxcwMENrZxoY36q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p3, v5, :cond_6

    goto :goto_3

    .line 12305
    :cond_6
    if-nez p4, :cond_7

    .line 12306
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4h;->A07(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    goto/16 :goto_1

    .line 12307
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "q3aWXTgT7NsVf007"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_9

    .line 12308
    const/4 v5, 0x2

    const/16 v4, 0xe

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "NC6bFXUosLdTEwJsXrsHGkbXBsQUMG7q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/4r;->A0U(II)V

    .line 12309
    :cond_9
    :goto_5
    return-object v3

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "kBSMDIkt47Rx4hHhTamY1xnSrMWRxYxp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kToZLwND7zKVFlbtf8XZb6UwHA5zPLAu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/4r;->A0U(II)V

    goto :goto_5

    .line 12310
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "2lrbY7WLbUziAPe6QkcwvBQ2VEr9QFta"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v6

    .line 12311
    .end local v2    # "i":I
    :cond_c
    return-object v6
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x319

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4h;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x5bt
        -0x12t
        -0x8t
        -0x3at
        -0x7t
        -0x7t
        -0x1at
        -0x18t
        -0x13t
        -0x16t
        -0x17t
        -0x41t
        -0x3bt
        -0x20t
        0x27t
        0x1et
        0x1et
        0x2bt
        0x1dt
        0x2ct
        -0xet
        -0x35t
        -0x30t
        -0x3et
        -0x15t
        0x16t
        0x7t
        0xft
        -0x3et
        0x5t
        0x11t
        0x17t
        0x10t
        0x16t
        -0x24t
        -0x26t
        -0x21t
        0x24t
        0x25t
        0x12t
        0x25t
        0x16t
        -0x15t
        -0x63t
        -0x45t
        -0x3at
        -0x3at
        -0x41t
        -0x42t
        0x7at
        -0x33t
        -0x43t
        -0x34t
        -0x45t
        -0x36t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        0x7at
        -0x2ft
        -0x3dt
        -0x32t
        -0x3et
        0x7at
        -0x45t
        -0x38t
        0x7at
        -0x3dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        -0x78t
        0x7at
        -0x5dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        -0x33t
        0x7at
        -0x43t
        -0x45t
        -0x38t
        -0x38t
        -0x37t
        -0x32t
        0x7at
        -0x44t
        -0x41t
        0x7at
        -0x34t
        -0x41t
        -0x31t
        -0x33t
        -0x41t
        -0x42t
        0x7at
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        0x7at
        -0x33t
        -0x43t
        -0x34t
        -0x45t
        -0x36t
        -0x7at
        0x7at
        -0x32t
        -0x3et
        -0x41t
        -0x2dt
        0x7at
        -0x33t
        -0x3et
        -0x37t
        -0x31t
        -0x3at
        -0x42t
        0x7at
        -0x34t
        -0x41t
        -0x44t
        -0x37t
        -0x31t
        -0x38t
        -0x42t
        0x7at
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        0x7at
        -0x34t
        -0x41t
        -0x43t
        -0x2dt
        -0x43t
        -0x3at
        -0x41t
        -0x34t
        0x7at
        -0x36t
        -0x37t
        -0x37t
        -0x3at
        -0x78t
        -0x7t
        0x1et
        0x13t
        0x1ft
        0x1et
        0x23t
        0x19t
        0x23t
        0x24t
        0x15t
        0x1et
        0x13t
        0x29t
        -0x30t
        0x14t
        0x15t
        0x24t
        0x15t
        0x13t
        0x24t
        0x15t
        0x14t
        -0x22t
        -0x30t
        -0x7t
        0x1et
        0x26t
        0x11t
        0x1ct
        0x19t
        0x14t
        -0x30t
        0x19t
        0x24t
        0x15t
        0x1dt
        -0x30t
        0x20t
        0x1ft
        0x23t
        0x19t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0x30t
        -0xdt
        0x18t
        0xdt
        0x19t
        0x18t
        0x1dt
        0x13t
        0x1dt
        0x1et
        0xft
        0x18t
        0xdt
        0x23t
        -0x36t
        0xet
        0xft
        0x1et
        0xft
        0xdt
        0x1et
        0xft
        0xet
        -0x28t
        -0x36t
        -0xdt
        0x18t
        0x20t
        0xbt
        0x16t
        0x13t
        0xet
        -0x36t
        0x20t
        0x13t
        0xft
        0x21t
        -0x36t
        0x12t
        0x19t
        0x16t
        0xet
        0xft
        0x1ct
        -0x36t
        0xbt
        0xet
        0xbt
        0x1at
        0x1et
        0xft
        0x1ct
        -0x36t
        0x1at
        0x19t
        0x1dt
        0x13t
        0x1et
        0x13t
        0x19t
        0x18t
        -0x7dt
        -0x58t
        -0x50t
        -0x65t
        -0x5at
        -0x5dt
        -0x62t
        0x5at
        -0x5dt
        -0x52t
        -0x61t
        -0x59t
        0x5at
        -0x56t
        -0x57t
        -0x53t
        -0x5dt
        -0x52t
        -0x5dt
        -0x57t
        -0x58t
        0x5at
        -0x3ft
        -0x2ft
        -0x20t
        -0x31t
        -0x22t
        -0x22t
        -0x2dt
        -0x2et
        -0x72t
        -0x23t
        -0x20t
        -0x72t
        -0x31t
        -0x1et
        -0x1et
        -0x31t
        -0x2ft
        -0x2at
        -0x2dt
        -0x2et
        -0x72t
        -0x1ct
        -0x29t
        -0x2dt
        -0x1bt
        -0x1ft
        -0x72t
        -0x25t
        -0x31t
        -0x19t
        -0x72t
        -0x24t
        -0x23t
        -0x1et
        -0x72t
        -0x30t
        -0x2dt
        -0x72t
        -0x20t
        -0x2dt
        -0x2ft
        -0x19t
        -0x2ft
        -0x26t
        -0x2dt
        -0x2et
        -0x64t
        -0x72t
        -0x29t
        -0x1ft
        -0x3ft
        -0x2ft
        -0x20t
        -0x31t
        -0x22t
        -0x58t
        -0x23t
        -0xat
        -0x7t
        -0x57t
        -0x13t
        -0x12t
        -0x3t
        -0x16t
        -0x14t
        -0xft
        -0x12t
        -0x13t
        -0x57t
        -0x1t
        -0xet
        -0x12t
        0x0t
        -0x57t
        -0x4t
        -0xft
        -0x8t
        -0x2t
        -0xbt
        -0x13t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x5t
        -0x12t
        -0xat
        -0x8t
        -0x1t
        -0x12t
        -0x13t
        -0x57t
        -0x11t
        -0x5t
        -0x8t
        -0xat
        -0x57t
        -0x25t
        -0x12t
        -0x14t
        0x2t
        -0x14t
        -0xbt
        -0x12t
        -0x5t
        -0x21t
        -0xet
        -0x12t
        0x0t
        -0x57t
        -0x15t
        -0x12t
        -0x11t
        -0x8t
        -0x5t
        -0x12t
        -0x57t
        -0xet
        -0x3t
        -0x57t
        -0x14t
        -0x16t
        -0x9t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x5t
        -0x12t
        -0x14t
        0x2t
        -0x14t
        -0xbt
        -0x12t
        -0x13t
        -0x3dt
        -0x57t
        -0x66t
        -0x48t
        -0x41t
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x46t
        -0x4bt
        0x66t
        -0x48t
        -0x55t
        -0x57t
        -0x41t
        -0x57t
        -0x4et
        -0x55t
        0x66t
        -0x59t
        -0x4ct
        0x66t
        -0x51t
        -0x53t
        -0x4ct
        -0x4bt
        -0x48t
        -0x55t
        -0x56t
        0x66t
        -0x44t
        -0x51t
        -0x55t
        -0x43t
        0x66t
        -0x52t
        -0x4bt
        -0x4et
        -0x56t
        -0x55t
        -0x48t
        0x74t
        0x66t
        -0x61t
        -0x4bt
        -0x45t
        0x66t
        -0x47t
        -0x52t
        -0x4bt
        -0x45t
        -0x4et
        -0x56t
        0x66t
        -0x54t
        -0x51t
        -0x48t
        -0x47t
        -0x46t
        0x66t
        -0x57t
        -0x59t
        -0x4et
        -0x4et
        0x66t
        -0x47t
        -0x46t
        -0x4bt
        -0x4at
        -0x71t
        -0x53t
        -0x4ct
        -0x4bt
        -0x48t
        -0x51t
        -0x4ct
        -0x53t
        -0x64t
        -0x51t
        -0x55t
        -0x43t
        0x6et
        -0x44t
        -0x51t
        -0x55t
        -0x43t
        0x6ft
        0x66t
        -0x58t
        -0x55t
        -0x54t
        -0x4bt
        -0x48t
        -0x55t
        0x66t
        -0x57t
        -0x59t
        -0x4et
        -0x4et
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x48t
        -0x55t
        -0x57t
        -0x41t
        -0x57t
        -0x4et
        -0x55t
        0x74t
        -0x13t
        -0x15t
        -0x6t
        -0x24t
        -0x11t
        -0x15t
        -0x3t
        -0x34t
        -0xbt
        -0x8t
        -0x2at
        -0xbt
        -0x7t
        -0x11t
        -0x6t
        -0x11t
        -0xbt
        -0xct
        -0x39t
        -0xct
        -0x16t
        -0x26t
        -0x1t
        -0xat
        -0x15t
        -0x5at
        -0x8t
        -0x15t
        -0x6t
        -0x5t
        -0x8t
        -0xct
        -0x15t
        -0x16t
        -0x5at
        -0x19t
        -0x5at
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x5at
        -0x6t
        -0x12t
        -0x19t
        -0x6t
        -0x5at
        -0x11t
        -0x7t
        -0x5at
        -0x11t
        -0x13t
        -0xct
        -0xbt
        -0x8t
        -0x15t
        -0x16t
        -0x4ct
        -0x5at
        -0x21t
        -0xbt
        -0x5t
        -0x5at
        -0xdt
        -0x5t
        -0x7t
        -0x6t
        -0x5at
        -0x17t
        -0x19t
        -0xet
        -0xet
        -0x5at
        -0x7t
        -0x6t
        -0xbt
        -0xat
        -0x31t
        -0x13t
        -0xct
        -0xbt
        -0x8t
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x18t
        -0x15t
        -0x14t
        -0xbt
        -0x8t
        -0x15t
        -0x5at
        -0x8t
        -0x15t
        -0x6t
        -0x5t
        -0x8t
        -0xct
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x6t
        -0x12t
        -0x11t
        -0x7t
        -0x5at
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x4ct
        -0x4et
        -0x50t
        -0x41t
        -0x5ft
        -0x4ct
        -0x50t
        -0x3et
        -0x6ft
        -0x46t
        -0x43t
        -0x65t
        -0x46t
        -0x42t
        -0x4ct
        -0x41t
        -0x4ct
        -0x46t
        -0x47t
        -0x74t
        -0x47t
        -0x51t
        -0x61t
        -0x3ct
        -0x45t
        -0x50t
        0x6bt
        -0x43t
        -0x50t
        -0x41t
        -0x40t
        -0x43t
        -0x47t
        -0x50t
        -0x51t
        0x6bt
        -0x54t
        0x6bt
        -0x3ft
        -0x4ct
        -0x50t
        -0x3et
        0x6bt
        -0x3et
        -0x4dt
        -0x4ct
        -0x52t
        -0x4dt
        0x6bt
        -0x51t
        -0x46t
        -0x50t
        -0x42t
        0x6bt
        -0x47t
        -0x46t
        -0x41t
        0x6bt
        -0x4dt
        -0x54t
        -0x3ft
        -0x50t
        0x6bt
        -0x54t
        0x6bt
        -0x5ft
        -0x4ct
        -0x50t
        -0x3et
        -0x6dt
        -0x46t
        -0x49t
        -0x51t
        -0x50t
        -0x43t
        -0x3ft
        -0x4at
        -0x32t
        -0x3ct
        -0x36t
        -0x37t
        0x75t
        -0x42t
        -0x3dt
        -0x47t
        -0x46t
        -0x33t
        0x75t
        -0x38t
        -0x43t
        -0x3ct
        -0x36t
        -0x3ft
        -0x47t
        0x75t
        -0x3dt
        -0x3ct
        -0x37t
        0x75t
        -0x49t
        -0x46t
        0x75t
        -0x7et
        -0x7at
        0x75t
        -0x4at
        -0x45t
        -0x37t
        -0x46t
        -0x39t
        0x75t
        -0x36t
        -0x3dt
        -0x43t
        -0x42t
        -0x47t
        -0x42t
        -0x3dt
        -0x44t
        0x75t
        -0x4at
        0x75t
        -0x35t
        -0x42t
        -0x46t
        -0x34t
        -0x71t
        -0x19t
        -0x1at
        -0x32t
        -0x1ft
        -0x23t
        -0x11t
        -0x36t
        -0x23t
        -0x25t
        -0xft
        -0x25t
        -0x1ct
        -0x23t
        -0x24t
    .end array-data
.end method

.method private final A06()V
    .locals 1

    .line 12312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12313
    .local v0, "count":I
    add-int/lit8 v0, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 12314
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4h;->A07(I)V

    .line 12315
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12316
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12317
    invoke-static {}, Lcom/facebook/ads/redexgen/X/E9;->A10()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yf;->A02()V

    .line 12319
    :cond_1
    return-void
.end method

.method private final A07(I)V
    .locals 2

    .line 12320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12321
    .local v0, "viewHolder":Lcom/facebook/ads/redexgen/X/4r;
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A0d(Lcom/facebook/ads/redexgen/X/4r;Z)V

    .line 12322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12323
    return-void
.end method

.method private A08(Landroid/view/ViewGroup;Z)V
    .locals 6

    .line 12324
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v4, 0x1

    sub-int/2addr v5, v4

    .local v0, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 12325
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 12326
    .local v2, "view":Landroid/view/View;
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 12327
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "0ZJbYELQTNKw4GYvMFOIJ2JFgvUoupt2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/4h;->A08(Landroid/view/ViewGroup;Z)V

    .line 12328
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12329
    .end local v0    # "i":I
    :cond_2
    if-nez p2, :cond_3

    .line 12330
    return-void

    .line 12331
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 12332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12333
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12334
    .end local v0
    :goto_1
    return-void

    .line 12335
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 12336
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12337
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 2

    .line 12338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12339
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    .line 12340
    .local v0, "itemView":Landroid/view/View;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3E;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 12341
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A09(Landroid/view/View;I)V

    .line 12342
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3E;->A0F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12343
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A09:Lcom/facebook/ads/redexgen/X/YR;

    .line 12345
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YR;->A0A()Lcom/facebook/ads/redexgen/X/2s;

    move-result-object v0

    .line 12346
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2s;)V

    .line 12347
    .end local v0    # "itemView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 2

    .line 12348
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 12349
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A08(Landroid/view/ViewGroup;Z)V

    .line 12350
    :cond_0
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 3

    .line 12351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A07:Lcom/facebook/ads/redexgen/X/4i;

    if-eqz v0, :cond_0

    .line 12352
    const/16 v2, 0x30b

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12353
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    .line 12354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    if-eqz v0, :cond_1

    .line 12355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4z;->A0B(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12356
    :cond_1
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4r;)Z
    .locals 6

    .line 12357
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    return v0

    .line 12359
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    if-ltz v0, :cond_4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 12360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 12361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A03(I)I

    move-result v1

    .line 12362
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0H()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 12363
    return v5

    .line 12364
    .end local v0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0A()Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 12365
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0K()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A04(I)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 12366
    :cond_3
    return v0

    .line 12367
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd3

    const/16 v1, 0x3c

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12368
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/4r;IIJ)Z
    .locals 9

    .line 12369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12370
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0H()I

    move-result v4

    .line 12371
    .local v0, "viewType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getNanoTime()J

    move-result-wide v5

    .line 12372
    .local v7, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    move-wide v7, p4

    cmp-long v0, v7, v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    .line 12373
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "We3abAYlnqMpJzTP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4g;->A0A(IJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12374
    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12375
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4N;->A09(Lcom/facebook/ads/redexgen/X/4r;I)V

    .line 12376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getNanoTime()J

    move-result-wide v0

    .line 12377
    .local v1, "endBindNs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0H()I

    move-result v2

    sub-long/2addr v0, v5

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4g;->A05(IJ)V

    .line 12378
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4h;->A09(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12380
    iput p3, p1, Lcom/facebook/ads/redexgen/X/4r;->A04:I

    .line 12381
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0E()I
    .locals 1

    .line 12382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final A0F(I)Landroid/view/View;
    .locals 1

    .line 12383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    return-object v0
.end method

.method public final A0G(I)Landroid/view/View;
    .locals 1

    .line 12384
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A00(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/4g;
    .locals 1

    .line 12385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    if-nez v0, :cond_0

    .line 12386
    new-instance v0, Lcom/facebook/ads/redexgen/X/4g;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    .line 12387
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    return-object v0
.end method

.method public final A0I(IZJ)Lcom/facebook/ads/redexgen/X/4r;
    .locals 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12388
    move-object/from16 v2, p0

    move-object v2, v2

    move/from16 v13, p1

    if-ltz v13, :cond_1a

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    if-ge v13, v0, :cond_1a

    .line 12389
    const/4 v9, 0x0

    .line 12390
    .local v0, "fromScrapOrHiddenOrCache":Z
    const/4 v11, 0x0

    .line 12391
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/4r;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 12392
    invoke-direct {v2, v13}, Lcom/facebook/ads/redexgen/X/4h;->A01(I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v11

    .line 12393
    if-eqz v11, :cond_9

    const/4 v9, 0x1

    .line 12394
    :cond_0
    :goto_0
    move/from16 v7, p2

    if-nez v11, :cond_3

    .line 12395
    invoke-direct {v2, v13, v7}, Lcom/facebook/ads/redexgen/X/4h;->A02(IZ)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v11

    .line 12396
    if-eqz v11, :cond_3

    .line 12397
    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4h;->A0C(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 12398
    if-nez v7, :cond_2

    .line 12399
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12400
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12401
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/E9;->removeDetachedView(Landroid/view/View;Z)V

    .line 12402
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0S()V

    .line 12403
    :cond_1
    :goto_1
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/4h;->A0b(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12404
    :cond_2
    const/4 v11, 0x0

    .line 12405
    :cond_3
    :goto_2
    move-wide/from16 v14, p3

    if-nez v11, :cond_f

    .line 12406
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A00:Lcom/facebook/ads/redexgen/X/Yg;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/Yg;->A0D(I)I

    move-result v5

    .line 12407
    .local v2, "offsetPosition":I
    if-ltz v5, :cond_c

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    if-ge v5, v0, :cond_c

    .line 12408
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4N;->A03(I)I

    move-result v6

    .line 12409
    .local v3, "type":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12410
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4N;->A04(I)J

    move-result-wide v0

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/4h;->A03(JIZ)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v11

    .line 12411
    if-eqz v11, :cond_4

    .line 12412
    iput v5, v11, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    .line 12413
    const/4 v9, 0x1

    .line 12414
    :cond_4
    if-nez v11, :cond_5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A04:Lcom/facebook/ads/redexgen/X/4p;

    if-eqz v0, :cond_5

    .line 12415
    invoke-virtual {v0, v2, v13, v6}, Lcom/facebook/ads/redexgen/X/4p;->A00(Lcom/facebook/ads/redexgen/X/4h;II)Landroid/view/View;

    move-result-object v1

    .line 12416
    .local v4, "view":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 12417
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E9;->A1H(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v11

    .line 12418
    if-eqz v11, :cond_b

    .line 12419
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-nez v0, :cond_a

    .line 12420
    .end local v4    # "view":Landroid/view/View;
    :cond_5
    if-nez v11, :cond_6

    .line 12421
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4h;->A0H()Lcom/facebook/ads/redexgen/X/4g;

    move-result-object v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_15

    sget-object v5, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "3K2bfdY4Lns5cH4Uqi6qZhk44zURNmgZ"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4g;->A03(I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v11

    .line 12422
    if-eqz v11, :cond_6

    .line 12423
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0Q()V

    .line 12424
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/E9;->A1C:Z

    if-eqz v0, :cond_6

    .line 12425
    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4h;->A0A(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12426
    :cond_6
    if-nez v11, :cond_f

    .line 12427
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getNanoTime()J

    move-result-wide v18

    .line 12428
    .local v4, "start":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v14, v7

    if-eqz v0, :cond_d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    .line 12429
    move/from16 v17, v6

    move-wide/from16 v20, v14

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/4g;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 12430
    const/4 v0, 0x0

    return-object v0

    .line 12431
    :cond_7
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12432
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0O()V

    goto/16 :goto_1

    .line 12433
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 12434
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 12435
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21c

    const/16 v1, 0x71

    const/16 v0, 0x4c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12436
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12437
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28d

    const/16 v1, 0x4a

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12438
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12439
    .end local v3    # "type":I
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa5

    const/16 v1, 0x2e

    const/16 v0, 0x76

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    .line 12440
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12441
    :cond_d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    sget-object v8, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v8, v0

    const/4 v0, 0x3

    aget-object v8, v8, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_19

    sget-object v8, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "ofPrqBOY4KV1O5mmTOXtQojU6rRVoJMb"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const-string v1, "dfUBDtyf096LhSCdUEMmmzbvfUZbBbNe"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    invoke-virtual {v7, v5, v6}, Lcom/facebook/ads/redexgen/X/4N;->A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v11

    .line 12442
    invoke-static {}, Lcom/facebook/ads/redexgen/X/E9;->A10()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12443
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E9;->A0H(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/E9;

    move-result-object v1

    .line 12444
    .local v11, "innerView":Lcom/facebook/ads/redexgen/X/E9;
    if-eqz v1, :cond_e

    .line 12445
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A09:Ljava/lang/ref/WeakReference;

    .line 12446
    .end local v11    # "innerView":Lcom/facebook/ads/redexgen/X/E9;
    :cond_e
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getNanoTime()J

    move-result-wide v0

    .line 12447
    .local v11, "end":J
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    sub-long v0, v0, v18

    invoke-virtual {v5, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4g;->A06(IJ)V

    .line 12448
    .end local v0    # "fromScrapOrHiddenOrCache":Z
    .end local v1    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    .local v11, "fromScrapOrHiddenOrCache":Z
    .local v12, "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_f
    if-eqz v9, :cond_10

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_10

    .line 12449
    const/16 v1, 0x2000

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4r;->A0k(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 12450
    invoke-virtual {v11, v4, v1}, Lcom/facebook/ads/redexgen/X/4r;->A0U(II)V

    .line 12451
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4o;->A0C:Z

    if-eqz v0, :cond_10

    .line 12452
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/4V;->A00(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    .line 12453
    .local v0, "changeFlags":I
    or-int/lit16 v5, v0, 0x1000

    .line 12454
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/E9;->A05:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    .line 12455
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0L()Ljava/util/List;

    move-result-object v0

    .line 12456
    invoke-virtual {v4, v1, v11, v5, v0}, Lcom/facebook/ads/redexgen/X/4V;->A09(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4r;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/4U;

    move-result-object v1

    .line 12457
    .local v1, "info":Lcom/facebook/ads/redexgen/X/4U;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v11, v1}, Lcom/facebook/ads/redexgen/X/E9;->A1n(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;)V

    .line 12458
    .end local v0    # "changeFlags":I
    .end local v1    # "info":Lcom/facebook/ads/redexgen/X/4U;
    :cond_10
    const/4 v5, 0x0

    .line 12459
    .local v13, "bound":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 12460
    iput v13, v11, Lcom/facebook/ads/redexgen/X/4r;->A04:I

    .line 12461
    .end local v14
    :cond_11
    :goto_3
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 12462
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_13

    .line 12463
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4a;

    .line 12464
    .local v1, "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12465
    .restart local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4a;
    :goto_4
    iput-object v11, v4, Lcom/facebook/ads/redexgen/X/4a;->A00:Lcom/facebook/ads/redexgen/X/4r;

    .line 12466
    if-eqz v9, :cond_12

    if-eqz v5, :cond_12

    :goto_5
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4a;->A02:Z

    .line 12467
    return-object v11

    .line 12468
    :cond_12
    const/4 v3, 0x0

    goto :goto_5

    .line 12469
    .end local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4a;
    :cond_13
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/E9;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 12470
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/E9;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4a;

    .line 12471
    .restart local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 12472
    .end local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4a;
    :cond_14
    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_16

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "WeHbAL2DpvJL4iRMn0O7hIhaGbvumhB7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/4a;

    goto :goto_4

    .line 12473
    :cond_17
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0g()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12474
    :cond_18
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A00:Lcom/facebook/ads/redexgen/X/Yg;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/Yg;->A0D(I)I

    move-result v12

    .line 12475
    .local v14, "offsetPosition":I
    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/4h;->A0D(Lcom/facebook/ads/redexgen/X/4r;IIJ)Z

    move-result v5

    goto :goto_3

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12476
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1
    .end local v11    # "fromScrapOrHiddenOrCache":Z
    .end local v12    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    .end local v13    # "bound":Z
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10f

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    .line 12477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12478
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            ">;"
        }
    .end annotation

    .line 12479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A07:Ljava/util/List;

    return-object v0
.end method

.method public final A0K()V
    .locals 4

    .line 12480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12481
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 12482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    .line 12483
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A0M()V

    .line 12484
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12485
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12486
    .local v1, "scrapCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 12487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A0M()V

    .line 12488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12489
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "w7WcMXH384MQxArKBWq9tfOfmOANhXYh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ji6HgViVTGyvfONq8Vqt8Uaju4D1iJHU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 12490
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12491
    .local v2, "changedScrapCount":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 12492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A0M()V

    .line 12493
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12494
    .end local v2    # "changedScrapCount":I
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public final A0L()V
    .locals 1

    .line 12495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 12497
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12498
    :cond_0
    return-void
.end method

.method public final A0M()V
    .locals 4

    .line 12499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12500
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 12501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    .line 12502
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4r;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4a;

    .line 12503
    .local v3, "layoutParams":Lcom/facebook/ads/redexgen/X/4a;
    if-eqz v1, :cond_0

    .line 12504
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4a;->A01:Z

    .line 12505
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    .end local v3    # "layoutParams":Lcom/facebook/ads/redexgen/X/4a;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12506
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0N()V
    .locals 6

    .line 12507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 12509
    .local v0, "cachedCount":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 12510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4r;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12511
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "kx9etu5Uswf3mlSSd54JM5SDJxoMGNTv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kxxNK4Rys8aPJuu822sP3fs8sDM7v1G0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 12512
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12513
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0Y(Ljava/lang/Object;)V

    .line 12514
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12515
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4h;->A06()V

    .line 12516
    :cond_3
    return-void
.end method

.method public final A0O()V
    .locals 5

    .line 12517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "kSelswvDf1EbxUzrii1mBr6dHJR0d4zj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kcuGN1lunmBh6z5P1vsNJWvgiUTpOK0Q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v1, v3, Lcom/facebook/ads/redexgen/X/4Z;->A00:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 12518
    .local v0, "extraCache":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:I

    .line 12519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 12520
    .local v1, "i":I
    :goto_2
    if-ltz v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "kpxxdOz3cEfo3MLV8RPQuR2Jasv2n6jF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kgO1H2GjmHeLX2ZusVi9gFRUJKE1zGI0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:I

    if-le v3, v0, :cond_3

    .line 12521
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4h;->A07(I)V

    .line 12522
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 12523
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public final A0P()V
    .locals 1

    .line 12524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12525
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4h;->A06()V

    .line 12526
    return-void
.end method

.method public final A0Q(I)V
    .locals 0

    .line 12527
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4h;->A03:I

    .line 12528
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4h;->A0O()V

    .line 12529
    return-void
.end method

.method public final A0R(II)V
    .locals 4

    .line 12530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12531
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 12532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12533
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4r;
    if-eqz v1, :cond_0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    if-lt v0, p1, :cond_0

    .line 12534
    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0W(IZ)V

    .line 12535
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12536
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0S(II)V
    .locals 10

    .line 12537
    if-ge p1, p2, :cond_3

    .line 12538
    move v8, p1

    .line 12539
    .local v0, "start":I
    move v7, p2

    .line 12540
    .local v1, "end":I
    const/4 v6, -0x1

    .line 12541
    .local v2, "inBetweenOffset":I
    .restart local v2    # "inBetweenOffset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 12542
    .local v3, "cachedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 12543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4r;

    .line 12544
    .local v5, "holder":Lcom/facebook/ads/redexgen/X/4r;
    if-eqz v3, :cond_0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    if-lt v0, v8, :cond_0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    if-le v0, v7, :cond_1

    .line 12545
    .end local v5    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12546
    :cond_1
    iget v9, v3, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "kvvW4F2OCwdEIl1qwIuxYVFpmp0ugJY5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kzcCp2wTfEGQm2KGuN32b5oIYABnQWPG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x0

    if-ne v9, p1, :cond_2

    .line 12547
    sub-int v0, p2, p1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4r;->A0W(IZ)V

    goto :goto_2

    .line 12548
    :cond_2
    invoke-virtual {v3, v6, v1}, Lcom/facebook/ads/redexgen/X/4r;->A0W(IZ)V

    goto :goto_2

    .line 12549
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "inBetweenOffset":I
    :cond_3
    move v8, p2

    .line 12550
    .restart local v0    # "start":I
    move v7, p1

    .line 12551
    .restart local v1    # "end":I
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12552
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method public final A0T(II)V
    .locals 4

    .line 12553
    add-int v3, p1, p2

    .line 12554
    .local v0, "positionEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12555
    .local v1, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 12556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12557
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4r;
    if-nez v1, :cond_1

    .line 12558
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4h;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 12559
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    .line 12560
    .local p0, "pos":I
    if-lt v0, p1, :cond_0

    if-ge v0, v3, :cond_0

    .line 12561
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12562
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4h;->A07(I)V

    goto :goto_1

    .line 12563
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final A0U(IIZ)V
    .locals 4

    .line 12564
    add-int v3, p1, p2

    .line 12565
    .local v0, "removedEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12566
    .local v1, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 12567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4r;

    .line 12568
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4r;
    if-eqz v1, :cond_0

    .line 12569
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    if-lt v0, v3, :cond_1

    .line 12570
    neg-int v0, p2

    invoke-virtual {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/4r;->A0W(IZ)V

    .line 12571
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 12572
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    if-lt v0, p1, :cond_0

    .line 12573
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0T(I)V

    .line 12574
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4h;->A07(I)V

    goto :goto_1

    .line 12575
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final A0V(Landroid/view/View;)V
    .locals 2

    .line 12576
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v1

    .line 12577
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4r;
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A01(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4h;)Lcom/facebook/ads/redexgen/X/4h;

    .line 12578
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0F(Lcom/facebook/ads/redexgen/X/4r;Z)Z

    .line 12579
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0O()V

    .line 12580
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A0b(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12581
    return-void
.end method

.method public final A0W(Landroid/view/View;)V
    .locals 5

    .line 12582
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v2

    .line 12583
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4r;
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0k(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12584
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/E9;->A21(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12585
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "cscHAR4ImnAFzAxZJ9yqjMNa91RcN8Vb"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "pspTzLDNU823NSI2ymIgIumCpfqVQlal"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12586
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0X(Lcom/facebook/ads/redexgen/X/4h;Z)V

    .line 12587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12588
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x7a

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12589
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12590
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 12591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    .line 12592
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v2, p0, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0X(Lcom/facebook/ads/redexgen/X/4h;Z)V

    .line 12593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12594
    :goto_0
    return-void
.end method

.method public final A0X(Landroid/view/View;)V
    .locals 3

    .line 12595
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v2

    .line 12596
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/E9;->removeDetachedView(Landroid/view/View;Z)V

    .line 12598
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12599
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0S()V

    .line 12600
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4h;->A0b(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12601
    return-void

    .line 12602
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12603
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0O()V

    goto :goto_0
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/4N;Lcom/facebook/ads/redexgen/X/4N;Z)V
    .locals 1

    .line 12604
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4h;->A0P()V

    .line 12605
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4h;->A0H()Lcom/facebook/ads/redexgen/X/4g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4g;->A08(Lcom/facebook/ads/redexgen/X/4N;Lcom/facebook/ads/redexgen/X/4N;Z)V

    .line 12606
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/4g;)V
    .locals 2

    .line 12607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    if-eqz v0, :cond_0

    .line 12608
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4g;->A04()V

    .line 12609
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    .line 12610
    if-eqz p1, :cond_1

    .line 12611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4h;->A01:Lcom/facebook/ads/redexgen/X/4g;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 12612
    :cond_1
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/4p;)V
    .locals 0

    .line 12613
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4h;->A04:Lcom/facebook/ads/redexgen/X/4p;

    .line 12614
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 9

    .line 12615
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0d()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12616
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x38

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12617
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0d()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    .line 12618
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12619
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0e()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "QZZbfikyhDCMiV1imXgamooHNWBI4VfH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_f

    .line 12620
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-nez v0, :cond_e

    .line 12621
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0E(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v8

    .line 12622
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    .line 12623
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4N;->A0B(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 12624
    .local v3, "forceRecycle":Z
    :goto_0
    const/4 v7, 0x0

    .line 12625
    .local v4, "cached":Z
    const/4 v6, 0x0

    .line 12626
    .local v5, "recycled":Z
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12627
    :cond_4
    iget v5, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "JXkbPmQXP2BcwiEI3FqqjfiGok6rwhAB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v5, :cond_8

    :goto_1
    const/16 v0, 0x20e

    .line 12628
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0k(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 12629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12630
    .local v6, "cachedViewSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A00:I

    if-lt v2, v0, :cond_5

    if-lez v2, :cond_5

    .line 12631
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4h;->A07(I)V

    .line 12632
    add-int/lit8 v2, v2, -0x1

    .line 12633
    .local v1, "targetCacheIndex":I
    :cond_5
    invoke-static {}, Lcom/facebook/ads/redexgen/X/E9;->A10()Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez v2, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    .line 12634
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yf;->A05(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 12635
    add-int/lit8 v2, v2, -0x1

    .line 12636
    .local v7, "cacheIndex":I
    :goto_2
    if-ltz v2, :cond_6

    .line 12637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4r;->A03:I

    .line 12638
    .local v8, "cachedPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yf;->A05(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 12639
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 12640
    .end local v7    # "cacheIndex":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12641
    const/4 v7, 0x1

    .line 12642
    .end local v1    # "targetCacheIndex":I
    .end local v6    # "cachedViewSize":I
    :cond_8
    if-nez v7, :cond_9

    .line 12643
    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/4h;->A0d(Lcom/facebook/ads/redexgen/X/4r;Z)V

    .line 12644
    const/4 v6, 0x1

    .line 12645
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4z;->A0B(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12646
    if-nez v7, :cond_a

    if-nez v6, :cond_a

    if-eqz v8, :cond_a

    .line 12647
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12648
    :cond_a
    return-void

    .line 12649
    .end local v8    # "cachedPos":I
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 12650
    goto :goto_2

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/4h;->A0A:[Ljava/lang/String;

    const-string v1, "iMRb6lH7bzEtCSJD4TfZYArDATXy6kqw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v5, :cond_8

    goto :goto_1

    .line 12651
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 12652
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x6e

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12653
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12654
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15d

    const/16 v1, 0x51

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12655
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 1

    .line 12656
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0C(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12658
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A01(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4h;)Lcom/facebook/ads/redexgen/X/4h;

    .line 12659
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0F(Lcom/facebook/ads/redexgen/X/4r;Z)Z

    .line 12660
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0O()V

    .line 12661
    return-void

    .line 12662
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4h;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/4r;Z)V
    .locals 3

    .line 12663
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0s(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12664
    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4r;->A0k(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12665
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/ads/redexgen/X/4r;->A0U(II)V

    .line 12666
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3E;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2s;)V

    .line 12667
    :cond_0
    if-eqz p2, :cond_1

    .line 12668
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4h;->A0B(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12669
    :cond_1
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/4r;->A08:Lcom/facebook/ads/redexgen/X/E9;

    .line 12670
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4h;->A0H()Lcom/facebook/ads/redexgen/X/4g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4g;->A09(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12671
    return-void
.end method
