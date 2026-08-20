.class public final Lcom/facebook/ads/redexgen/X/1F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1E;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x3ba6bcbd8943c62L


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:J

.field public final A06:Lcom/facebook/ads/redexgen/X/1X;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1E;)V
    .locals 2

    .line 3856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3857
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A07(Lcom/facebook/ads/redexgen/X/1E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A08:Ljava/lang/String;

    .line 3858
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A05(Lcom/facebook/ads/redexgen/X/1E;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:J

    .line 3859
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A01(Lcom/facebook/ads/redexgen/X/1E;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:I

    .line 3860
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A02(Lcom/facebook/ads/redexgen/X/1E;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:I

    .line 3861
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A0A(Lcom/facebook/ads/redexgen/X/1E;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A0A:Z

    .line 3862
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A0B(Lcom/facebook/ads/redexgen/X/1E;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A09:Z

    .line 3863
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A08(Lcom/facebook/ads/redexgen/X/1E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A07:Ljava/lang/String;

    .line 3864
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A03(Lcom/facebook/ads/redexgen/X/1E;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A01:I

    .line 3865
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A04(Lcom/facebook/ads/redexgen/X/1E;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    .line 3866
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A06(Lcom/facebook/ads/redexgen/X/1E;)Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:Lcom/facebook/ads/redexgen/X/1X;

    .line 3867
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A00(Lcom/facebook/ads/redexgen/X/1E;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A02:I

    .line 3868
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1E;->A09(Lcom/facebook/ads/redexgen/X/1E;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A0B:Z

    .line 3869
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1E;Lcom/facebook/ads/redexgen/X/1D;)V
    .locals 0

    .line 3870
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1F;-><init>(Lcom/facebook/ads/redexgen/X/1E;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 3871
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 3872
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 3873
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 3874
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 3875
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:I

    return v0
.end method

.method public final A05()J
    .locals 2

    .line 3876
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:J

    return-wide v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/1X;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:Lcom/facebook/ads/redexgen/X/1X;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1

    .line 3878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 3879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()Z
    .locals 1

    .line 3880
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A09:Z

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 3881
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A0B:Z

    return v0
.end method
