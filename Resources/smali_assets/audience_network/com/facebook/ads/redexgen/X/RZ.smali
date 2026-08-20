.class public final Lcom/facebook/ads/redexgen/X/RZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7G;->A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7G;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0

    .line 50979
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:Lcom/facebook/ads/redexgen/X/7G;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8b()Z
    .locals 3

    .line 50980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:Lcom/facebook/ads/redexgen/X/7G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T9;->A0X()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 50981
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:Lcom/facebook/ads/redexgen/X/7G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T9;->A0W(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 50982
    return v2

    .line 50983
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:Lcom/facebook/ads/redexgen/X/7G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7G;->A0J(Lcom/facebook/ads/redexgen/X/7G;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50984
    return v2

    .line 50985
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RZ;->A01:Lcom/facebook/ads/redexgen/X/7G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7G;->A0I(Lcom/facebook/ads/redexgen/X/7G;)Z

    move-result v0

    return v0
.end method
