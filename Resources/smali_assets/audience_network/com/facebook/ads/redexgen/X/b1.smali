.class public final Lcom/facebook/ads/redexgen/X/b1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b0;-><init>(Lcom/facebook/ads/redexgen/X/bB;Lcom/facebook/ads/redexgen/X/RO;Lcom/facebook/ads/redexgen/X/Fs;Lcom/facebook/ads/redexgen/X/b2;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/b0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b0;I)V
    .locals 0

    .line 73242
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/b0;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/b1;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 73243
    .local v0, "this":Lcom/facebook/ads/redexgen/X/b1;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/b0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b0;->A06(Lcom/facebook/ads/redexgen/X/b0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73244
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/b0;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/b0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b0;->A01(Lcom/facebook/ads/redexgen/X/b0;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RO;->A9v()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/b0;->A05(Lcom/facebook/ads/redexgen/X/b0;J)V

    .line 73245
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/b0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b0;->A00(Lcom/facebook/ads/redexgen/X/b0;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/b0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b0;->A02(Lcom/facebook/ads/redexgen/X/b0;)Ljava/lang/Runnable;

    move-result-object v2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/b1;->A00:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73246
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/b1;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
