.class public final Lcom/facebook/ads/redexgen/X/9E;
.super Lcom/facebook/ads/redexgen/X/M9;
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

    .line 20283
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9E;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 2

    .line 20284
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9E;->A00:Lcom/facebook/ads/redexgen/X/9D;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A0A(Lcom/facebook/ads/redexgen/X/9D;Z)Z

    .line 20285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9E;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A09(Lcom/facebook/ads/redexgen/X/9D;)V

    .line 20286
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 20287
    check-cast p1, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9E;->A00(Lcom/facebook/ads/redexgen/X/MK;)V

    return-void
.end method
