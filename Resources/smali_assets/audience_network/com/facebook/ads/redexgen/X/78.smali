.class public final Lcom/facebook/ads/redexgen/X/78;
.super Lcom/facebook/ads/redexgen/X/M9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 16245
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 2

    .line 16246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/78;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/75;->A09(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/75;->A00:I

    .line 16247
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16248
    check-cast p1, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/78;->A00(Lcom/facebook/ads/redexgen/X/MK;)V

    return-void
.end method
