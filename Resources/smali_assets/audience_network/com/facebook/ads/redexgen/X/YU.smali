.class public final Lcom/facebook/ads/redexgen/X/YU;
.super Lcom/facebook/ads/redexgen/X/4P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 0

    .line 68082
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4P;-><init>()V

    .line 68083
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 68084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->A1q(Ljava/lang/String;)V

    .line 68085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4o;->A0D:Z

    .line 68086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1Q()V

    .line 68087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A00:Lcom/facebook/ads/redexgen/X/Yg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yg;->A0J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YU;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->requestLayout()V

    .line 68089
    :cond_0
    return-void
.end method
