.class public final Lcom/facebook/ads/redexgen/X/EK;
.super Lcom/facebook/ads/redexgen/X/ZO;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ZF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/24;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 31732
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6CKGqR2K2MH05agWbJN3ka4F1ij3xhtD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "25gFyXHUhXKi43K8KJ4chgoS7w07JQQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vjdmG7Wc53PSGoj25veSMfUO8xL7SxfR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TQa00i6LjIP9KGMZzj8Rx2HUQjG1dRa1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ap4e45gngLG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PTi4Abr85pNMPfkRgyZo1NxbOs1aDg0f"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "O7pu2EfbMgektne8Y3vUNLOEHbflJ4Uv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IlEhKaiOmMN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EK;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/24;)V
    .locals 2

    .line 31733
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/EK;->A00(Lcom/facebook/ads/redexgen/X/24;)Lcom/facebook/ads/redexgen/X/23;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/23;)V

    .line 31734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    .line 31735
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/24;)Lcom/facebook/ads/redexgen/X/23;
    .locals 1

    .line 31736
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZA;-><init>(Lcom/facebook/ads/redexgen/X/24;)V

    return-object v0
.end method


# virtual methods
.method public final A05()V
    .locals 2

    .line 31737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    if-eqz v0, :cond_0

    .line 31738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0H()V

    .line 31739
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/1u;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1v;->AEr(Lcom/facebook/ads/redexgen/X/1u;)V

    .line 31740
    return-void
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/ZF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    return-object v0
.end method

.method public final A08()V
    .locals 4

    .line 31742
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZF;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/ZF;-><init>(Lcom/facebook/ads/redexgen/X/24;Lcom/facebook/ads/redexgen/X/27;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 31743
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/24;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/24;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/24;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0L(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 31744
    return-void
.end method

.method public final A09(Lcom/facebook/ads/Ad;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1v;->A5M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31746
    return-void

    .line 31747
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/24;->A01(Lcom/facebook/ads/Ad;)V

    .line 31748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    if-eqz v0, :cond_2

    .line 31749
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/ZF;->A0L(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/EK;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31750
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EK;->A02:[Ljava/lang/String;

    const-string v1, "snzzAybKLkKRz85P4BzzU6VwJ24uwEo8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "iwkpZYLOXs3iYxZlCgOD0Nxy0vDnSGoK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 31751
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/24;->A05:Ljava/lang/String;

    .line 31752
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/24;->A02:Lcom/facebook/ads/AdExperienceType;

    .line 31753
    iput-boolean p4, v0, Lcom/facebook/ads/redexgen/X/24;->A08:Z

    .line 31754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EK;->A08()V

    .line 31755
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 31756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/24;->A03:Lcom/facebook/ads/RewardData;

    .line 31757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    if-eqz v0, :cond_0

    .line 31758
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZF;->A0J(Lcom/facebook/ads/RewardData;)V

    .line 31759
    :cond_0
    return-void
.end method

.method public final A0B()Z
    .locals 5

    .line 31760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    if-eqz v0, :cond_0

    .line 31761
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0M()Z

    move-result v0

    return v0

    .line 31762
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/24;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 31763
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LC;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/24;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 31764
    :goto_0
    return v0

    .line 31765
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C()Z
    .locals 2

    .line 31766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    if-eqz v0, :cond_0

    .line 31767
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0N()Z

    move-result v0

    return v0

    .line 31768
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1v;->A5f()Lcom/facebook/ads/redexgen/X/1u;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1u;->A06:Lcom/facebook/ads/redexgen/X/1u;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/Ad;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 7

    .line 31769
    move-object v0, p2

    check-cast v0, Lcom/facebook/ads/redexgen/X/5j;

    .line 31770
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5j;->A00()I

    move-result v6

    .line 31771
    .local v0, "appOrientation":I
    check-cast p2, Lcom/facebook/ads/redexgen/X/5j;

    .line 31772
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5j;->A01()J

    move-result-wide v1

    .line 31773
    .local v1, "previousAdViewTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1v;->A5N()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 31774
    return v5

    .line 31775
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/24;->A01(Lcom/facebook/ads/Ad;)V

    .line 31776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    if-eqz v0, :cond_1

    .line 31777
    invoke-virtual {v0, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/ZF;->A0O(IJ)Z

    move-result v0

    return v0

    .line 31778
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/24;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZF;

    invoke-direct {v0, v4, p0, v3}, Lcom/facebook/ads/redexgen/X/ZF;-><init>(Lcom/facebook/ads/redexgen/X/24;Lcom/facebook/ads/redexgen/X/27;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 31779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-virtual {v0, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/ZF;->A0O(IJ)Z

    .line 31780
    return v5
.end method
