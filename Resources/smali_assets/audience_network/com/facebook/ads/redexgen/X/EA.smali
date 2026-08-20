.class public final Lcom/facebook/ads/redexgen/X/EA;
.super Lcom/facebook/ads/redexgen/X/YO;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4J;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/4J;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 31249
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J5x5lFquh7whloqA7FngbvBzLsCb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NWBvU5bW0Pue"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BTAVkHunqM91yRRN2KcoYuZCergWfboL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2NY5ANPTvwBPWrnTgdotgLNYCmp8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bg7eF9CjngMlwdFplTojabi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31250
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YO;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31251
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v2

    .line 31252
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 31253
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31254
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 31255
    .local v1, "containerCenter":I
    .restart local v1    # "containerCenter":I
    :goto_0
    sub-int/2addr v2, v1

    return v2

    .line 31256
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4J;->A06()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4J;)Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31257
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v5

    .line 31258
    .local v0, "childCount":I
    if-nez v5, :cond_0

    .line 31259
    const/4 v0, 0x0

    return-object v0

    .line 31260
    :cond_0
    const/4 v7, 0x0

    .line 31261
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31262
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v6

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const-string v1, "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    div-int/lit8 v0, v3, 0x2

    add-int/2addr v6, v0

    .local v2, "center":I
    goto :goto_0

    .line 31263
    .end local v2    # "center":I
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A06()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 31264
    .restart local v2    # "center":I
    :goto_0
    const v4, 0x7fffffff

    .line 31265
    .local v3, "absClosest":I
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 31266
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v2

    .line 31267
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    .line 31268
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 31269
    .local v6, "childCenter":I
    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 31270
    .local v7, "absDistance":I
    if-ge v0, v4, :cond_3

    .line 31271
    move v4, v0

    .line 31272
    move-object v7, v2

    .line 31273
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31274
    .end local v4    # "i":I
    :cond_4
    return-object v7
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4J;)Landroid/view/View;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31275
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v6

    .line 31276
    .local v0, "childCount":I
    if-nez v6, :cond_0

    .line 31277
    const/4 v0, 0x0

    return-object v0

    .line 31278
    :cond_0
    const/4 v1, 0x0

    .line 31279
    .local v1, "closestChild":Landroid/view/View;
    const v5, 0x7fffffff

    .line 31280
    .local v2, "startest":I
    const/4 v4, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 31281
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v3

    .line 31282
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    .line 31283
    .local v5, "childStart":I
    if-ge v0, v5, :cond_2

    .line 31284
    move v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31285
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object v1, v3

    .line 31286
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childStart":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31287
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/4J;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-eq v0, p1, :cond_1

    .line 31289
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4J;->A00(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 31290
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A00:Lcom/facebook/ads/redexgen/X/4J;

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A01:Lcom/facebook/ads/redexgen/X/4J;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    if-eq v0, p1, :cond_1

    .line 31292
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4J;->A01(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A01:Lcom/facebook/ads/redexgen/X/4J;

    .line 31293
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EA;->A01:Lcom/facebook/ads/redexgen/X/4J;

    return-object v0
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/4Z;II)I
    .locals 9

    .line 31294
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0Z()I

    move-result v8

    .line 31295
    .local v0, "itemCount":I
    const/4 v4, -0x1

    if-nez v8, :cond_0

    .line 31296
    return v4

    .line 31297
    :cond_0
    const/4 v1, 0x0

    .line 31298
    .local v2, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A25()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31299
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EA;->A04(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/EA;->A02(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4J;)Landroid/view/View;

    move-result-object v1

    .line 31300
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 31301
    return v4

    .line 31302
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31303
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EA;->A03(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const-string v1, "gb7KateBwDTMhlVKT6fWGE4qrSBelOuo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/EA;->A02(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4J;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 31304
    :cond_4
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v3

    .line 31305
    .local v3, "centerPosition":I
    if-ne v3, v4, :cond_5

    .line 31306
    return v4

    .line 31307
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    .line 31308
    if-lez p2, :cond_c

    const/4 v6, 0x1

    .line 31309
    .restart local v1
    :goto_1
    const/4 v5, 0x0

    .line 31310
    .local v6, "reverseLayout":Z
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4l;

    if-eqz v0, :cond_8

    .line 31311
    check-cast p1, Lcom/facebook/ads/redexgen/X/4l;

    .line 31312
    .local v7, "vectorProvider":Lcom/facebook/ads/redexgen/X/4l;
    add-int/lit8 v0, v8, -0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/4l;->A48(I)Landroid/graphics/PointF;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_b

    .line 31313
    .local v8, "vectorForEnd":Landroid/graphics/PointF;
    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const-string v1, "yuw4mNpzW34AqVSRehlxNeo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkUUhZpWZ02e"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    .line 31314
    :goto_2
    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    :cond_6
    const/4 v7, 0x1

    :cond_7
    move v5, v7

    .line 31315
    .end local v7    # "vectorProvider":Lcom/facebook/ads/redexgen/X/4l;
    .end local v8    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_8
    if-eqz v5, :cond_a

    .line 31316
    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 31317
    :cond_9
    :goto_3
    return v3

    .line 31318
    :cond_a
    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 31319
    .local v8, "vectorForEnd":Landroid/graphics/PointF;
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const-string v1, "mSLQWLSJnMsLfeZB8hd0gvJZQvTgwPgU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    goto :goto_2

    .line 31320
    :cond_c
    const/4 v6, 0x0

    goto :goto_1

    .line 31321
    .end local v1
    :cond_d
    if-lez p3, :cond_e

    const/4 v6, 0x1

    goto :goto_1

    :cond_e
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31322
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A25()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31323
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EA;->A04(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/EA;->A01(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4J;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 31324
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31325
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EA;->A03(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/EA;->A01(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4J;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 31326
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Yd;
    .locals 2

    .line 31327
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4l;

    if-nez v0, :cond_0

    .line 31328
    const/4 v0, 0x0

    return-object v0

    .line 31329
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EB;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/EB;-><init>(Lcom/facebook/ads/redexgen/X/EA;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;)[I
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31330
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 31331
    .local v0, "out":[I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 31332
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EA;->A03(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    .line 31333
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/EA;->A00(Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v0

    aput v0, v3, v6

    .line 31334
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A25()Z

    move-result v5

    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31335
    :cond_0
    aput v6, v3, v6

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EA;->A02:[Ljava/lang/String;

    const-string v1, "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 31336
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EA;->A04(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    .line 31337
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/EA;->A00(Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v0

    aput v0, v3, v4

    .line 31338
    :goto_1
    return-object v3

    .line 31339
    :cond_2
    aput v6, v3, v4

    goto :goto_1
.end method
