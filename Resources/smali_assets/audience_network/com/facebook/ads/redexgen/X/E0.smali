.class public final Lcom/facebook/ads/redexgen/X/E0;
.super Lcom/facebook/ads/redexgen/X/Kr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5R;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5R;)V
    .locals 0

    .line 29419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E0;->A00:Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ks;)V
    .locals 1

    .line 29420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E0;->A00:Lcom/facebook/ads/redexgen/X/5R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5R;->A00(Lcom/facebook/ads/redexgen/X/5R;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onVolumeChanged()V

    .line 29421
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 29422
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ks;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E0;->A00(Lcom/facebook/ads/redexgen/X/Ks;)V

    return-void
.end method
