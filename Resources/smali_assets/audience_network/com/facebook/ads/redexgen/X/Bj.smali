.class public abstract Lcom/facebook/ads/redexgen/X/Bj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WN;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Bh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bh;)V
    .locals 0

    .line 23984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23985
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Lcom/facebook/ads/redexgen/X/Bh;

    .line 23986
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Hc;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 23987
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Bj;->A0C(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23988
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bj;->A0B(Lcom/facebook/ads/redexgen/X/Hc;J)V

    .line 23989
    :cond_0
    return-void
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/Hc;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation
.end method
