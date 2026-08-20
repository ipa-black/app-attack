.class public abstract Lcom/facebook/ads/redexgen/X/b7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/b8;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/b8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 73285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b8;

    if-eqz v0, :cond_0

    .line 73286
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/b8;->onStart()V

    .line 73287
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 73288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b8;

    if-eqz v0, :cond_0

    .line 73289
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/b8;->onStop()V

    .line 73290
    :cond_0
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/b8;)V
    .locals 0

    .line 73291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b8;

    .line 73292
    return-void
.end method
