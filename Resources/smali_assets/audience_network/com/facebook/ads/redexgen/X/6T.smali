.class public final Lcom/facebook/ads/redexgen/X/6T;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6G;)V
    .locals 0

    .line 15880
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 2

    .line 15881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A06(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Pf;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pf;->setChecked(Z)V

    .line 15882
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 15883
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
