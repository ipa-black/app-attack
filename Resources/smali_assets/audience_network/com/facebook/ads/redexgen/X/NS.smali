.class public final Lcom/facebook/ads/redexgen/X/NS;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NR;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Li;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A02:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A03:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A04:Lcom/facebook/ads/redexgen/X/NR;

.field public final A05:Lcom/facebook/ads/redexgen/X/RA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:[Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 45939
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lu0oG19N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JNY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ev6F9eDhg42RHlCeRuJfEtiFO07AluFn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qSbaO4FE34QcNqD1YWxCxyT8wr5s9kWw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hZddA1hSD7Y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "v9TnLSaOxYneacolptRVdRHaZQ0ab06L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iyW9tyIIQvF7WQz3LOxNHXxa074IcWbN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vzh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NS;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/JW;Lcom/facebook/ads/redexgen/X/ND;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;)V
    .locals 7
    .param p3    # Lcom/facebook/ads/redexgen/X/RA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45940
    const/4 v0, 0x2

    new-array v6, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v0, 0x1

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;[Landroid/view/View;)V

    .line 45941
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;[Landroid/view/View;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/RA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45942
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    .line 45943
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v2

    .line 45944
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Li;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;[Landroid/view/View;)V

    .line 45945
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Li;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;[Landroid/view/View;)V
    .locals 0
    .param p2    # Lcom/facebook/ads/redexgen/X/Li;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/RA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45946
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45947
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45948
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Lcom/facebook/ads/redexgen/X/Li;

    .line 45949
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 45950
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/NS;->A06:[Landroid/view/View;

    .line 45951
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/NS;->A03:Lcom/facebook/ads/redexgen/X/Lj;

    .line 45952
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Lcom/facebook/ads/redexgen/X/RA;

    .line 45953
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Lcom/facebook/ads/redexgen/X/NR;

    .line 45954
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NS;->A03()V

    .line 45955
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/Li;
    .locals 0

    .line 45956
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Lcom/facebook/ads/redexgen/X/Li;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/NR;
    .locals 0

    .line 45957
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Lcom/facebook/ads/redexgen/X/NR;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/NS;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 45958
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Lcom/facebook/ads/redexgen/X/RA;

    return-object p0
.end method

.method private A03()V
    .locals 11

    .line 45959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0F()Lcom/facebook/ads/RewardData;

    move-result-object v3

    .line 45960
    .local v0, "rewardData":Lcom/facebook/ads/RewardData;
    if-nez v3, :cond_0

    .line 45961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0j()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A05()Ljava/lang/String;

    move-result-object v6

    .line 45962
    .local v6, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 45963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0j()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A04()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 45964
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0j()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A03()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0R:Lcom/facebook/ads/redexgen/X/LT;

    .line 45965
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/Lt;-><init>(Lcom/facebook/ads/redexgen/X/Xc;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 45966
    .local v1, "messageAndTwoButtonView":Lcom/facebook/ads/redexgen/X/Lt;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Lt;->A02:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NP;-><init>(Lcom/facebook/ads/redexgen/X/NS;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45967
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Lt;->A01:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NQ;-><init>(Lcom/facebook/ads/redexgen/X/NS;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45968
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45969
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/NS;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45970
    return-void

    .line 45971
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 45972
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0j()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v2

    .line 45973
    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1S;->A06(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private A04()V
    .locals 2

    .line 45974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Lcom/facebook/ads/redexgen/X/RA;

    if-eqz v1, :cond_0

    .line 45975
    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A07:Lcom/facebook/ads/redexgen/X/PF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0a(Lcom/facebook/ads/redexgen/X/PF;)V

    .line 45976
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Lcom/facebook/ads/redexgen/X/NR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NR;->AA9()V

    .line 45977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A03:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0p(Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 45979
    :cond_1
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/NS;)V
    .locals 0

    .line 45980
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NS;->A04()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/NS;)[Landroid/view/View;
    .locals 0

    .line 45981
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NS;->A06:[Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final A07(Landroid/view/ViewGroup;)V
    .locals 6

    .line 45982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Lcom/facebook/ads/redexgen/X/RA;

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45983
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Lcom/facebook/ads/redexgen/X/RA;

    const/16 v0, 0xb

    invoke-virtual {v1, v3, v3, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0f(ZZI)V

    .line 45984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 45985
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Lcom/facebook/ads/redexgen/X/Li;

    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A07:[Ljava/lang/String;

    const-string v1, "vGH3jzSu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 45986
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 45987
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NS;->A06:[Landroid/view/View;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v0, v2, v3

    .line 45988
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 45989
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 45990
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45991
    :cond_3
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45992
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Lcom/facebook/ads/redexgen/X/NR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NR;->ABd()V

    .line 45994
    return-void
.end method
