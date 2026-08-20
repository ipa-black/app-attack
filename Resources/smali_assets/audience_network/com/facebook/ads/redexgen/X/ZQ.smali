.class public final Lcom/facebook/ads/redexgen/X/ZQ;
.super Lcom/facebook/ads/redexgen/X/Jo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZO;->ABk(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Message;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ZO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZO;Landroid/os/Message;)V
    .locals 0

    .line 70434
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZQ;->A01:Lcom/facebook/ads/redexgen/X/ZO;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZQ;->A00:Landroid/os/Message;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 70435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZQ;->A01:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A01(Lcom/facebook/ads/redexgen/X/ZO;)Lcom/facebook/ads/redexgen/X/22;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZQ;->A00:Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/22;->A8D(Landroid/os/Message;)V

    .line 70436
    return-void
.end method
