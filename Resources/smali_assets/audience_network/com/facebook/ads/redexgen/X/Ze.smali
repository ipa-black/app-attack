.class public abstract Lcom/facebook/ads/redexgen/X/Ze;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6E;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RVCacheListener"
.end annotation


# instance fields
.field public final A00:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 71045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71046
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:Z

    .line 71047
    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final AAT()V
    .locals 1

    .line 71048
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:Z

    if-eqz v0, :cond_0

    .line 71049
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ze;->A00()V

    .line 71050
    :goto_0
    return-void

    .line 71051
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A01(Z)V

    goto :goto_0
.end method

.method public final AAb()V
    .locals 1

    .line 71052
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A01(Z)V

    .line 71053
    return-void
.end method
