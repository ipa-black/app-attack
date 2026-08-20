.class public final Lcom/facebook/ads/redexgen/X/MD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MG;->A01(Lcom/facebook/ads/redexgen/X/MF;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MG;)V
    .locals 0

    .line 44188
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 44189
    .local v0, "this":Lcom/facebook/ads/redexgen/X/MD;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MD;->A00:Lcom/facebook/ads/redexgen/X/MG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MG;->A03(Lcom/facebook/ads/redexgen/X/MG;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44190
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MD;->A00:Lcom/facebook/ads/redexgen/X/MG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MG;->A02(Lcom/facebook/ads/redexgen/X/MG;)Lcom/facebook/ads/redexgen/X/MJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MJ;->A45()V

    goto :goto_0

    .line 44191
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/MD;
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MD;->A00:Lcom/facebook/ads/redexgen/X/MG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MG;->A02(Lcom/facebook/ads/redexgen/X/MG;)Lcom/facebook/ads/redexgen/X/MJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MJ;->A46()V

    .line 44192
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
