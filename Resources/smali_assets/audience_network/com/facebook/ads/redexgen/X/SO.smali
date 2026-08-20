.class public final Lcom/facebook/ads/redexgen/X/SO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/93;->A06()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/93;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/93;)V
    .locals 0

    .line 52156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAa()V
    .locals 2

    .line 52157
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;Z)Z

    .line 52158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A00(Lcom/facebook/ads/redexgen/X/93;)Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A00(Lcom/facebook/ads/redexgen/X/93;)Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 52160
    :cond_0
    return-void
.end method

.method public final ACC(F)V
    .locals 4

    .line 52161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A00(Lcom/facebook/ads/redexgen/X/93;)Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52162
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    .line 52163
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A00()J

    move-result-wide v1

    long-to-float v0, v1

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    .line 52164
    .local v0, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A00(Lcom/facebook/ads/redexgen/X/93;)Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgressImmediate(F)V

    .line 52165
    .end local v0    # "percentage":F
    :cond_0
    return-void
.end method
