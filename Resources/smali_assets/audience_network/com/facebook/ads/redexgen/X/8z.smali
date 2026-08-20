.class public final Lcom/facebook/ads/redexgen/X/8z;
.super Lcom/facebook/ads/redexgen/X/NY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;)V
    .locals 0

    .line 19885
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8z;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NY;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6z;)V
    .locals 2

    .line 19886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8z;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A02(Lcom/facebook/ads/redexgen/X/8x;)Lcom/facebook/ads/redexgen/X/Rd;

    move-result-object v0

    .line 19887
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0O()Lcom/facebook/ads/redexgen/X/O4;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8z;->A00:Lcom/facebook/ads/redexgen/X/8x;

    .line 19888
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->AD4(Landroid/view/View;)V

    .line 19889
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 19890
    check-cast p1, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8z;->A00(Lcom/facebook/ads/redexgen/X/6z;)V

    return-void
.end method
