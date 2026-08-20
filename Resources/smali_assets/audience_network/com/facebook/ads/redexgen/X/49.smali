.class public final Lcom/facebook/ads/redexgen/X/49;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/E9;

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 11050
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/49;->A04:Z

    .line 11051
    iput v1, p0, Lcom/facebook/ads/redexgen/X/49;->A02:I

    .line 11052
    iput v1, p0, Lcom/facebook/ads/redexgen/X/49;->A00:I

    .line 11053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/49;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 11054
    iput v1, p0, Lcom/facebook/ads/redexgen/X/49;->A01:I

    .line 11055
    return-void
.end method
