.class public final Lcom/facebook/ads/redexgen/X/a5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a4;->AAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 0

    .line 71510
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a5;->A00:Lcom/facebook/ads/redexgen/X/a4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADE()V
    .locals 2

    .line 71511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a5;->A00:Lcom/facebook/ads/redexgen/X/a4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A05(Lcom/facebook/ads/redexgen/X/F6;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a5;->A00:Lcom/facebook/ads/redexgen/X/a4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a5;->A00:Lcom/facebook/ads/redexgen/X/a4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACQ(Lcom/facebook/ads/redexgen/X/Zw;)V

    .line 71513
    return-void
.end method
