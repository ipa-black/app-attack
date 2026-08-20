.class public final Lcom/facebook/ads/redexgen/X/T8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/T0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 54156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8b()Z
    .locals 1

    .line 54157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A0a(Lcom/facebook/ads/redexgen/X/T0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
