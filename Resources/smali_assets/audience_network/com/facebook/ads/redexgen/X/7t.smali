.class public final Lcom/facebook/ads/redexgen/X/7t;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 17722
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17723
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:I

    .line 17724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A05:Z

    .line 17725
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A04:Z

    .line 17726
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Z

    .line 17727
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:I

    .line 17728
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17730
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:I

    .line 17731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A05:Z

    .line 17732
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A04:Z

    .line 17733
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Z

    .line 17734
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:I

    .line 17735
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 17736
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 17737
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:I

    .line 17738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A05:Z

    .line 17739
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A04:Z

    .line 17740
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Z

    .line 17741
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:I

    .line 17742
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 17743
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 17744
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:I

    return v0
.end method

.method public final A02()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A03(I)V
    .locals 0

    .line 17746
    iput p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:I

    .line 17747
    return-void
.end method

.method public final A04(I)V
    .locals 0

    .line 17748
    iput p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:I

    .line 17749
    return-void
.end method

.method public final A05(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17750
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lorg/json/JSONObject;

    .line 17751
    return-void
.end method

.method public final A06(Z)V
    .locals 0

    .line 17752
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A04:Z

    .line 17753
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 17754
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Z

    .line 17755
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 17756
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A05:Z

    .line 17757
    return-void
.end method

.method public final A09()Z
    .locals 1

    .line 17758
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A04:Z

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 17759
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Z

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 17760
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A05:Z

    return v0
.end method
