.class public final Lcom/facebook/ads/redexgen/X/MV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/St;->A0O(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2H;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ML;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/St;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/St;Lcom/facebook/ads/redexgen/X/ML;Lcom/facebook/ads/redexgen/X/2H;)V
    .locals 0

    .line 44519
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MV;->A02:Lcom/facebook/ads/redexgen/X/St;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MV;->A01:Lcom/facebook/ads/redexgen/X/ML;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MV;->A00:Lcom/facebook/ads/redexgen/X/2H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 44520
    .local v0, "this":Lcom/facebook/ads/redexgen/X/MV;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MV;->A01:Lcom/facebook/ads/redexgen/X/ML;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ML;->A01()V

    .line 44521
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MV;->A02:Lcom/facebook/ads/redexgen/X/St;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/MH;->A0B:Lcom/facebook/ads/redexgen/X/MJ;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MV;->A00:Lcom/facebook/ads/redexgen/X/2H;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MJ;->ABs(Lcom/facebook/ads/redexgen/X/2H;)V

    .line 44522
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/MV;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
