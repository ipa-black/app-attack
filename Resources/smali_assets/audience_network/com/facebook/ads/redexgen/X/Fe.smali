.class public final Lcom/facebook/ads/redexgen/X/Fe;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Z

.field public final A02:[B

.field public final A03:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 33440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33441
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    .line 33442
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Fe;->A01:Z

    .line 33443
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fe;->A03:[B

    .line 33444
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fe;->A02:[B

    .line 33445
    return-void
.end method
