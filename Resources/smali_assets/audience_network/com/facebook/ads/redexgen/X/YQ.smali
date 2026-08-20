.class public abstract Lcom/facebook/ads/redexgen/X/YQ;
.super Lcom/facebook/ads/redexgen/X/4V;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 68000
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ufm8s7LRmOM7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sIBwdoM05ajejE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fQPzW90JHWOApVaaQbndX59CGXgCnXlm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68001
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4V;-><init>()V

    .line 68002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:Z

    return-void
.end method


# virtual methods
.method public final A0D(Lcom/facebook/ads/redexgen/X/4r;)Z
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68003
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68004
    move-object v2, p1

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    if-ne v1, v0, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    if-eq v1, v0, :cond_1

    .line 68005
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/YQ;->A0T(Lcom/facebook/ads/redexgen/X/4r;IIII)Z

    move-result v0

    return v0

    .line 68006
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/YQ;->A0R(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)Z
    .locals 8
    .param p1    # Lcom/facebook/ads/redexgen/X/4r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68007
    iget v4, p2, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    .line 68008
    .local v6, "oldLeft":I
    iget v5, p2, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    .line 68009
    .local v7, "oldTop":I
    move-object v3, p1

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    .line 68010
    .local p0, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 68011
    .local p1, "newLeft":I
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    .line 68012
    .local p2, "newTop":I
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v4, v6, :cond_0

    if-eq v5, v7, :cond_3

    .line 68013
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 68014
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    .line 68015
    invoke-virtual {v2, v6, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 68016
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/YQ;->A0T(Lcom/facebook/ads/redexgen/X/4r;IIII)Z

    move-result v0

    return v0

    .line 68017
    :cond_1
    iget v7, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    goto :goto_1

    .line 68018
    :cond_2
    iget v6, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    goto :goto_0

    .line 68019
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/YQ;->A0S(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    return v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68020
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    move-object v2, p1

    if-ne v1, v0, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    if-eq v1, v0, :cond_1

    .line 68021
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/YQ;->A0T(Lcom/facebook/ads/redexgen/X/4r;IIII)Z

    move-result v0

    return v0

    .line 68022
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/YQ;->A0O(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 68023
    const/4 v0, 0x0

    return v0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)Z
    .locals 10
    .param p1    # Lcom/facebook/ads/redexgen/X/4r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68024
    iget v6, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    .line 68025
    .local v7, "fromLeft":I
    iget v7, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    .line 68026
    .local v8, "fromTop":I
    move-object v5, p2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68027
    iget v8, p3, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    .line 68028
    .local v0, "toLeft":I
    iget v9, p3, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    .line 68029
    .local v1, "toTop":I
    .end local v0    # "toLeft":I
    .local v9, "toLeft":I
    .local p0, "toTop":I
    :goto_0
    move-object v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68030
    .end local v0
    .end local v1    # "toTop":I
    :cond_0
    iget v8, p4, Lcom/facebook/ads/redexgen/X/4U;->A01:I

    .line 68031
    .restart local v0    # "toLeft":I
    iget v9, p4, Lcom/facebook/ads/redexgen/X/4U;->A03:I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A01:[Ljava/lang/String;

    const-string v1, "7F8ns227Orjao7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/YQ;->A0U(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4r;IIII)Z

    move-result v0

    return v0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 0

    .line 68032
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4V;->A0C(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 68033
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 0

    .line 68034
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4V;->A0C(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 68035
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 0

    .line 68036
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4V;->A0C(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 68037
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/4r;Z)V
    .locals 0

    .line 68038
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4V;->A0C(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 68039
    return-void
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/4r;)Z
.end method

.method public abstract A0S(Lcom/facebook/ads/redexgen/X/4r;)Z
.end method

.method public abstract A0T(Lcom/facebook/ads/redexgen/X/4r;IIII)Z
.end method

.method public abstract A0U(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4r;IIII)Z
.end method
