.class public Lcom/facebook/ads/redexgen/X/Gh;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Gb;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gb;I)V
    .locals 0

    .line 35190
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 35191
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Gb;

    .line 35192
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    .line 35193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gb;I)V
    .locals 0

    .line 35194
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35195
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Gb;

    .line 35196
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    .line 35197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gb;I)V
    .locals 0

    .line 35198
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35199
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Gb;

    .line 35200
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    .line 35201
    return-void
.end method
