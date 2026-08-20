.class public final Lcom/facebook/ads/redexgen/X/E5;
.super Lcom/facebook/ads/redexgen/X/M9;
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

    .line 29444
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E5;->A00:Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 1

    .line 29445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A00:Lcom/facebook/ads/redexgen/X/5R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5R;->A00(Lcom/facebook/ads/redexgen/X/5R;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    .line 29446
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 29447
    check-cast p1, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E5;->A00(Lcom/facebook/ads/redexgen/X/MK;)V

    return-void
.end method
