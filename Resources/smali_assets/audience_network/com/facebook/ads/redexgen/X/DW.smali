.class public final Lcom/facebook/ads/redexgen/X/DW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 27408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27409
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    .line 27410
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:J

    .line 27411
    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/DV;)V
    .locals 0

    .line 27412
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DW;-><init>(IJ)V

    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/DW;
    .locals 4

    .line 27413
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DW;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/DW;-><init>(IJ)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/DW;
    .locals 0

    .line 27414
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/DW;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/DW;

    move-result-object p0

    return-object p0
.end method

.method private A02(Landroid/os/Parcel;)V
    .locals 2

    .line 27415
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27416
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27417
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DW;Landroid/os/Parcel;)V
    .locals 0

    .line 27418
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A02(Landroid/os/Parcel;)V

    return-void
.end method
