.class public final Lcom/facebook/ads/redexgen/X/RQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7E;->A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7E;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0

    .line 50694
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/7E;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RQ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8b()Z
    .locals 3

    .line 50695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/7E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T9;->A0X()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 50696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/7E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T9;->A0W(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 50697
    return v2

    .line 50698
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A0H(Lcom/facebook/ads/redexgen/X/7E;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50699
    return v2

    .line 50700
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A0G(Lcom/facebook/ads/redexgen/X/7E;)Z

    move-result v0

    return v0
.end method
