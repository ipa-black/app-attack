.class public final Lcom/facebook/ads/redexgen/X/6V;
.super Lcom/facebook/ads/redexgen/X/NY;
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

    .line 15888
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6V;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NY;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6z;)V
    .locals 2

    .line 15889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6V;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A06(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Pf;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pf;->setChecked(Z)V

    .line 15890
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 15891
    check-cast p1, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A00(Lcom/facebook/ads/redexgen/X/6z;)V

    return-void
.end method
