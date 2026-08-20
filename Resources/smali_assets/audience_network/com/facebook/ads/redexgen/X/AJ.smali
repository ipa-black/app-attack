.class public final Lcom/facebook/ads/redexgen/X/AJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/AL;->A04(Lcom/facebook/ads/redexgen/X/Ap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AL;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ap;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AL;Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 0

    .line 21647
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Lcom/facebook/ads/redexgen/X/AL;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AJ;->A01:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 21648
    .local v0, "this":Lcom/facebook/ads/redexgen/X/AJ;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AJ;->A01:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 21649
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AJ;->A00:Lcom/facebook/ads/redexgen/X/AL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AL;->A00(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AM;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AJ;->A01:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AM;->AAH(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 21650
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/AJ;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
