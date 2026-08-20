.class public final Lcom/facebook/ads/redexgen/X/4K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 0

    .line 11433
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 11434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11435
    :cond_0
    return-void

    .line 11436
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0F:Z

    if-nez v0, :cond_2

    .line 11437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->requestLayout()V

    .line 11438
    return-void

    .line 11439
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0I:Z

    if-eqz v0, :cond_3

    .line 11440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/E9;->A0J:Z

    .line 11441
    return-void

    .line 11442
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1J()V

    .line 11443
    return-void
.end method
