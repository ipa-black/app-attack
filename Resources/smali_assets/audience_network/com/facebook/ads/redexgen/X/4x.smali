.class public final Lcom/facebook/ads/redexgen/X/4x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoRecord"
.end annotation


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/2k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2k<",
            "Lcom/facebook/ads/redexgen/X/4x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4U;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/4U;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 13243
    const/16 v1, 0x14

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yw;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/2k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13245
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/4x;
    .locals 1

    .line 13246
    sget-object v0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/2k;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2k;->A2P()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4x;

    .line 13247
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4x;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static A01()V
    .locals 1

    .line 13248
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/2k;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2k;->A2P()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13249
    :cond_0
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 1

    .line 13250
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    .line 13252
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    .line 13253
    sget-object v0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/2k;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/2k;->AE7(Ljava/lang/Object;)Z

    .line 13254
    return-void
.end method
