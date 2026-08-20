.class public final Lcom/facebook/ads/redexgen/X/YS;
.super Lcom/facebook/ads/redexgen/X/2s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/YR;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 68064
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Aypyv0FACfsPQTq8B8UFxLSJIGYFzsCC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "O7nTze5knL3NcSr2rovnk7vqxWhLtUKF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "w8KDuB7m9FBYOy6hiJzio9ilRX5MSLSp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Kqe5H6YPSeJrA9PRZ2BXFN4qonyjjTB9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VPpNE9vsyh3HxU94PoFE47DnBqUfoC5Y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VSW3ZMLcugYKNhiURlJ0g5uJ7Smp29SS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JpT6Sbfy0irMNtnKFHDBnJ8tZotKHb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YS;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YR;)V
    .locals 0

    .line 68065
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2s;-><init>()V

    .line 68066
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    .line 68067
    return-void
.end method


# virtual methods
.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 1

    .line 68068
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2s;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V

    .line 68069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YR;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/E9;

    .line 68070
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v0

    .line 68072
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A1C(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V

    .line 68073
    :cond_0
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 68074
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2s;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68075
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/YS;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YS;->A01:[Ljava/lang/String;

    const-string v1, "SRS22nAnXgHfwC2qheyHP9Kgc2YZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68076
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YR;->A0B()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/E9;

    .line 68077
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v0

    .line 68079
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A1b(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 68080
    return v0

    .line 68081
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
