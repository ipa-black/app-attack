.class public final Lcom/facebook/ads/redexgen/X/U0;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tp;->repair(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tp;)V
    .locals 0

    .line 55784
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U0;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 55785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->unregisterView()V

    .line 55786
    return-void
.end method
