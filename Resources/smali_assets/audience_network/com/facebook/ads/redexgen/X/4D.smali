.class public final Lcom/facebook/ads/redexgen/X/4D;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 11247
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    .line 11248
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Z

    .line 11249
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Z

    .line 11250
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Z

    .line 11251
    return-void
.end method
