.class public final Lcom/facebook/ads/redexgen/X/6Y;
.super Lcom/facebook/ads/redexgen/X/PR;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/PO;

.field public final A01:Lcom/facebook/ads/redexgen/X/NY;

.field public final A02:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A03:Lcom/facebook/ads/redexgen/X/M9;

.field public final A04:Lcom/facebook/ads/redexgen/X/Pf;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 15919
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dj2bca5KMhic7lU7SNdjndSTQwmssf52"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TPlcacN2BRfqpmqqou3eGj4ypEirHC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lK1i5T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LDnNwGMA5Xj1Rc4RK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9vPtQslMJEvaRYxyY6ZiMi1q6kn3NQTo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pbwCeIFhJ07zfEQSECI2TdcOW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wj7W52"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ztBFgo3EeJBil6N8wes8zN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6Y;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 15920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6Y;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    .line 15921
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V
    .locals 1

    .line 15922
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/6Y;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    .line 15923
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 15924
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PR;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    .line 15925
    new-instance v0, Lcom/facebook/ads/redexgen/X/6f;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6f;-><init>(Lcom/facebook/ads/redexgen/X/6Y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:Lcom/facebook/ads/redexgen/X/M9;

    .line 15926
    new-instance v0, Lcom/facebook/ads/redexgen/X/6e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6e;-><init>(Lcom/facebook/ads/redexgen/X/6Y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A01:Lcom/facebook/ads/redexgen/X/NY;

    .line 15927
    new-instance v0, Lcom/facebook/ads/redexgen/X/6d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6d;-><init>(Lcom/facebook/ads/redexgen/X/6Y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Lcom/facebook/ads/redexgen/X/Mt;

    .line 15928
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/6Y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/PO;

    .line 15929
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6Y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 15930
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pf;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Pf;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    .line 15931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pf;->setChecked(Z)V

    .line 15932
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15933
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6Y;->setVisibility(I)V

    .line 15934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6Y;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15935
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6Y;->setClickable(Z)V

    .line 15936
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6Y;->setFocusable(Z)V

    .line 15937
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6Y;)Lcom/facebook/ads/redexgen/X/Pf;
    .locals 0

    .line 15938
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 15939
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->A07()V

    .line 15940
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/6Y;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15942
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15943
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:Lcom/facebook/ads/redexgen/X/M9;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A01:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 15944
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 15945
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15946
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A01:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:Lcom/facebook/ads/redexgen/X/M9;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A04([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 15947
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/6Y;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15949
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->A08()V

    .line 15950
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 15951
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6Y;
    .local p0, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v2

    .line 15952
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/RA;
    if-nez v2, :cond_1

    .line 15953
    return-void

    .line 15954
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    .line 15955
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    .line 15956
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_3

    .line 15957
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/6Y;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/PK;->A04:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    goto :goto_0

    .line 15958
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_4

    .line 15959
    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 15960
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "videoView":Lcom/facebook/ads/redexgen/X/RA;
    .end local p0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/6Y;->A05:[Ljava/lang/String;

    const-string v1, "YsoDkb8mAWGLBYzRGBa3i8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pf;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 15962
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pf;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 15964
    return-void
.end method
