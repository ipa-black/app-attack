.class public final Lcom/facebook/ads/redexgen/X/Gg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4F(Lcom/facebook/ads/redexgen/X/Qk;)Lcom/facebook/ads/redexgen/X/Ql;
    .locals 2

    .line 35189
    new-instance v1, Lcom/facebook/ads/redexgen/X/HC;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/HC;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Gf;-><init>(Lcom/facebook/ads/redexgen/X/Qk;Lcom/facebook/ads/redexgen/X/Qq;)V

    return-object v0
.end method
