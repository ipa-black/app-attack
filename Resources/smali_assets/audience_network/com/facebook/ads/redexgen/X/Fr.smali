.class public final Lcom/facebook/ads/redexgen/X/Fr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleControllerListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/b0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b0;)V
    .locals 0

    .line 34262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34263
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fr;->A00:Lcom/facebook/ads/redexgen/X/b0;

    .line 34264
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/b0;Lcom/facebook/ads/redexgen/X/as;)V
    .locals 0

    .line 34265
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Fr;-><init>(Lcom/facebook/ads/redexgen/X/b0;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    .line 34266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fr;->A00:Lcom/facebook/ads/redexgen/X/b0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b0;->A08()V

    .line 34267
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 34268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fr;->A00:Lcom/facebook/ads/redexgen/X/b0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b0;->A07()V

    .line 34269
    return-void
.end method
