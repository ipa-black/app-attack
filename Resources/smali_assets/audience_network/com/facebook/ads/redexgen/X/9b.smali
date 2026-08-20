.class public final Lcom/facebook/ads/redexgen/X/9b;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9D;)V
    .locals 0

    .line 20879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/NC;)V
    .locals 2

    .line 20880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A08(Lcom/facebook/ads/redexgen/X/9D;)V

    .line 20881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:Lcom/facebook/ads/redexgen/X/9D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9D;->A07:Lcom/facebook/ads/redexgen/X/Rd;

    .line 20882
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0O()Lcom/facebook/ads/redexgen/X/O4;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:Lcom/facebook/ads/redexgen/X/9D;

    .line 20883
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->AD6(Landroid/view/View;)V

    .line 20884
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 20885
    check-cast p1, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9b;->A00(Lcom/facebook/ads/redexgen/X/NC;)V

    return-void
.end method
