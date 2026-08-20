.class public final Lcom/facebook/ads/redexgen/X/NP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NS;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NS;)V
    .locals 0

    .line 45924
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 45925
    .local v0, "this":Lcom/facebook/ads/redexgen/X/NP;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NR;->ABc()V

    .line 45926
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45927
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 45928
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/NP;
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A06(Lcom/facebook/ads/redexgen/X/NS;)[Landroid/view/View;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v4, v1

    .line 45929
    .local v5, "view":Landroid/view/View;
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 45930
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45931
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 45932
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A02(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45933
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A02(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 45934
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/NP;->A00:Lcom/facebook/ads/redexgen/X/NS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A02(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PK;->A02:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0xe

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 45935
    :cond_3
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
